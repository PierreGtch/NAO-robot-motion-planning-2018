# -*- encoding: UTF-8 -*-

import sys
from naoqi import ALProxy
import almath


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
    useSensorValues = False
    result = motionProxy.getRobotPosition(useSensorValues)
    print "Robot Position", result

    # Example showing how to use this information to know the robot's diplacement.
    useSensorValues = False
    initRobotPosition = almath.Pose2D(motionProxy.getRobotPosition(useSensorValues))

    # Make the robot move
    motionProxy.moveTo(0.1, 0.0, 0.2)

    endRobotPosition = almath.Pose2D(motionProxy.getRobotPosition(useSensorValues))

    # Compute robot's' displacement
    robotMove = almath.pose2DInverse(initRobotPosition)*endRobotPosition
    print "Robot Move:", robotMove


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_getrobotposition.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
