# coding: utf8

import pinocchio as pin
from pinocchio.robot_wrapper import RobotWrapper

import numpy as np


class NaoInverseKinematics():
	
	def __init__(self,urdf_file):
		self.urdf_filename = urdf_file
				
		self.model = pin.buildModelFromUrdf(self.urdf_filename, pin.JointModelFreeFlyer())
		self.joint_names = ["LShoulderPitch", "LShoulderRoll", "LElbowYaw", "LElbowRoll", "LWristYaw", "LHand"]
		self.joint_ids = [15, 16, 17, 18, 19, 32]

	def compute(self, trajectory, trajectory_derivative, duration, initial_angles, dt = 0.1, lam = 10.0):
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
		for i in range(len(self.joint_names)):
			q[self.joint_ids[i]] = initial_angles[i] 
		nb_step = int(duration / dt)
		
		t = 0

		q_s_result = []

		for step in range(nb_step):
			pin.forwardKinematics(self.model, data, q)
			
			# Update all jacobians of the robot
			pin.computeJointJacobians(self.model, data, q)

			# Get the Jacobians of the joint to control in the world repair
			J = pin.getJointJacobian(self.model, data, id_LH, pin.ReferenceFrame.LOCAL)[:3, 7:]
			
			# Solve the inverse kinematics
			# 1. calculer l'erreur courante en fonction de la position des organes terminaux
			# data.oMi[id_du_joint] contient la position et l'orientation de l'organe par rapport au repere monde
			
			X = data.oMi[id_LH].translation
			R = data.oMi[id_LH].rotation
			#print(trajectory(t)).T
			Xdes = np.matrix(trajectory(t)).T
			
			error = R.T * (X - Xdes)

			error_norm = np.linalg.norm(error)
			#print(error_norm)
			deriv = np.matrix(trajectory_derivative(t)).T
			v = -np.dot(np.linalg.pinv(J), deriv + lam * error)
			
			z = np.matrix(np.zeros((6, 1)))
			v = np.concatenate((z, v))
			
			# v_sol is the solution of the least square problem
			# t_deriv = trajectory_derivative(t)
			
			# update current configurqtion
			q = pin.integrate(self.model, q, v * dt)
			#print(q.T)
			#print(q[15:20].T)
			q_s_result.append([float(q[15])] + [float(q[16])] + [float(q[17])] + [float(q[18])] + [float(q[19])] + [float(q[32])])
			
			t += dt
		
		# TODO Check returns type and convert to appropriate format for naoqi functions
		return np.array(q_s_result)

if __name__ == "__main__":
	print('TEST')

	ik = NaoInverseKinematics("NAOH25V33.urdf")

	trajectory = lambda t: np.array([t * 0.01, t * 0.01, 0.0])
	trajectory_derivative = lambda t: np.array([0.01, 0.01, 0.0])

	q = ik.compute(trajectory, trajectory_derivative, 1, [0.0, 0.0, 0.0, 0.0, 0.0, 0.0])

	print(q.shape)
	#print(q[-10:-1])
