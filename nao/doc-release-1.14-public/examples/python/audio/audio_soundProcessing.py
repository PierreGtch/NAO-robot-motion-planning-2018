# -*- encoding: UTF-8 -*- 

"""
  This script gets the signal from the front microphone of Nao and calculates the rms power on it
  It requires numpy
"""

from naoqi import *
import time
import numpy as np

class SoundProcessingModule(ALModule):
    
  def __init__( self, strName):
    ALModule.__init__( self, strName );
    self.BIND_PYTHON( strName, "processRemote")
    self.ALAudioDevice = ALProxy("ALAudioDevice", IP, 9559)
    self.isProcessingDone = False
    self.nbOfFramesToProcess = 20
    self.framesCount=0
    self.micFront = []

  def startProcessing(self):
    # ask for the front microphone signal sampled at 16kHz
    # if you want the 4 channels call setClientPreferences(self.getName(), 48000, 0, 0)
    self.ALAudioDevice.setClientPreferences(self.getName(), 16000, 3, 0)
    self.ALAudioDevice.subscribe(self.getName())

    while self.isProcessingDone == False:
      time.sleep(1)

    self.ALAudioDevice.unsubscribe(self.getName()) 
  
  def processRemote(self, nbOfChannels, nbOfSamplesByChannel, timeStamp, inputBuffer):
    self.framesCount = self.framesCount + 1;
    
    if (self.framesCount <= self.nbOfFramesToProcess) : 
	# convert inputBuffer to signed integer as it is interpreted as a string by python
	self.micFront=self.convertStr2SignedInt(inputBuffer)
	#compute the rms level on front mic
	rmsMicFront = self.calcRMSLevel(self.micFront)
	print "rms level mic front = " + str(rmsMicFront)
    else : 	
	self.isProcessingDone=True
    
  def calcRMSLevel(self,data) :
    rms = 20 * np.log10( np.sqrt( np.sum( np.power(data,2) / len(data)  )))
    return rms
    
  def convertStr2SignedInt(self, data) :
    """This function takes a string containing 16 bits little endian sound samples as input and returns a vector containing the 16 bits sound samples values converted between -1 and 1"""
    signedData=[]
    ind=0;
    for i in range (0,len(data)/2) :
      signedData.append(ord(data[ind])+ord(data[ind+1])*256)
      ind=ind+2
    
    for i in range (0,len(signedData)) :
      if signedData[i]>=32768 :
        signedData[i]=signedData[i]-65536
    
    for i in range (0,len(signedData)) :
	signedData[i]=signedData[i]/32768.0
    
    return signedData
    
if __name__ == '__main__':
  IP= "IP_OF_YOUR_ROBOT"
  # Creation of a new Python Broker
  pythonBroker = ALBroker("pythonBroker","0.0.0.0",9999, IP,9559)

  MySoundProcessingModule = SoundProcessingModule("MySoundProcessingModule")
  MySoundProcessingModule.startProcessing()
  
  pythonBroker.shutdown()
