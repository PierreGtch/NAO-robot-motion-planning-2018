
import pinocchio as pin
from pinocchio.romeo_wrapper import RobotWrapper

import numpy as np

# import os
# current_path = os.getcwd()


class NaoInverseKinematics():
	
	def __init__(self):
		# TODO Get the correct urdf file (Depending on our Nao version) 
		self.urdf_filename = "nao.urdf"
	
	def compute(trajectory, duration, dt = 0.01, Lam = 100.0):
		"""
		trajectory: A lambda, the trajectory to follow
		duration:   The total duration of the movement
		dt:         Frequence of configuration update
		lam:        Hyper parameter for the optimisation problem to solve at each iteration
		"""

		model = pin.buildModelFromUrdf(self.urdf_filename, pin.JointModelFreeFlyer())
		data = model.create_data()

		# Use model.getJointId to get the id of joints that we want to control

		# TODO get the correct joint
		id_LH = model.getJointId("LWristYaw")

		# Initial configuration of the robot to adjust in function of the position of the system
		q = model.neutralConfiguration
		
		# TODO Compute derivative
		trajectory_derivative = derivative(trajectory)		

		nb_step = duration / dt	
		
		t = 0

		q_s_result = []

		while step in range(nb_step):
			# Update the position of the bodies of the robot in function of the current configuration
			pin.forwardKinematics(model, data, q)

			# Update all jacobians of the robot
			pin.computeJointJacobians(model, data, q)

			# Get the Jacobians of the joint to control in the world repair
			J_LH = pin.getJointJacobian(model, data, id_LH, pin.ReferenceFrame.WORLD)

			# Solve the inverse kinematics
			# 1. calculer l'erreur courante en fonction de la position des organes terminaux
			# data.oMi[id_du_joint] contient la position et l'orientation de l'organe par rapport au repere monde
			# data.v[id_du_joint] contient la vitesse du corps en question exprimee au centre du joint
			
			# TODO What is Mdes ???
			error = pin.log(Mdes.inverse() * data.oMi[id_LH])
			
			# v_sol is the solution of the least square problem
			v_sol = np.dot(np.linalg.pinv(J_LH), trajectory_derivative(t) + lam * error)	

			# update current configurqtion
			q = pin.integrate(model, q, v_sol * dt)

			q_s_result.append(q)

			t += dt
		
		# TODO Check returs type and convert to appropriate format for naoqi functions
		return q_s_result
