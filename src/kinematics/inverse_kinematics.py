# coding: utf8

import pinocchio as pin
from pinocchio.robot_wrapper import RobotWrapper

import numpy as np


class NaoInverseKinematics():
	
	def __init__(self,urdf_file):
		self.urdf_filename = urdf_file
				
		self.model = pin.buildModelFromUrdf(self.urdf_filename, pin.JointModelFreeFlyer())
		self.joint_names = ["LShoulderPitch", "LShoulderRoll", "LElbowYaw", "LElbowRoll", "LWristYaw", "LHand"]

	def compute(self, trajectory, trajectory_derivative, duration, dt = 0.01, lam = 100.0):
		"""
		trajectory: A lambda, the trajectory to follow
		duration:   The total duration of the movement
		dt:         Frequence of configuration update
		lam:        Hyper parameter for the optimisation problem to solve at each iteration
		"""

		# Use model.getJointId to get the id of joints that we want to control

		# TODO get the correct joint
		id_LH = self.model.getJointId("LHand")

		data = self.model.createData()

		# Initial configuration of the robot to adjust in function of the position of the system
		q = self.model.neutralConfiguration
		print(q.reshape(65,))
		print(list(self.model.joints))
		print(list(self.model.names))	

		nb_step = int(duration / dt)
		
		t = 0

		q_s_result = []

		for step in range(nb_step):
			# Update the position of the bodies of the robot in function of the current configuration
			pin.forwardKinematics(self.model, data, q)

			# Update all jacobians of the robot
			pin.computeJointJacobians(self.model, data, q)

			# Get the Jacobians of the joint to control in the world repair
			J_LH = np.array(pin.getJointJacobian(self.model, data, id_LH, pin.ReferenceFrame.WORLD))
			#print(J_LH.shape)
			# Solve the inverse kinematics
			# 1. calculer l'erreur courante en fonction de la position des organes terminaux
			# data.oMi[id_du_joint] contient la position et l'orientation de l'organe par rapport au repere monde
			# data.v[id_du_joint] contient la vitesse du corps en question exprimee au centre du joint
			
			M = data.oMi[id_LH]
			Mdes = pin.SE3(np.matrix(np.eye(3)), np.matrix(trajectory(t)).T)
			#print(Mdes)
			
			error = np.array(pin.log(M.inverse() * Mdes).vector).reshape((6,))
			#print(error.shape)

			#print(np.linalg.pinv(J_LH).shape)
			#print((trajectory_derivative(t) + lam * error).shape)
			# v_sol is the solution of the least square problem
			t_deriv = trajectory_derivative(t)
			# t_deriv = np.hstack((t_deriv,np.zeros((3,))))
			v_sol = np.dot(np.linalg.pinv(J_LH), t_deriv + lam * error).reshape((48,))
			v_sol = v_sol[np.newaxis,:]
			#print(v_sol.shape)
			# update current configurqtion
			#print(np.matrix(v_sol * dt).shape)
			#print(q.shape)
			q = pin.integrate(self.model, q, np.matrix(v_sol * dt).T)
			#print(q.shape)
		
			q_s_result.append([float(q[15])] + [float(q[16])] + [float(q[17])] + [float(q[18])] + [float(q[19])] + [float(q[32])])

			t += dt
		
		# TODO Check returns type and convert to appropriate format for naoqi functions
		return np.array(q_s_result)

if __name__ == "__main__":
	print('TEST')

	ik = NaoInverseKinematics("NAOH25V33.urdf")

	trajectory = lambda x: np.zeros(3)
	trajectory_derivative = lambda t: np.zeros(6)

	q = ik.compute(trajectory, trajectory_derivative, 1)

	print(q.shape)
	print(q[-1, :])
