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

    # Example showing a single target angle for one joint
    # Interpolate the head yaw to 1.0 radian in 1.0 second
    names      = "HeadYaw"
    angleLists = 50.0*almath.TO_RAD
    timeLists  = 1.0
    isAbsolute = True
    motionProxy.angleInterpolation(names, angleLists, timeLists, isAbsolute)

    time.sleep(1.0)

    # Example showing a single trajectory for one joint
    # Interpolate the head yaw to 1.0 radian and back to zero in 2.0 seconds
    names      = "HeadYaw"
    #              2 angles
    angleLists = [30.0*almath.TO_RAD, 0.0]
    #              2 times
    timeLists  = [1.0, 2.0]
    isAbsolute = True
    motionProxy.angleInterpolation(names, angleLists, timeLists, isAbsolute)

    time.sleep(1.0)

    # Example showing multiple trajectories
    names      = ["HeadYaw", "HeadPitch"]
    angleLists = [30.0*almath.TO_RAD, 30.0*almath.TO_RAD]
    timeLists  = [1.0, 1.2]
    isAbsolute = True
    motionProxy.angleInterpolation(names, angleLists, timeLists, isAbsolute)

    # Example showing multiple trajectories
    # Interpolate the head yaw to 1.0 radian and back to zero in 2.0 seconds
    # while interpolating HeadPitch up and down over a longer period.
    names  = ["HeadYaw","HeadPitch"]
    # Each joint can have lists of different lengths, but the number of
    # angles and the number of times must be the same for each joint.
    # Here, the second joint ("HeadPitch") has three angles, and
    # three corresponding times.
    angleLists  = [[50.0*almath.TO_RAD, 0.0],
                   [-30.0*almath.TO_RAD, 30.0*almath.TO_RAD, 0.0]]
    timeLists   = [[1.0, 2.0], [ 1.0, 2.0, 3.0]]
    isAbsolute  = True
    motionProxy.angleInterpolation(names, angleLists, timeLists, isAbsolute)

    motionProxy.setStiffnesses("Head", 0.0)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_angleinterpolation.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
