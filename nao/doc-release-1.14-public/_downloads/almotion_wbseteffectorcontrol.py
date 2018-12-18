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

    # Example showing how to set orientation target for LArm tracking.
    effectorName = "LArm"

    motionProxy.wbEnableEffectorControl(effectorName, True)
    time.sleep(2.0)
    targetCoordinate = [0.1, 0.0, 0.0]
    motionProxy.wbSetEffectorControl(effectorName, targetCoordinate)

    time.sleep(2.0)
    motionProxy.wbEnable(False)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_wbseteffectorcontrol.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
