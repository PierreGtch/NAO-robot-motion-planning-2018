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

    # Example showing how to activate "Arms" anticollision
    # Anticollision can be activated at every time
    pChainName = "Arms"
    pEnable    = True
    isSuccess  = motionProxy.setCollisionProtectionEnabled(pChainName, pEnable)
    print "Anticollision activation on arms: " + str(isSuccess)

    # Example showing how to deactivate "LArm" anticollision
    # Anticollision can be inactivated only if there is no collision in the desired chain
    pChainName = "LArm"
    collisionState = motionProxy.isCollision(pChainName)
    pEnable = False
    isSuccess = motionProxy.setCollisionProtectionEnabled(pChainName, pEnable)
    print "isSuccess: ", isSuccess


if __name__ == "__main__":
    robotIp = "127.0.0.1"

    if len(sys.argv) <= 1:
        print "Usage python almotion_setcollisionprotectionenabled.py robotIP (optional default: 127.0.0.1)"
    else:
        robotIp = sys.argv[1]

    main(robotIp)
