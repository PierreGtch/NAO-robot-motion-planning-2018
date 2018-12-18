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

    # Example showing how to get the limits for the whole body
    name = "Body"
    limits = motionProxy.getLimits(name)
    jointNames = motionProxy.getBodyNames(name)
    for i in range(0,len(limits)):
        print jointNames[i] + ":"
        print "minAngle", limits[i][0],\
            "maxAngle", limits[i][1],\
            "maxVelocity", limits[i][2],\
            "maxTorque", limits[i][3]


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_getlimits.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
