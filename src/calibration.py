# coding: utf8

"""
    Code for the calibration of the NAO writing plan.
"""

import sys
import time
from naoqi import ALProxy
import motion

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

if __name__=='__main__':
    robotIP = '127.0.0.1'
    PORT = 9559
    proxy = ALProxy("ALMotion",robotIP,PORT)


    messagebox.showinfo("Calibration (1/3)", "Maintenez le bras gauche du robot en place et appuyer sur entrée.")
    p1 = get_xyz(proxy)
    messagebox.showinfo("Calibration (2/3)", "Maintenez le bras gauche du robot en place et appuyer sur entrée.")
    p2 = get_xyz(proxy)
    messagebox.showinfo("Calibration (3/3)", "Maintenez le bras gauche du robot en place et appuyer sur entrée.")
    p3 = get_xyz(proxy)
    print("X   Y   Z")
    print(p1)
    print(p2)
    print(p3)