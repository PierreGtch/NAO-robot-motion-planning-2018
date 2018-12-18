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

    # Example showing the use of setWalkTargetVelocity
    # The parameters are fractions of the maximums
    # Here we are asking for full speed forwards
    x  = 1.0
    y  = 0.0
    theta  = 0.0
    frequency  = 1.0
    motionProxy.setWalkTargetVelocity(x, y, theta, frequency)

    # If we don't send another command, he will move forever
    # Lets make him slow down(step length) and turn after 3 seconds
    time.sleep(3)
    x = 0.5
    theta = 0.6
    motionProxy.setWalkTargetVelocity(x, y, theta, frequency)

    # Lets make him slow down(frequency) after 3 seconds
    time.sleep(3)
    frequency  = 0.5
    motionProxy.setWalkTargetVelocity(x, y, theta, frequency)

    # Lets make him stop after 3 seconds
    time.sleep(3)
    motionProxy.stopMove()
    # Note that at any time, you can use a moveTo command
    # to run a precise distance. The last command received,
    # of velocity or position always wins


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_setwalktargetvelocity.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
