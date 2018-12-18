# -*- encoding: UTF-8 -*- 

''' setFootStep: Small example to make Nao execute     '''
'''              Random Foot Steps                     '''
'''              Using setFootStep API                 '''
import sys
import almath
import random
from naoqi import ALProxy


def StiffnessOn(proxy):
    # We use the "Body" name to signify the collection of all joints
    pNames = "Body"
    pStiffnessLists = 1.0
    pTimeLists = 1.0
    proxy.stiffnessInterpolation(pNames, pStiffnessLists, pTimeLists)


def main(robotIP):
    # Init proxies.
    try:
        motionProxy = ALProxy("ALMotion", robotIP, 9559)
    except Exception, e:
        print "Could not create proxy to ALMotion"
        print "Error was: ", e

    try:
        postureProxy = ALProxy("ALRobotPosture", robotIP, 9559)
    except Exception, e:
        print "Could not create proxy to ALRobotPosture"
        print "Error was: ", e

    # Set NAO in Stiffness On
    StiffnessOn(motionProxy)

    # Send NAO to Pose Init
    postureProxy.goToPosture("StandInit", 0.5)

    # This example create 10 random Step
    for i in range(10):
        motionProxy.setFootStepsWithSpeed(
            [random.choice(["RLeg","LLeg"])], # Leg name
            [[random.uniform(-0.04, 0.06),    # X
              random.uniform(-0.16, 0.16),    # Y
              random.uniform(-30.0*almath.TO_RAD, 30.0*almath.TO_RAD), # Theta
              [["StepHeight", random.uniform(0.005, 0.03)],             # Step height
               ["TorsoWy", random.uniform(7.0*almath.TO_RAD, -7.0*almath.TO_RAD)],    # TorsoWy
               ["TorsoWx", random.uniform(7.0*almath.TO_RAD, -7.0*almath.TO_RAD)]]]], # TorsoWx
               [random.uniform(0.01, 0.99)],     # Frequency
               False)


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python motion_setFootStepRandom.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
