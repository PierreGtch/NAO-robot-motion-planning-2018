# -*- encoding: UTF-8 -*-

import motion
import almath

import sys
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

    # Get transform of Left Arm in Torso space
    chainName = "LArm"
    space     = motion.FRAME_TORSO
    useSensor = False
    tf = almath.Transform(motionProxy.getTransform(chainName, space, useSensor))

    # Compute desired transform: rotation of -20 degrees around the Z axis
    tfEnd = almath.Transform.fromRotZ(-20.0*almath.TO_RAD)*tf
    tfEnd.r1_c4 = tf.r1_c4
    tfEnd.r2_c4 = tf.r2_c4
    tfEnd.r3_c4 = tf.r3_c4

    # Set the desired target
    axisMask = 63 # rotation
    fractionMaxSpeed = 0.1
    transform = [val for val in tfEnd.toVector()]
    motionProxy.setTransform(chainName, space, transform, fractionMaxSpeed, axisMask)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_advancedcreaterotation.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
