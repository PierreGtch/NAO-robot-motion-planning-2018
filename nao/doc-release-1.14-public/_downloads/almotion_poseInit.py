# -*- encoding: UTF-8 -*-

''' PoseInit: Small example to make Nao go to an initial position. '''

import sys
import almath
from naoqi import ALProxy

def main(robotIP):
    PORT = 9559

    try:
        motionProxy = ALProxy("ALMotion", robotIP, PORT)
    except Exception,e:
        print "Could not create proxy to ALMotion"
        print "Error was: ",e
        sys.exit(1)


    # Define The Initial Position for the upper body
    HeadYawAngle       = + 0.0
    HeadPitchAngle     = + 0.0

    ShoulderPitchAngle = +80.0
    ShoulderRollAngle  = +20.0
    ElbowYawAngle      = -80.0
    ElbowRollAngle     = -60.0
    WristYawAngle      = + 0.0
    HandAngle          = + 0.0

    # Define legs position
    kneeAngle    = +40.0
    torsoAngle   = + 0.0 # bend the torso
    spreadAngle  = + 0.0 # spread the legs

    # Get the Robot Configuration
    robotConfig = motionProxy.getRobotConfig()
    robotName = ""
    for i in range(len(robotConfig[0])):
        if (robotConfig[0][i] == "Model Type"):
            robotName = robotConfig[1][i]

        if robotName == "naoH25":

            Head     = [HeadYawAngle, HeadPitchAngle]

            LeftArm  = [ShoulderPitchAngle, +ShoulderRollAngle, +ElbowYawAngle, +ElbowRollAngle, WristYawAngle, HandAngle]
            RightArm = [ShoulderPitchAngle, -ShoulderRollAngle, -ElbowYawAngle, -ElbowRollAngle, WristYawAngle, HandAngle]

            LeftLeg  = [0.0,                      #hipYawPitch
                        spreadAngle,              #hipRoll
                        -kneeAngle/2-torsoAngle,  #hipPitch
                        kneeAngle,                #kneePitch
                        -kneeAngle/2,             #anklePitch
                        -spreadAngle]             #ankleRoll
            RightLeg = [0.0, -spreadAngle, -kneeAngle/2-torsoAngle, kneeAngle, -kneeAngle/2,  spreadAngle]

        elif robotName == "naoH21":

            Head     = [HeadYawAngle, HeadPitchAngle]

            LeftArm  = [ShoulderPitchAngle, +ShoulderRollAngle, +ElbowYawAngle, +ElbowRollAngle]
            RightArm = [ShoulderPitchAngle, -ShoulderRollAngle, -ElbowYawAngle, -ElbowRollAngle]

            LeftLeg  = [0.0,  spreadAngle, -kneeAngle/2-torsoAngle, kneeAngle, -kneeAngle/2, -spreadAngle]
            RightLeg = [0.0, -spreadAngle, -kneeAngle/2-torsoAngle, kneeAngle, -kneeAngle/2,  spreadAngle]

        elif robotName == "naoT14":

            Head     = [HeadYawAngle, HeadPitchAngle]

            LeftLeg  = [0.0,  spreadAngle, -kneeAngle/2-torsoAngle, kneeAngle, -kneeAngle/2, -spreadAngle]
            RightLeg = [0.0, -spreadAngle, -kneeAngle/2-torsoAngle, kneeAngle, -kneeAngle/2,  spreadAngle]

            LeftLeg  = []
            RightLeg = []

        elif robotName == "naoT2":

            Head     = [HeadYawAngle, HeadPitchAngle]

            LeftArm  = []
            RightArm = []

            LeftLeg  = []
            RightLeg = []

        else:
            print "ERROR : Your robot is unknown"
            print "This test is not available for your Robot"
            print "---------------------"
            exit(1)

        # Gather the joints together
        pTargetAngles = Head + LeftArm + LeftLeg + RightLeg + RightArm

        # Convert to radians
        pTargetAngles = [ x * almath.TO_RAD for x in pTargetAngles]

        #------------------------------ send stiffness -----------------------------
        motionProxy.stiffnessInterpolation("Body", 1.0, 0.5)

        #------------------------------ send the commands -----------------------------
        # We use the "Body" name to signify the collection of all joints
        pNames = "Body"
        # We set the fraction of max speed
        pMaxSpeedFraction = 0.2
        # Ask motion to do this with a blocking call
        motionProxy.angleInterpolationWithSpeed(pNames, pTargetAngles, pMaxSpeedFraction)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_poseInit.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)

