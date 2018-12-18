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

    # Example showing how to get the end of the right arm as a transform
    # represented in torso space. The result is a 4 by 4 matrix composed
    # of a 3*3 rotation matrix and a column vector of positions.
    name  = 'RArm'
    space  = 0
    useSensorValues  = True
    result = motionProxy.getTransform(name, space, useSensorValues)
    for i in range(0, 4):
        for j in range(0, 4):
            print result[4*i + j],
        print ''


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_gettransform.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
