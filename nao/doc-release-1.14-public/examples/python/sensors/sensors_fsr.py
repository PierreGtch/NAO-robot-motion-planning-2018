# -*- encoding: UTF-8 -*-
from naoqi import ALProxy
import time

IP = "127.0.0.1" # set your Ip address here
PORT = 9559

# ====================
# Create proxy to ALMemory
memoryProxy = ALProxy("ALMemory", IP, PORT)

footContact = True

footContact = memoryProxy.getData("footContact")


while (footContact):
  footContact = memoryProxy.getData("footContact")
  leftFoot = memoryProxy.getData("leftFootTotalWeight")
  rightFoot = memoryProxy.getData("rightFootTotalWeight")
  print ("Total weight on left foot: %.2f kg, on right foot: %.2f kg" % (leftFoot, rightFoot))
  time.sleep(1.0)

print("Foot contact lost")
