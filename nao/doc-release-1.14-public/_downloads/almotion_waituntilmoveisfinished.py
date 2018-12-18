# -*- encoding: UTF-8 -*-

import sys
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

    # Example showing how to use waitUntilMoveIsFinished.

    # Start a move
    x = 0.2
    y = 0.0
    theta = 0.0
    motionProxy.post.moveTo(x, y, theta)

    # Wait for it to finish
    motionProxy.waitUntilMoveIsFinished()

    # Then do something else
    print "Move is finished"


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_waituntilmoveisfinished.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
