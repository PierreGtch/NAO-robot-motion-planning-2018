# coding: utf8

import sys
import time
from naoqi import ALProxy
import motion

def get_xyz(motionProxy, effector="LArm", frame=motion.FRAME_TORSO, useSensorValue=True):
    """
    Return the position of the request effector as a triple x y z
    """
    full_position = motionProxy.getPosition(effector,frame,useSensorValues)
    return full_position[:3]

