import numpy as np
import time
from naoqi.naoqi import ALProxy
import naoqi.motion as motion
from calibration import get_converter
from control import NaoqiInterpolation, NaoControlAngles
from UpDim import UpDim

proxy = ALProxy("ALMotion",robotIP,PORT)
inverse_fun = NaoControlAngles(proxy,"kinematics/NAOH25V33.urdf")
# converter = UpDim(
#     (),
#     (),
#     (),
#     (),
# )
x = np.linspace(0, 1, 10)
dt = .5
dx = np.array([.05])
joint = ['LWristYaw']
for x in x:
    proxy.angleInterpolation(joint, list(dx), dt, isAbsolute=False)
for x in x:
    proxy.angleInterpolation(joint, list(10*dx), dt, isAbsolute=False)
for x in x:
    proxy.angleInterpolation(joint, list(100*dx), dt, isAbsolute=False)
for x in x:
    proxy.angleInterpolation(joint, list(1000*dx), dt, isAbsolute=False)
