# -*- encoding: UTF-8 -*-

import sys
from naoqi import ALProxy
import motion

def main(robotIP):
    PORT = 9559

    try:
        motionProxy = ALProxy("ALMotion", robotIP, PORT)
    except Exception,e:
        print "Could not create proxy to ALMotion"
        print "Error was: ",e
        sys.exit(1)

    # Example showing how to get the COM position of "HeadYaw".
    pName = "HeadYaw"
    pSpace = motion.FRAME_TORSO
    pUseSensors = False
    pos = motionProxy.getCOM(pName, pSpace, pUseSensors)
    print "HeadYaw COM Position: x = ", pos[0], " y:", pos[1], " z:", pos[2]


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_getcom.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
