import sys
# -*- encoding: UTF-8 -*-

import time
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

    # A small step forwards and anti-clockwise with the left foot
    legName  = ["LLeg"]
    X        = 0.2
    Y        = 0.1
    Theta    = 0.3
    footSteps = [[X, Y, Theta]]
    timeList = [0.6]
    clearExisting = False
    motionProxy.setFootSteps(legName, footSteps, timeList, clearExisting)

    time.sleep(1.0)

    # A small step forwards and anti-clockwise with the left foot
    legName = ["LLeg", "RLeg"]
    X       = 0.2
    Y       = 0.1
    Theta   = 0.3
    footSteps = [[X, Y, Theta], [X, -Y, Theta]]
    timeList = [0.6, 1.2]
    clearExisting = False
    motionProxy.setFootSteps(legName, footSteps, timeList, clearExisting)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_setfootsteps.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
