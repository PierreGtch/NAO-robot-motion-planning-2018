# -*- encoding: UTF-8 -*-

import sys
import time
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

    # Example showing how to set LArm Position, using a fraction of max speed
    chainName = "LArm"
    space     = motion.FRAME_TORSO
    useSensor = False

    # Get the current position of the chainName in the same space
    current = motionProxy.getPosition(chainName, space, useSensor)

    target  = [
        current[0] + 0.1,
        current[1] + 0.1,
        current[2] + 0.1,
        current[3] + 0.0,
        current[4] + 0.0,
    current[5] + 0.0]

    fractionMaxSpeed = 0.5
    axisMask         = 7 # just control position

    motionProxy.setPosition(chainName, space, target, fractionMaxSpeed, axisMask)

    time.sleep(1.0)

    # Example showing how to set Torso Position, using a fraction of max speed
    chainName        = "Torso"
    space            = 2
    position         = [0.0, 0.0, 0.25, 0.0, 0.0, 0.0] # Absolute Position
    fractionMaxSpeed = 0.2
    axisMask         = 63
    motionProxy.setPosition(chainName, space, position, fractionMaxSpeed, axisMask)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_setposition.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
