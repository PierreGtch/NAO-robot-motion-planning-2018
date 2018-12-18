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

    # Example showing how to get the position of the top camera
    name            = "CameraTop"
    space           = motion.FRAME_WORLD
    useSensorValues = True
    result          = motionProxy.getPosition(name, space, useSensorValues)
    print "Position of", name, " in World is:"
    print result


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_advancedcreaterotation.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
