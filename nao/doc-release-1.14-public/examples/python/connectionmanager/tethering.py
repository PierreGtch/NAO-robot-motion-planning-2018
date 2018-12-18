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
enable = alconnman.getTetheringEnable("wifi")

if enable:
    print "Tethering is enabled"
else:
    print "Tethering is disabled"

print "Tethering identifier: " + alconnman.tetheringName(technology)
print "Tethering passphrase: " + alconnman.tetheringPassphrase(technology)
