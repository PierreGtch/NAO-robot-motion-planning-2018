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
    chainName = "Torso"
    space     = motion.FRAME_ROBOT
    transform = [1.0, 0.0, 0.0, 0.04,
                 0.0, 1.0, 0.0, 0.00,
                 0.0, 0.0, 1.0, 0.00] # Relative Transform
    fractionMaxSpeed = 0.2
    axisMask         = 63 # all axis
    motionProxy.changeTransform(chainName, space, transform, fractionMaxSpeed, axisMask)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_changeTransform.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
