#include <alproxies/alvideodeviceproxy.h>
#include <alvision/alvisiondefinitions.h>

#include <iostream>

int main(int argc, char **argv)
{
  if (argc < 2) {
    std::cerr << "Usage: videodevice_getparam pIp" << std::endl;
    return 1;
  }
  const std::string pIp = argv[1];

  // Proxy to ALVideoDevice.
  AL::ALVideoDeviceProxy cameraProxy(pIp);

  // Example: retrieve the ID of the selected camera.
  int pVal = cameraProxy.getParam(AL::kCameraSelectID);
  std::cout << "AL::kCameraSelectID is " << pVal << std::endl;

  return 0;
}
