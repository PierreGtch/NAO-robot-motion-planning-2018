# coding: utf8

"""
    Code for the calibration of the NAO writing plan.
"""

import sys
import time
from naoqi import ALProxy
import motion
import textwrap

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
    """
    full_position = motionProxy.getPosition(effector,frame,useSensorValues)
    return full_position[:3]

def get_calibration_data(proxy, effector="LArm"):
    """
    Ask the user for free points in order to define the drawing space.

    :param proxy: The motionProxy to use.
    :param effector: The arm we will use.
    :return: A list of three 3D-Points
    """
    messagebox.showinfo("Calibration", textwrap.fill("""Veuillez prendre \
    la main gauche du robot NAO"""))
    proxy.setStiffnesses(effector, 0.0)
    messagebox.showinfo("Calibration (1/3)", textwrap.fill("""Maintenez le bras\
    gauche du robot en place et appuyer sur entrée."""))
    p1 = get_xyz(proxy,effector)
    messagebox.showinfo("Calibration (2/3)", textwrap.fill("""Maintenez le bras\
    gauche du robot en place et appuyer sur entrée."""))
    p2 = get_xyz(proxy,effector)
    messagebox.showinfo("Calibration (3/3)", textwrap.fill("""Maintenez le bras\
    gauche du robot en place et appuyer sur entrée."""))
    p3 = get_xyz(proxy,effector)
    proxy.setStiffnesses(effector, 1)
    return [p1,p2,p3]


if __name__=='__main__':
    robotIP = '127.0.0.1'
    PORT = 54010
    proxy = ALProxy("ALMotion",robotIP,PORT)

    p1, p2, p3 = get_calibration_data(proxy)
    print("X   Y   Z")
    print(p1)
    print(p2)
    print(p3)
