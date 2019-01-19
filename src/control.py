# coding: utf8

from kinematics.inverse_kinematics import NaoInverseKinematics
from interpolation_py2 import interpolate_nd
import numpy as np

class NaoControlAngles:

    def __init__(self, motionProxy,urdf_file):
        self.motionProxy = motionProxy
        self.inverter = NaoInverseKinematics(urdf_file)
        self.poly_deg = 3

    def send(self, time, path):
        trajectory = interpolate_nd(time, path, d=self.poly_deg)

        trajectory_derivative = interpolate_nd(time, path, d=self.poly_deg,deriv=1)
        duration = time[-1] - time[0]

        print "Cinématique inverse..."
        configurations = self.inverter.compute(trajectory, trajectory_derivative, duration)
        print "...Done"
        print "Configurations:"
        print np.max(configurations)
        nb_step = configurations.shape[0]
        joint_names = self.inverter.joint_names
        nb_joints = len(joint_names)
        print "Joints"
        print nb_joints
        timeLists = [[0.01 * i for i in range(nb_step)] for _ in range(nb_joints)]
        isAbsolute = False
        print "Envoie de la commande, durée du mouvement :"
        print np.max(timeLists)
        self.motionProxy.angleInterpolation(joint_names, configurations.tolist(), timeLists, isAbsolute)
        print "Done!!"

class NaoqiInterpolation:

    def __init__(self, motionProxy, effector, space, axisMask):
        self.motionProxy = motionProxy
        self.effector = effector
        self.space = space
        self.axisMask = axisMask

    def send(self, time, path):
        path = np.array(path)
        path = np.hstack((path,np.zeros((len(path),3)))).tolist()
        # self.motionProxy.reset()
        print "Début du mvt"
        self.motionProxy.positionInterpolation(
            self.effector,
            self.space,
            path,
            self.axisMask,
            time,
            True
        )
        print "Fin du mvt"
