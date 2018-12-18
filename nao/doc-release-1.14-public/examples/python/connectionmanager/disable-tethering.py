#!/usr/bin/env python
from naoqi import ALProxy
import sys
import time

NAO_IP = "127.0.0.1"

if len(sys.argv) != 2:
    print sys.argv[0] + " <technology>"
    sys.exit(1)

alconnman = ALProxy("ALConnectionManager", NAO_IP, 9559)

technology = sys.argv[1]

try:
  alconnman.disableTethering(technology)
  time.sleep(2)
  if alconnman.getTetheringEnable(technology) == True:
      print "tethering is enabled"
  else:
      print "tethering is disabled"
except Exception as e:
    print e
    sys.exit(1)


