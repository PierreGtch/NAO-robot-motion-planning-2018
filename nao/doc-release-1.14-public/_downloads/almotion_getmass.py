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


    # Example showing how to get the mass of "HeadYaw".
    pName = "HeadYaw"
    mass = motionProxy.getMass(pName)
    print pName + " mass: " + str(mass)

    # Example showing how to get the mass "LLeg" chain.
    pName = "LLeg"
    print "LLeg mass: ", motionProxy.getMass(pName)

    # It is equivalent to the following script
    pNameList = motionProxy.getBodyNames("LLeg")
    mass = 0.0
    for pName in pNameList:
        jointMass = motionProxy.getMass(pName)
        print pName + " mass: " + str(jointMass)
        mass = mass + jointMass
    print "LLeg mass:", mass


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_getmass.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
