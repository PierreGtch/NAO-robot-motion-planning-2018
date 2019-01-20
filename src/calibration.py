# coding: utf8

"""
    Code for the calibration of the NAO writing plan.
"""

import sys
import time
from naoqi.naoqi import ALProxy
import naoqi.motion as motion
import textwrap
from UpDim import UpDim
import numpy as np

if sys.version_info.major == 2:
    # We are using Python 2.x
    from Tkinter import *
    import tkMessageBox as messagebox
    import tkFileDialog as filedialog
elif sys.version_info.major == 3:
    # We are using Python 3.x
    from tkinter import *
    from tkinter import messagebox
    from tkinter import filedialog



def get_xyz(motionProxy, effector="LArm", frame=motion.FRAME_TORSO, useSensorValues=True):
    """
    Return the position of the request effector as a triple x y z
	:param motionProxy: The proxy to use in order to access NAO.
	:param effector: The effector to calibrate.
	:param frame: The system of coordinates to use.
    :useSensorValues: cf. getPosition doc
    :return: The position of the effector as a list [x,y,z].
    """
    full_position = motionProxy.getPosition(effector,frame,useSensorValues)
    return full_position[:3]

def get_calibration_data(proxy, effector="LArm", closeHand=False):
    """
    Ask the user for free points in order to define the drawing space.

    :param proxy: The motionProxy to use.
    :param effector: The arm we will use.
    :return: A list of three 3D-Points
    """
    handName = 'LHand'

    messagebox.showinfo("Calibration", textwrap.fill("""Veuillez prendre \
    la main gauche du robot NAO"""))
    proxy.setStiffnesses(effector, 0.0)
    # proxy.openHand(handName)
    # messagebox.showinfo("Calibration", textwrap.fill("""Veuillez placer \
    # le feutre dans la main gauche du robot NAO"""))
    # proxy.closeHand(handName)
    messagebox.showinfo("Calibration (1/4)", textwrap.fill("""Maintenez le bras\
    gauche du robot en place et appuyer sur entrée."""))
    p1 = get_xyz(proxy,effector)
    messagebox.showinfo("Calibration (2/4)", textwrap.fill("""Maintenez le bras\
    gauche du robot en place et appuyer sur entrée."""))
    p2 = get_xyz(proxy,effector)
    messagebox.showinfo("Calibration (3/4)", textwrap.fill("""Maintenez le bras\
    gauche du robot en place et appuyer sur entrée."""))
    p3 = get_xyz(proxy,effector)
    messagebox.showinfo("Calibration (4/4)", textwrap.fill("""Maintenez le bras\
        gauche du robot en place et appuyer sur entrée."""))
    n = get_xyz(proxy, effector)
    proxy.setStiffnesses(effector, 1)
    return [p1,p2,p3,n]


def get_converter(proxy):
    """
    Goes through the calibration process and return an instance of the UpDim class which is appropriate for the current situation.
    :param proxy: The motionProxy to use.
    """
    p1, p2, p3, n = get_calibration_data(proxy)
    p1 = np.array(p1)
    p2 = np.array(p2)
    p3 = np.array(p3)
    n = np.array(n)
    print(p1, p2, p3, n)
    return UpDim(p1,p2-p1,p3-p1,n-p1)


if __name__=='__main__':
    robotIP = '169.254.226.148'
    PORT = 9559
    proxy = ALProxy("ALMotion",robotIP,PORT)

    p1, p2, p3, n = get_calibration_data(proxy)
    print("X   Y   Z")
    print(p1)
    print(p2)
    print(p3)
    _ = get_converter(proxy)
