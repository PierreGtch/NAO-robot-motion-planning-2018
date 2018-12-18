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

    # Example showing how to use transformInterpolations
    space        = motion.FRAME_ROBOT
    isAbsolute   = False

    # Motion of Arms with block process
    effectorList = ["LArm", "RArm"]
    axisMaskList = [motion.AXIS_MASK_VEL, motion.AXIS_MASK_VEL]
    timeList     = [[1.0], [1.0]]         # seconds
    pathList     = [[[1.0, 0.0, 0.0, 0.0,
                      0.0, 1.0, 0.0, -0.04,
                      0.0, 0.0, 1.0, 0.0]],
                    [[1.0, 0.0, 0.0, 0.0,
                      0.0, 1.0, 0.0, 0.04,
                      0.0, 0.0, 1.0, 0.0]]]
    motionProxy.transformInterpolations(effectorList, space, pathList,
                                 axisMaskList, timeList, isAbsolute)

    # Motion of Arms and Torso with block process
    effectorList = ["LArm", "RArm", "Torso"]
    axisMaskList = [motion.AXIS_MASK_VEL,
                    motion.AXIS_MASK_VEL,
                    motion.AXIS_MASK_ALL]
    timeList     = [[4.0],
                    [4.0],
                    [1.0, 2.0, 3.0, 4.0]] # seconds

    dx           = 0.03                   # translation axis X (meters)
    dy           = 0.04                   # translation axis Y (meters)

    pathList     = [[[1.0, 0.0, 0.0, 0.0,
                      0.0, 1.0, 0.0, 0.0,
                      0.0, 0.0, 1.0, 0.0]],
                    [[1.0, 0.0, 0.0, 0.0,
                      0.0, 1.0, 0.0, 0.0,
                      0.0, 0.0, 1.0, 0.0]],
                    [[1.0, 0.0, 0.0, 0.0, # point 1
                      0.0, 1.0, 0.0, +dy,
                      0.0, 0.0, 1.0, 0.0],
                     [1.0, 0.0, 0.0, -dx, # point 2
                      0.0, 1.0, 0.0, 0.0,
                      0.0, 0.0, 1.0, 0.0],
                     [1.0, 0.0, 0.0, 0.0, # point 3
                      0.0, 1.0, 0.0, -dy,
                      0.0, 0.0, 1.0, 0.0],
                     [1.0, 0.0, 0.0, 0.0, # point 4
                      0.0, 1.0, 0.0, 0.0,
                      0.0, 0.0, 1.0, 0.0]]
                   ]

    motionProxy.transformInterpolations(effectorList, space, pathList,
                                  axisMaskList, timeList, isAbsolute)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_transforminterpolations.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
