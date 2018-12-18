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

    # Example showing how to interpolate to maximum stiffness in 1 second
    names  = 'Body'
    stiffnessLists  = 0.0
    timeLists  = 1.0
    motionProxy.stiffnessInterpolation(names, stiffnessLists, timeLists)

    time.sleep(1.0)

    # Example showing a stiffness trajectory for a single joint
    names  = ['HeadYaw']
    stiffnessLists  = [0.25, 0.5, 1.0, 0.0]
    timeLists  = [1.0, 2.0, 3.0, 4.0]
    motionProxy.stiffnessInterpolation(names, stiffnessLists, timeLists)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_advancedcreaterotation.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
