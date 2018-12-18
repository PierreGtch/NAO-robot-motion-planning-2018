# -*- encoding: UTF-8 -*-

import sys
import time
from naoqi import ALProxy


def main(robotIP):
    PORT = 9559

    try:
        motionProxy = ALProxy("ALMotion", robotIP, PORT)
    except Exception,e:
        print "Could not create proxy to ALMotion"
        print "Error was: ",e
        sys.exit(1)

    motionProxy.setStiffnesses("Head", 1.0)

    # Example showing how to get the current task list
    # We will create a task first, so that we see a result
    names      = "HeadYaw"
    angleLists = 1.0
    timeList   = 3.0
    isAbsolute = True
    motionProxy.post.angleInterpolation(names, angleLists, timeList, isAbsolute)
    time.sleep(0.1)
    print 'Tasklist: ', motionProxy.getTaskList()

    time.sleep(2.0)

    motionProxy.setStiffnesses("Head", 0.0)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_advancedcreaterotation.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
