# -*- coding: utf-8 -*-
#
# Test the GenericVideoModule module to register images.
# The module should have been cross compiled and launched on the robot.
#
# Usage: Set your Naoqi's IP address.
#
# - Call the register function with resolution and color space.
# - Perform a save image remote.
# - Perform a save image local
# - Call unRegister.
#
# Have a look at the module code provided for more details.
#

import sys

from naoqi import ALProxy
import vision_definitions



if __name__ == "__main__":

  if len(sys.argv) < 2:
    print "You should specify your robot IP as first argument from the command line"
    exit(1)

  IP = sys.argv[1]
  PORT = 9559

  print "Creating GenericVideoModule proxy to ", IP
  sampleProxy = ALProxy("GenericVideoModule", IP, PORT)

  # Here, you can set the resolution and color space you want
  # Later on, the saved images will use this format.
  print "Registering to ALVideoDevice"
  sampleProxy.registerToVideoDevice(vision_definitions.kQQVGA, vision_definitions.kBGRColorSpace)

  ####
  # Save image in remote mode, specifying the path where the image will be saved
  # on the robot.
  robotPath = "/home/nao/naoqi/img"
  print "save image to "+ robotPath + " on the robot"
  sampleProxy.saveImageRemote(robotPath, "jpg")

  print "unRegister from ALVideoDevice"
  sampleProxy.unRegisterFromVideoDevice()


