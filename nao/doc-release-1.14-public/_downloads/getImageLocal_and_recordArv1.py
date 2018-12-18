import time
#import Image

from naoqi import ALProxy
import vision_definitions


# Put here IP and Port of a broker containg basicMotionDetector
IP = "127.0.0.1"  # Put here the IP address of your robot
PORT=9559

#________________________________
# Get Proxy on ALVideoDevice
#________________________________

try:
  camProxy = ALProxy("ALVideoDevice",IP,PORT)
except Exception,e:
  print "Error when creating vision proxy:"
  print str(e)
  exit(1)

#________________________________
# Vision module creation
#________________________________

resolution = vision_definitions.kQVGA
colorSpace = vision_definitions.kYUV422ColorSpace
fps = 30

nameId = "pythonVM"
nameId = camProxy.subscribe(nameId, resolution, colorSpace, fps)

#________________________________
# Ask to grab a maximum of 3500
# images obtained by the vision module
#________________________________

print  "set recording file"
camProxy.recordVideo(nameId, "/home/nao/myVideo", 3500, 1)

print  "launch recording"

#________________________________
# The vision module requests 300 images
#________________________________

for i in range(0, 300):
  image = camProxy.getImageLocal(nameId)
  camProxy.releaseImage(nameId)
  time.sleep(0.030)

#________________________________
# Stop manually the recording
# after 300 images
#________________________________

print "finishing"
camProxy.stopVideo(nameId)
camProxy.unsubscribeAllInstances(nameId)

print 'end of script'
