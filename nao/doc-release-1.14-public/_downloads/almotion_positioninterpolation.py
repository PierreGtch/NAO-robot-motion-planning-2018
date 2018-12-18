# -*- encoding: UTF-8 -*-

import sys
from naoqi import ALProxy
from naoqi import motion

def main(robotIP):
    PORT = 9559

    try:
        motionProxy = ALProxy("ALMotion", robotIP, PORT)
    except Exception,e:
        print "Could not create proxy to ALMotion"
        print "Error was: ",e
        sys.exit(1)

    try:
        postureProxy = ALProxy("ALRobotPosture", robotIP, PORT)
    except Exception, e:
        print "Could not create proxy to ALRobotPosture"
        print "Error was: ", e

    # Send NAO to Pose Init
    postureProxy.goToPosture("StandInit", 0.5)

    # Example of a cartesian foot trajectory
    # Warning: Needs a PoseInit before executing
    # Example available: path/to/aldebaran-sdk/examples/
    #                    python/motion_cartesianFoot.py

    space      =  motion.FRAME_ROBOT
    axisMask   = 63                     # control all the effector's axes
    isAbsolute = False

    # Lower the Torso and move to the side
    effector = "Torso"
    path     = [0.0, -0.07, -0.03, 0.0, 0.0, 0.0]
    timeList = 2.0 # seconds
    motionProxy.positionInterpolation(effector, space, path,
                                axisMask, timeList, isAbsolute)

    # LLeg motion
    effector = "LLeg"
    path     = [0.0,  0.06,  0.00, 0.0, 0.0, 0.8]
    timeList = 2.0 # seconds
    motionProxy.positionInterpolation(effector, space, path,
                                axisMask, timeList, isAbsolute)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_positioninterpolation.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
