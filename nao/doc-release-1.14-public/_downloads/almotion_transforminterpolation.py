import sys
# -*- encoding: UTF-8 -*-

import time
from naoqi import ALProxy
import motion
import math

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

    # Example moving the left hand up a little using transforms
    # Note that this is easier to do with positionInterpolation
    chainName  = 'LArm'
    # Defined in 'Torso' space
    space  = motion.FRAME_TORSO
    # We will use a single transform
    # | R R R x |
    # | R R R y |
    # | R R R z |
    # | 0 0 0 1 |
    # Get the current transform, in 'Torso' space using
    # the command angles.
    useSensorValue = False
    initialTransform = motionProxy.getTransform('LArm', space, useSensorValue)
    # Copy the current transform
    targetTransform = initialTransform
    # add 2cm to the z axis, making the arm move upwards
    targetTransform[11] = initialTransform[11] + 0.02
    # construct a path with only one transform
    path  = [targetTransform]
    # The arm does not have enough degees of freedom
    # to be able to constrain all the axes of movement,
    # so here, we will choose an axis mask of 7, which
    # will contrain position only
    # x = 1, y = 2, z = 4, wx = 8, wy = 16, wz = 32
    # 1 + 2 + 4 = 7
    axisMask  = 7
    # Allow three seconds for the movement
    duration  = [3.0]
    isAbsolute  = False
    motionProxy.transformInterpolation(chainName, space, path,
    axisMask, duration, isAbsolute)
    finalTransform = motionProxy.getTransform('LArm', motion.FRAME_TORSO, False)
    print 'Initial', initialTransform
    print 'Target', targetTransform
    print 'Final', finalTransform

    time.sleep(1.0)

    # Example moving the left hand up a little using transforms
    # Note that this is easier to do with positionInterpolation

    space      = motion.FRAME_ROBOT
    axisMask   = motion.AXIS_MASK_ALL   # full control
    isAbsolute = False
    # Lower the Torso and move to the side
    effector   = "Torso"
    path       = [1.0, 0.0, 0.0, 0.0,
                  0.0, 1.0, 0.0, -0.07,
                  0.0, 0.0, 1.0, -0.03]
    duration   = 2.0                    # seconds
    motionProxy.transformInterpolation(effector, space, path,
                                 axisMask, duration, isAbsolute)
    # LLeg motion
    effector   = "LLeg"
    cs = math.cos(45.0*math.pi/180.0)
    ss = math.cos(45.0*math.pi/180.0)
    path       = [ cs, -ss, 0.0, 0.0,
                   ss,  cs, 0.0, 0.06,
                  0.0, 0.0, 1.0, 0.0]
    duration   = 2.0                    # seconds
    motionProxy.transformInterpolation(effector, space, path,
                                 axisMask, duration, isAbsolute)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_transforminterpolation.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
