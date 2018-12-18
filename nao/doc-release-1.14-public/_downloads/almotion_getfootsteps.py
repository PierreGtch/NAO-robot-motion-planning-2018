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

    #####################################
    # A small example using getFootSteps
    #####################################

    # First call of move API
    # with post prefix to not be bloquing here.
    motionProxy.post.moveTo(0.3, 0.0, 0.5)

    # wait that the move process start running
    time.sleep(1.0)

    # get the foot steps vector
    footSteps = motionProxy.getFootSteps()

    # print the result
    leftFootWorldPosition = footSteps[0][0]
    print "leftFootWorldPosition:"
    print leftFootWorldPosition
    print ""

    rightFootWorldPosition = footSteps[0][1]
    print "rightFootWorldPosition:"
    print rightFootWorldPosition
    print ""

    footStepsUnchangeable = footSteps[1]
    print "Unchangeable:"
    print footStepsUnchangeable
    print ""

    footStepsChangeable   = footSteps[2]
    print "Changeable:"
    print footStepsChangeable
    print ""

if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_getfootsteps.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
