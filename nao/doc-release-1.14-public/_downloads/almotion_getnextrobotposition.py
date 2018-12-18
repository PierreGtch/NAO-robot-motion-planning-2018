# -*- encoding: UTF-8 -*-

import sys
import time
from naoqi import ALProxy
import almath as m #python's wrapping of almath

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

    # Example showing how to get a simplified robot position in world.
    result = motionProxy.getNextRobotPosition()
    print "Next Robot Position", result

    # Example showing how to use this information to know the robot's diplacement
    # during the move process.

    # Make the robot move
    motionProxy.post.moveTo(0.6, 0.0, 0.5) # No blocking due to post called
    time.sleep(1.0)
    initRobotPosition = m.Pose2D(motionProxy.getNextRobotPosition())

    # Make the robot move
    motionProxy.moveTo(0.1, 0.0, 0.2)

    endRobotPosition = m.Pose2D(motionProxy.getNextRobotPosition())

    # Compute robot's' displacement
    robotMove = m.pose2DInverse(initRobotPosition)*endRobotPosition
    print "Robot Move :", robotMove


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_getnextrobotposition.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
