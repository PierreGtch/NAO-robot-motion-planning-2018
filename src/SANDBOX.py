import numpy as np
import time
from naoqi.naoqi import ALProxy
from naoqi import almath
import naoqi.motion as motion
from calibration import get_converter
#from control import NaoqiInterpolation, NaoControlAngles
from UpDim import UpDim


robotIP = '0.0.0.0'
PORT = 9559
proxy = ALProxy("ALMotion",robotIP,PORT)
postureProxy = ALProxy("ALRobotPosture", robotIP, PORT)

def add_rot_list(res):
    return np.hstack((np.array(res),np.zeros((len(res),3))))


#inverse_fun = NaoControlAngles(proxy,"kinematics/NAOH25V33.urdf")
# converter = UpDim(
#     (),
#     (),
#     (),
#     (),
# )
postureProxy.goToPosture("StandInit",.1)
#proxy.rest()
print("=== initialization done ===")
time.sleep(1)
(p1,p2,p3,n) = (
    np.array([0.14634877, 0.10739075, 0.09381302]),
    np.array([ 0.08452203, -0.02700987,  0.09620464]),
    np.array([0.21905443, 0.08917145, 0.0968603 ]),
    np.array([0.20315488, 0.08917145, 0.18199264]))
(p1,p2,p3,n) = (
    np.array([0.15340261, 0.06787927, 0.08979834]),
    np.array([ 0.09425934, -0.02649132,  0.08731951]),
    np.array([0.21867299, 0.10938812, 0.09657909]),
    np.array([0.19520184, 0.10938812, 0.19861954]))

converter =  UpDim(p1,p2-p1,p3-p1,n-p1)
converter = get_converter(proxy)


# names      = ["HeadYaw", "HeadPitch"]
# angleLists = [30.0*almath.TO_RAD, 30.0*almath.TO_RAD]
# timeLists  = [1.0, 1.2]
# proxy.angleInterpolation(names, angleLists, timeLists, True)
# time.sleep(1)
#
# x = np.linspace(0, 1, 10)
# dt = .5
# dx = np.array([30.0])*almath.TO_RAD
# joint = "LWristYaw"
# isAbsolute=False
# for x in x:
#     proxy.angleInterpolation(joint, list(dx), dt, isAbsolute)
# for x in x:
#     proxy.angleInterpolation(joint, list(10*dx), dt, isAbsolute)
# for x in x:
#     proxy.angleInterpolation(joint, list(100*dx), dt, isAbsolute)
# for x in x:
#     proxy.angleInterpolation(joint, list(1000*dx), dt, isAbsolute)
#

from calibration import get_xyz
xyzR = proxy.getPosition('LArm',motion.FRAME_ROBOT,True)
print("goto {}...".format(xyzR))
proxy.positionInterpolation('LArm', motion.FRAME_ROBOT, xyzR, 7, 1., True)
print("...gone")
time.sleep(1.)

xyzR[3:] = np.zeros((3))
print("goto {}...".format(xyzR))
proxy.positionInterpolation('LArm', motion.FRAME_ROBOT, xyzR, 7, 1., True)
print("...gone")
time.sleep(1.)




isAbsolute = True
path = [(0.,0.), (0.,1.), (1.,0.)]
path3d = converter.convert_list(path, add_rot=True)
t = 1.0
for X in path3d:
    print("goto {}...".format(X))
    proxy.positionInterpolation('LArm', motion.FRAME_ROBOT, X, 7, t, isAbsolute)
    print("...gone")
    time.sleep(2*t)
