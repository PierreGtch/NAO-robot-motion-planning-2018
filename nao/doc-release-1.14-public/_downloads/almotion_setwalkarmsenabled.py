# -*- encoding: UTF-8 -*-

import sys
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

    x          = 0.6
    y          = 0.0
    theta      = 0.0
    frequency  = 1.0
    motionProxy.setWalkTargetVelocity(x, y, theta, frequency)

    time.sleep(2.0)

    # Example showing how to disable left arm motions during a move
    leftArmEnable  = False
    rightArmEnable  = True
    motionProxy.setWalkArmsEnabled(leftArmEnable, rightArmEnable)
    print "Disabled left arm"

    # disable also right arm motion after 1 seconds
    time.sleep(1.0)
    rightArmEnable  = False
    motionProxy.setWalkArmsEnabled(leftArmEnable, rightArmEnable)
    print "Disabled right arm"

    time.sleep(1.0)

    motionProxy.stopMove()

    leftArmEnable  = True
    rightArmEnable  = True
    motionProxy.setWalkArmsEnabled(leftArmEnable, rightArmEnable)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_setwalkarmsenabled.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
