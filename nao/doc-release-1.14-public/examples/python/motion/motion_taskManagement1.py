# -*- encoding: UTF-8 -*- 

'''Task management: the second motion is postponed'''

import sys
import math
import time
from naoqi import ALProxy

def main(robotIP):
    try:
        proxy = ALProxy("ALMotion", robotIP, 9559)
    except Exception, e:
        print "Could not create proxy to ALMotion"
        print "Error was: ", e

    proxy.setStiffnesses("Head", 1.0)

    # go to an init head pose.
    names  = ["HeadYaw", "HeadPitch"]
    angles = [0., 0.]
    times  = [1.0, 1.0]
    isAbsolute = True
    proxy.angleInterpolation(names, angles, times, isAbsolute)

    # move slowly the head to look in the left direction. The motion will
    # take 4 seconds
    names  = "HeadYaw"
    angles = math.pi/2
    times  = 4.0
    isAbsolute = True
    proxy.post.angleInterpolation(names, angles, times, isAbsolute)

    time.sleep(1.)

    # one second after having started motion1, check the resources use.
    # As expected the "HeadYaw" resource is busy
    isAvailable = proxy.areResourcesAvailable([names])
    print("areResourcesAvailable({0}): {1}".format([names], isAvailable))

    time.sleep(1.)

    # try to look in the right direction. As the "HeadYaw" joint is busy,
    # this motion is postponed until the resource is freed
    angles = -math.pi/2
    times  = 2.0
    isAbsolute = True
    proxy.post.angleInterpolation(names, angles, times, isAbsolute)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python motion_taskManagement1.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
