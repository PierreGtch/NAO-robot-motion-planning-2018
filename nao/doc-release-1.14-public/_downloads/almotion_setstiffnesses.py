# -*- encoding: UTF-8 -*-

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

    # Example showing how to set the stiffness to 1.0.
    # Beware, doing this could be dangerous, it is safer to use the
    #   stiffnessInterpolation method which takes a duration parameter.
    names  = 'Body'
    # If only one parameter is received, this is applied to all joints
    stiffnesses  = 1.0
    motionProxy.setStiffnesses(names, stiffnesses)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_setstiffnesses.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
