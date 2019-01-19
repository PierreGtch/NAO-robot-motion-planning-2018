
import pinocchio as pin
#from pinocchio.romeo_wrapper import RobotWrapper
from pinocchio.robot_wrapper import RobotWrapper

import numpy as np

# import os
# current_path = os.getcwd()


class NaoInverseKinematics():
	
	def __init__(self):
		# TODO Get the correct urdf file (Depending on our Nao version) 
		self.urdf_filename = "NAOH25V33.urdf"
	
	def compute(self, trajectory, trajectory_derivative, duration, dt = 0.01, lam = 100.0):
		"""
		trajectory: A lambda, the trajectory to follow
		duration:   The total duration of the movement
		dt:         Frequence of configuration update
		lam:        Hyper parameter for the optimisation problem to solve at each iteration
		"""

		model = pin.buildModelFromUrdf(self.urdf_filename, pin.JointModelFreeFlyer())
		print(model)
		data = model.createData()

		# Use model.getJointId to get the id of joints that we want to control

		# TODO get the correct joint
		id_LH = model.getJointId("LHand")

		# Initial configuration of the robot to adjust in function of the position of the system
		q = model.neutralConfiguration
		print(q.shape)		

		nb_step = int(duration / dt)	
		
		t = 0

		q_s_result = []

		for step in range(nb_step):
			# Update the position of the bodies of the robot in function of the current configuration
			pin.forwardKinematics(model, data, q)

			# Update all jacobians of the robot
			pin.computeJointJacobians(model, data, q)

			# Get the Jacobians of the joint to control in the world repair
			J_LH = np.array(pin.getJointJacobian(model, data, id_LH, pin.ReferenceFrame.WORLD))
			#print(J_LH.shape)
			# Solve the inverse kinematics
			# 1. calculer l'erreur courante en fonction de la position des organes terminaux
			# data.oMi[id_du_joint] contient la position et l'orientation de l'organe par rapport au repere monde
			# data.v[id_du_joint] contient la vitesse du corps en question exprimee au centre du joint
			
			M = data.oMi[id_LH]
			#print(M)
			# TODO What is Mdes ???
			Mdes = pin.SE3.Identity()
			#print(Mdes)
			
			error = np.array(pin.log(M.inverse() * Mdes).vector).reshape((6,))
			#print(error.shape)

			#print(np.linalg.pinv(J_LH).shape)
			#print((trajectory_derivative(t) + lam * error).shape)
			# v_sol is the solution of the least square problem
			v_sol = np.dot(np.linalg.pinv(J_LH), trajectory_derivative(t) + lam * error).reshape((48,))	
			v_sol = v_sol[np.newaxis,:]
			#print(v_sol.shape)
			# update current configurqtion
			#print(np.matrix(v_sol * dt).shape)
			#print(q.shape)
			q = pin.integrate(model, q, np.matrix(v_sol * dt).T)
			#print(q.shape)
			q_s_result.append(q)

			t += dt
		
		# TODO Check returns type and convert to appropriate format for naoqi functions
		return np.array(q_s_result)

if __name__ == "__main__":
	print('TEST')

	ik = NaoInverseKinematics()

	trajectory = lambda x: x
	trajectory_derivative = lambda t: np.zeros(6)

	q = ik.compute(trajectory, trajectory_derivative, 1)

	print(q.shape)
