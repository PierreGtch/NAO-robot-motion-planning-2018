# -*- encoding: UTF-8 -*- 
#!/usr/bin/env python
from naoqi import ALProxy

NAO_IP = "127.0.0.1"

alconnman = ALProxy("ALConnectionManager", NAO_IP, 9559)

print "network state: " + alconnman.state()
