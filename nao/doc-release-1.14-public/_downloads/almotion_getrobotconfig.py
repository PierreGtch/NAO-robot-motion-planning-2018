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

    # Example showing how to get the robot config
    robotConfig = motionProxy.getRobotConfig()
    for i in range(len(robotConfig[0])):
        print robotConfig[0][i], ": ", robotConfig[1][i]

    # "Model Type"   : "naoH25", "naoH21", "naoT14" or "naoT2".
    # "Head Version" : "VERSION_32" or "VERSION_33" or "VERSION_40".
    # "Body Version" : "VERSION_32" or "VERSION_33" or "VERSION_40".
    # "Laser"        : True or False.
    # "Legs"         : True or False.
    # "Arms"         : True or False.
    # "Extended Arms": True or False.
    # "Hands"        : True or False.
    # "Arm Version"  : "VERSION_32" or "VERSION_33" or "VERSION_40".
    # Number of Legs : 0 or 2
    # Number of Arms : 0 or 2
    # Number of Hands: 0 or 2


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_getrobotconfig.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
