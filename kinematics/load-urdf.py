##
## In this short script, we show how to a load a robot model from its URDF description.
## Here, the robot model is ROMEO, but a similar approach can be done by with rospkg.
##

import pinocchio as pin
from pinocchio.romeo_wrapper import RobotWrapper


import os
current_path = os.getcwd()

# The model of Romeo is contained in the path PINOCCHIO_GIT_REPOSITORY/models/romeo
model_path = "./nao_robot"
mesh_dir = model_path
urdf_filename = "nao.urdf"
urdf_model_path = model_path + "/nao_description/urdf/naoV32_generated_urdf/" + urdf_filename

#robot = RobotWrapper()
#robot.initFromURDF(urdf_model_path, [mesh_dir])
model = pin.buildModelFromUrdf(urdf_filename, pin.JointModelFreeFlyer())
data = model.createData()

# utilliser model.getJointId pour retrouver les indices des joints que l'on veut controller dans la tache de mouvement

id_LH = model.getJointId("LWristYaw")

# Configuration initiale du robot a ajuster en fonction de la position du systeme
q0 = model.neutralConfiguration


def errorInSE3 (M, Mdes):
 	error = se3.log(Mdes.inverse () * M)
  	return error


while True:
	# mettre a jour la position des corps du robot en fonction de la configuration mesuree

	pin.forwardKinematics(model,data,q0)
	# mise a jour de toutes les Jacobiennes du robot
	pin.computeJointJacobians(model,data,q0)

	# recuperer la Jacobienne des organes a controler exprimees dans le repere monde
	J_LH = pin.getJointJacobian(model,data,id_du_joint,pin.ReferenceFrame.WORLD)

	# resoudre la cinematique inverse
	# 1. calculer l'erreur courante en fonction de la position des organes terminaux
	# data.oMi[id_du_joint] contient la position et l'orientation de l'organe par rapport au repere monde
	# data.v[id_du_joint] contient la vitesse du corps en question exprimee au centre du joint
	erreur = pin.log(Mdes.inverse() * data.oMi[14])
	# v_next = solution du probleme de moindre carres

	dt = 0.01
	K = 100.0

	# v_sol est calcule grace a l'Inverse cinematique
	q_next = pin.integrate(model,q,v_sol*dt)
