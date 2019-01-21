# coding: utf8

from kinematics.inverse_kinematics import NaoInverseKinematics
from interpolation_py2 import interpolate_nd
import numpy as np
import time as py_time

class NaoControlAngles:

    def __init__(self, motionProxy,urdf_file):
        self.motionProxy = motionProxy
        self.inverter = NaoInverseKinematics(urdf_file)
        self.poly_deg = 3

    def send(self, time, path, isAbsolute=True):
        assert isAbsolute
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
        mode = True
        if mode:
            print "MY ZONE"
            print joint_names
            print configurations.shape
            c = configurations[0]
            c = c.tolist()
            fractionMaxSpeed = 0.1
            self.motionProxy.setAngles(joint_names, c, fractionMaxSpeed)
            py_time.sleep(2)
            print "GOOO!!"
            for c in configurations[1:]:
                c = c.tolist()
                fractionMaxSpeed = 0.1
                self.motionProxy.setAngles(joint_names, c, fractionMaxSpeed)
                py_time.sleep(0.02)
        else:
            self.motionProxy.angleInterpolation(joint_names, configurations.tolist(), timeLists, isAbsolute)
        print "Done!!"

class NaoqiInterpolation:

    def __init__(self, motionProxy, effector, space, axisMask):
        self.motionProxy = motionProxy
        self.effector = effector
        self.space = space
        self.axisMask = axisMask

    def send(self, time, path, isAbsolute=True):
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
            isAbsolute
        )
        print "Fin du mvt"

class PenControler:

    def __init__(self, converter, distance=0.1):
        '''converter must be an updim object'''
        self.normal = converter.normal()
        self.distance = distance

    def up(self, controler):
        '''controler must be an object with a send method
        this raises the pen'''
        t = [1.]
        path = [self.normal*self.distance]
        controler.send(t, path, isAbsolute=False)
        time.sleep(sum(t))

    def down(self, controler, pos):
        '''controler must be an object with a send method
        this places the pen over position then lay it down'''
        t = [1., 1.]
        path = [pos + self.normal*self.distance, pos]
        controler.send(t, path, isAbsolute=False)
        time.sleep(sum(t))
class Dab:
    def __init__(self, proxy, postureProxy):
        self.proxy = proxy
        self.postureProxy = postureProxy

    def dab(self):
        dab_angles = [-4.196169902570546e-05, 0.4118979871273041, -0.09948381781578064, -0.12042801827192307, -0.5305798649787903, -1.2706001996994019, 4.196169902570546e-05, -0.0014920199755579233, -0.43714800477027893, 0.6979280114173889, -0.3497940003871918, 4.196169902570546e-05, 4.196169902570546e-05, 4.196169902570546e-05, -0.43723198771476746, 0.6995459794998169, -0.34970998764038086, 4.196169902570546e-05, 1.4143900871276855, -1.3264497518539429, 1.391299843788147, 0.03490660712122917]
        self.postureProxy.goToPosture("StandInit",.1)
        pytime.sleep(1.)
        self.proxy.setAngles('Body',dab_angles, 1.)
        py_time.sleep(1.)
        self.postureProxy.goToPosture("StandInit",.1)
        pytime.sleep(1.)
