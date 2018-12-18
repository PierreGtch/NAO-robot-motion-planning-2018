# -*- encoding: UTF-8 -*-

import sys
import time
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

    postureProxy.goToPosture("StandInit", 0.5)

    # Example showing how to move forward (4cm) "LArm".
    effectorName     = "LArm"
    space            = motion.FRAME_ROBOT
    positionChange   = [0.04, 0.0, 0.0, 0.0, 0.0, 0.0]
    fractionMaxSpeed = 0.5
    axisMask         = 7
    motionProxy.changePosition(effectorName, space, positionChange, fractionMaxSpeed, axisMask)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_changeposition.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
