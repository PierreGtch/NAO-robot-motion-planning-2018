# -*- coding: utf-8 -*-
"""
    This is a simple python script to test the ALSoundPlayback module

"""
import os

from naoqi import ALProxy

# Put here IP of your robot
IP="nao.local"
PORT=9559

def main():
    print 'START TESTING ALSoundPlayback MODULE'

    try:
        ALSoundPlayback_Proxy = ALProxy("ALSoundPlayback",IP,PORT)
    except Exception,e:
        print "Error when creating ALSoundPlayback proxy:"
        print str(e)
        return(1)

    try:
        path=os.getcwd()
        ALSoundPlayback_Proxy.playWavFile(str(path)+"/hello.wav")
    except Exception,e:
        print "ALSoundPlayback test Failed:"
        print str(e)
        return(1)

if __name__ == "__main__":
  exit (main())

