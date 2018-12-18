# -*- encoding: UTF-8 -*-

import sys
import time
from naoqi import ALProxy
import almath


def main(robotIP):
    PORT = 9559

    try:
        motionProxy = ALProxy("ALMotion", robotIP, PORT)
    except Exception,e:
        print "Could not create proxy to ALMotion"
        print "Error was: ",e
        sys.exit(1)

    motionProxy.setStiffnesses("Head", 1.0)

    # This function is useful to kill motion Task
    # To see the current motionTask please use getTaskList() function

    motionProxy.post.angleInterpolation('HeadYaw', 90*almath.TO_RAD, 10, True)
    time.sleep(3)
    taskList = motionProxy.getTaskList()
    uiMotion = taskList[0][1]
    motionProxy.killTask(uiMotion)

    motionProxy.setStiffnesses("Head", 0.0)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_killtask.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
