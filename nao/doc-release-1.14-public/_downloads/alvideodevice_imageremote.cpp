#include <alproxies/alvideodeviceproxy.h>
#include <alvision/alvisiondefinitions.h>

#include <iostream>

int main(int argc, char **argv)
{
  if (argc < 2) {
    std::cerr << "Usage: videodevice_imageremote pIp" << std::endl;
    return 1;
  }
  const std::string pIp = argv[1];

  // Proxy to ALVideoDevice.
  AL::ALVideoDeviceProxy cameraProxy(pIp);

  // Subscribe a Vision Module to ALVideoDevice, starting the
  // frame grabber if it was not started before.
  std::string subscriberID = "subscriberID";
  int fps = 5;
  // The subscriberID can be altered if other instances are already running
  subscriberID = cameraProxy.subscribe(subscriberID, AL::kVGA, AL::kRGBColorSpace, fps);

  // Retrieve the current image.
  AL::ALValue results;
  results = cameraProxy.getImageRemote(subscriberID);
  const unsigned char* imageData =  static_cast<const unsigned char*>(results[6].GetBinary());

  if (imageData == NULL) {
    std::cerr << "Could not retrieve current image." << std::endl;
    return 0;
  }
  else {
    std::cout << "Image retrieved." << std::endl;
  }

  cameraProxy.releaseImage(subscriberID);

  // Unsubscribe the V.M.
  cameraProxy.unsubscribe(subscriberID);

  return 1;
}
