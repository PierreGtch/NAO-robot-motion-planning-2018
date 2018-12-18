# -*- encoding: UTF-8 -*-

"""
This example shows how to use ALFaceTracker.
It is launched for a little while, then stopped.
"""

import sys
import time
from naoqi import ALProxy

if (len(sys.argv) < 2):
    print "Usage: 'python %s IP [PORT]'" % (__file__)
    sys.exit(1)

IP = sys.argv[1]
PORT = 9559
if (len(sys.argv) > 2):
    PORT = sys.argv[2]


print "Connecting to", IP, "with port", PORT
motion = ALProxy("ALMotion", IP, PORT)
faceTracker = ALProxy("ALFaceTracker", IP, PORT)
    
# First, set Head Stiffness to ON.
motion.setStiffnesses("Head", 1.0)

# Then, start tracker.
faceTracker.startTracker()

print "ALFaceTracker successfully started, now show your face to Nao!"
print "ALFaceTracker will be stopped in 60 s."

time.sleep(60)

# Stop tracker and remove head stiffness.
faceTracker.stopTracker()
motion.setStiffnesses("Head", 0.0)

print "ALFaceTracker stopped."

