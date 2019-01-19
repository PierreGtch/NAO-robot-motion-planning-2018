
from kinematics.inverse_kinematics import NaoInverseKinematics
from interpolation_py2 import interpolate_nd

class NaoControlAngles:

    def __init__(self, motionProxy):
        self.motionProxy = motionProxy
        self.inverter = NaoInverseKinematics()
        self.poly_deg = 3

def send(self, time, path):
    trajectory = interpolate_nd(time, path, d=self.poly_deg)

    trajectory_derivative = interpolate_nd(time, path, d=self.poly_deg)
    duration = t[-1] - t[0]

    configurations = self.inverter.compute(trajectory, trajectory_derivative, duration)
    nb_step = configurations.shape[0]
    joint_names = inverter.joints_names
    nb_joints = len(joints_names)
    timeLists = [[0.0 * i for i in range(nb_step)] for _ in range(nb_joints)]
    isAbsolute = True

    self.motionProxy.angleInterpolation(names, configurations, timeLists, isAbsolute)


class NaoqiInterpolation:

    def __init__(self, motionProxy, effector, space, axisMask):
        self.motionProxy = motionProxy
        self.effector = effector
        self.space = space
        self.axisMask = axisMask

    def send(self, time, path):
        self.motionProxy.positionInterpolation(
            self.effector,
            self.space,
            path,
            self.axisMask,
            time,
            True
        )
