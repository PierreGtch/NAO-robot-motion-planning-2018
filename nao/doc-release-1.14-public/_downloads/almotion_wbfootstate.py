# -*- encoding: UTF-8 -*-

import sys
from naoqi import ALProxy
import time

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

    motionProxy.wbEnable(True)

    # Example showing how to fix the feet.
    print "Feet fixed."
    stateName = "Fixed"
    supportLeg = "Legs"
    motionProxy.wbFootState(stateName, supportLeg)

    # Example showing how to fix the left leg and constrained in a plane the right leg.
    print "Left leg fixed, right leg in a plane."
    motionProxy.wbFootState("Fixed", "LLeg")
    motionProxy.wbFootState("Plane", "RLeg")

    # Example showing how to fix the left leg and keep free the right leg.
    print "Left leg fixed, right leg free"
    motionProxy.wbFootState("Fixed", "LLeg")
    motionProxy.wbFootState("Free", "RLeg")

    time.sleep(2.0)
    motionProxy.wbEnable(False)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_wbfootstate.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
