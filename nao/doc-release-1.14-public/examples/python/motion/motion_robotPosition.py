# -*- encoding: UTF-8 -*- 

import sys
import time
import math
import almath
from naoqi import ALProxy


def StiffnessOn(proxy):
    # We use the "Body" name to signify the collection of all joints
    pNames = "Body"
    pStiffnessLists = 1.0
    pTimeLists = 1.0
    proxy.stiffnessInterpolation(pNames, pStiffnessLists, pTimeLists)


try:
    import pylab as pyl
    HAS_PYLAB = True
except ImportError:
    print "Matplotlib not found. this example will not plot data"
    HAS_PYLAB = False


def main(robotIP):
    """ robot Position: Small example to know how to deal
                        with robotPosition and getFootSteps
    """

    # Init proxies.
    try:
        motionProxy = ALProxy("ALMotion", robotIP, 9559)
    except Exception, e:
        print "Could not create proxy to ALMotion"
        print "Error was: ", e

    try:
        postureProxy = ALProxy("ALRobotPosture", robotIP, 9559)
    except Exception, e:
        print "Could not create proxy to ALRobotPosture"
        print "Error was: ", e

    # Set NAO in stiffness On
    StiffnessOn(motionProxy)
    postureProxy.goToPosture("StandInit", 0.5)

    # Initialize the move
    motionProxy.moveInit()

    # end init, begin experiment

    # First call of move API
    # with post prefix to not be bloquing here.
    motionProxy.post.moveTo(0.3, 0.0, 0.5)

    # wait that the move process start running
    time.sleep(0.1)

    # get robotPosition and nextRobotPosition
    useSensors = False
    robotPosition     = almath.Pose2D(motionProxy.getRobotPosition(useSensors))
    nextRobotPosition = almath.Pose2D(motionProxy.getNextRobotPosition())

    # get the first foot steps vector
    # (footPosition, unChangeable and changeable steps)
    footSteps1 = motionProxy.getFootSteps()

    # Second call of move API
    motionProxy.post.moveTo(0.3, 0.0, -0.5)

    # get the second foot steps vector
    footSteps2 = motionProxy.getFootSteps()

    # end experiment, begin compute

    # here we wait until the move process is over
    motionProxy.waitUntilMoveIsFinished()
    # then we get the final robot position
    robotPositionFinal = almath.Pose2D(motionProxy.getRobotPosition(False))

    # compute robot Move with the second call of move API
    # so between nextRobotPosition and robotPositionFinal
    robotMove = almath.pose2DInverse(nextRobotPosition)*robotPositionFinal
    print "Robot Move :", robotMove

    # end compute, begin plot

    if (HAS_PYLAB):
      #################
      # Plot the data #
      #################
      pyl.figure()
      printRobotPosition(robotPosition, 'black')
      printRobotPosition(nextRobotPosition, 'blue')
      printFootSteps(footSteps1, 'green', 'red')

      pyl.figure()
      printRobotPosition(robotPosition, 'black')
      printRobotPosition(nextRobotPosition, 'blue')
      printFootSteps(footSteps2, 'blue', 'orange')

      pyl.show()

      # end plot


def printRobotPosition(pos, color):
    """ Function for plotting a robot position
        :param pos: an almath Pose2D
        :param color: the color of the robot
    """

    robotWidth = 0.01
    pyl.plot(pos.x, pos.y, color=color, marker='o', markersize=10)
    pyl.plot([pos.x, pos.x + robotWidth*math.cos(pos.theta)],
             [pos.y, pos.y + robotWidth*math.sin(pos.theta)],
             color=color,
             linewidth = 4)


def printFootSteps(footSteps, colorLeft, colorRight):
    """ Function for plotting the result of a getFootSteps
        :param footSteps: the result of a getFootSteps API call
        :param colorLeft: the color for left foot steps
        :param colorRight: the color for right foot steps
    """

    if ( len(footSteps[0]) == 2) :
      posLeft  = footSteps[0][0]
      posRight = footSteps[0][1]

      if(posLeft != posRight):
        leftPose2D = almath.Pose2D(posLeft[0], posLeft[1], posLeft[2])
        printLeftFootStep(leftPose2D, colorLeft, 3)
        rightPose2D = almath.Pose2D(posRight[0], posRight[1], posRight[2])
        printRightFootStep(rightPose2D, colorRight, 3)

    if ( len(footSteps[1]) >= 1 ):
      for i in range(len(footSteps[1])):
        name = footSteps[1][i][0]
        pos = footSteps[1][i][2]
        tmpPose2D = almath.Pose2D(pos[0], pos[1], pos[2])

        if(name == 'LLeg'):
          leftPose2D = rightPose2D * tmpPose2D
          printLeftFootStep(leftPose2D, colorLeft, 3)
        else:
          rightPose2D = leftPose2D * tmpPose2D
          printRightFootStep(rightPose2D, colorRight, 3)

    if ( len(footSteps[2]) >= 1 ):
      for i in range(len(footSteps[2])):
        name = footSteps[2][i][0]
        pos = footSteps[2][i][2]
        tmpPose2D = almath.Pose2D(pos[0], pos[1], pos[2])

        if(name == 'LLeg'):
          leftPose2D = rightPose2D * tmpPose2D
          printLeftFootStep(leftPose2D, colorLeft, 1)
        else:
          rightPose2D = leftPose2D * tmpPose2D
          printRightFootStep(rightPose2D, colorRight, 1)

    pyl.axis('equal')


def printLeftFootStep(footPose, color, size):
    """ Function for plotting a LEFT foot step
       :param footPose: an almath Pose2D
       :param color: the color for the foot step
       :param size: the size of the line
    """

    lFootBoxFL = footPose * almath.Pose2D( 0.110,  0.050, 0.0)
    lFootBoxFR = footPose * almath.Pose2D( 0.110, -0.038, 0.0)
    lFootBoxRR = footPose * almath.Pose2D(-0.047, -0.038, 0.0)
    lFootBoxRL = footPose * almath.Pose2D(-0.047,  0.050, 0.0)

    pyl.plot(footPose.x, footPose.y, color=color, marker='o', markersize=size*2)
    pyl.plot( [lFootBoxFL.x, lFootBoxFR.x, lFootBoxRR.x, lFootBoxRL.x, lFootBoxFL.x],
              [lFootBoxFL.y, lFootBoxFR.y, lFootBoxRR.y, lFootBoxRL.y, lFootBoxFL.y],
              color = color,
              linewidth = size)


def printRightFootStep(footPose, color, size):
    """ Function for plotting a RIGHT foot step
        :param footPose: an almath Pose2D
        :param color: the color for the foot step
        :param size: the size of the line
    """

    rFootBoxFL = footPose * almath.Pose2D( 0.110,  0.038, 0.0)
    rFootBoxFR = footPose * almath.Pose2D( 0.110, -0.050, 0.0)
    rFootBoxRR = footPose * almath.Pose2D(-0.047, -0.050, 0.0)
    rFootBoxRL = footPose * almath.Pose2D(-0.047,  0.038, 0.0)

    pyl.plot(footPose.x, footPose.y, color=color, marker='o', markersize=size*2)
    pyl.plot( [rFootBoxFL.x, rFootBoxFR.x, rFootBoxRR.x, rFootBoxRL.x, rFootBoxFL.x],
              [rFootBoxFL.y, rFootBoxFR.y, rFootBoxRR.y, rFootBoxRL.y, rFootBoxFL.y],
              color = color,
              linewidth = size)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python motion_robotPosition.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
