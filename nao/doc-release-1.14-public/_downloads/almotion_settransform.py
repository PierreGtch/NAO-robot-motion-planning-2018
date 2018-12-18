# -*- encoding: UTF-8 -*-

import sys
from naoqi import ALProxy
import motion


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

    # Example showing how to set Torso Transform, using a fraction of max speed
    chainName        = "Torso"
    space            = motion.FRAME_ROBOT
    transform        = [1.0, 0.0, 0.0, 0.00,
                        0.0, 1.0, 0.0, 0.00,
                        0.0, 0.0, 1.0, 0.25]
    fractionMaxSpeed = 0.2
    axisMask         = 63
    motionProxy.setTransform(chainName, space, transform, fractionMaxSpeed, axisMask)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_settransform.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
