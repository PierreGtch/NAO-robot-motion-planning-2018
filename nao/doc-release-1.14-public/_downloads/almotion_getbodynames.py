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

    # Example showing how to get the names of all the joints in the body.
    bodyNames = motionProxy.getBodyNames("Body")
    print "Body:"
    print str(bodyNames)
    print ""

    # Example showing how to get the names of all the joints in the left leg.
    leftLegJointNames = motionProxy.getBodyNames("LLeg")
    print "LLeg:"
    print str(leftLegJointNames)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_getbodynames.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
