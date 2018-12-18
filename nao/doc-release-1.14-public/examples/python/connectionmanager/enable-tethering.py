#!/usr/bin/env python
from naoqi import ALProxy
import sys
import time

NAO_IP = "127.0.0.1"

if len(sys.argv) != 2 and len(sys.argv) != 4:
    print sys.argv[0] + " <technology> [Name] [Passphrase]"
    sys.exit(1)

alconnman = ALProxy("ALConnectionManager", NAO_IP, 9559)

technology = sys.argv[1]

if len(sys.argv) == 4:
    name = sys.argv[2]
    passphrase = sys.argv[3]
    try:
        alconnman.enableTethering(technology, name, passphrase)
    except Exception as e:
        print e
        sys.exit(1)
else:
    try:
        alconnman.enableTethering(technology)
        time.sleep(2)
    except Exception as e:
        print e
        sys.exit(1)

if alconnman.getTetheringEnable(technology) == True:
    print "tethering is enabled"
else:
    print "tethering is disabled"

