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

    # Example simulating reactive control
    names = "HeadYaw"
    angles = 0.3
    fractionMaxSpeed = 0.1
    motionProxy.setAngles(names,angles,fractionMaxSpeed)
    # wait half a second
    time.sleep(0.5)
    # change target
    angles = 0.0
    motionProxy.setAngles(names,angles,fractionMaxSpeed)
    # wait half a second
    time.sleep(0.5)
    # change target
    angles = 0.1
    motionProxy.setAngles(names,angles,fractionMaxSpeed)

    time.sleep(3.0)
    motionProxy.setStiffnesses("Head", 0.0)

if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_reactivecontrol.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
