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
    legName = ["LLeg"]
    X       = 0.2
    Y       = 0.1
    Theta   = 0.3
    footSteps = [[X, Y, Theta]]
    fractionMaxSpeed = [1.0]
    clearExisting = False
    motionProxy.setFootStepsWithSpeed(legName, footSteps, fractionMaxSpeed, clearExisting)

    time.sleep(0.5)

    # A small step forwards and anti-clockwise with the left foot
    legName = ["LLeg", "RLeg"]
    X       = 0.2
    Y       = 0.1
    Theta   = 0.3
    footSteps = [[X, Y, Theta], [X, -Y, Theta]]
    fractionMaxSpeed = [1.0, 1.0]
    clearExisting = False
    motionProxy.setFootStepsWithSpeed(legName, footSteps, fractionMaxSpeed, clearExisting)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_setfootstepswithspeed.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
