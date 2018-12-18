#include <alproxies/alvideodeviceproxy.h>
#include <alvision/alvisiondefinitions.h>

#include <iostream>

int main(int argc, char **argv)
{
  if (argc < 2) {
    std::cerr << "Usage: videodevice_setparamdefault pIp" << std::endl;
    return 1;
  }
  const std::string pIp = argv[1];

  // Proxy to ALVideoDevice.
  AL::ALVideoDeviceProxy cameraProxy(pIp);

  // For example, set the current selected camera to default.
  cameraProxy.setParamDefault(AL::kCameraSelectID);

  std::cout << "AL::kCameraSelectID has been set to default value "
            << cameraProxy.getParam(AL::kCameraSelectID) << std::endl;

  return 0;
}
