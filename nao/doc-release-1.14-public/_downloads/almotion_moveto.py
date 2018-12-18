# -*- encoding: UTF-8 -*-

import sys
import math
from naoqi import ALProxy


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

    # Example showing the moveTo command
    # The units for this command are meters and radians
    x  = 0.2
    y  = 0.2
    theta  = math.pi/2
    motionProxy.moveTo(x, y, theta)
    # Will block until move Task is finished

    ########
    # NOTE #
    ########
    # If moveTo() method does nothing on the robot,
    # read the section about walk protection in the
    # Locomotion control overview page.


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_moveto.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
