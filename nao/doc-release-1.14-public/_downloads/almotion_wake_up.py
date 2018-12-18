# -*- encoding: UTF-8 -*-

'''Wake up: sets Motor on and, if needed, goes to initial position'''

import sys
from naoqi import ALProxy

def main(robotIP):

    try:
        motionProxy = ALProxy("ALMotion", robotIP, 9559)
    except Exception, e:
        print "Could not create proxy to ALMotion"
        print "Error was: ", e

    motionProxy.wakeUp()

    # print motion state
    print motionProxy.getSummary()


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_wake_up.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
