#include <alproxies/alvideodeviceproxy.h>
#include <alvision/alvisiondefinitions.h>

#include <iostream>

int main(int argc, char **argv)
{
  if (argc < 2) {
    std::cerr << "Usage: videodevice_setparam pIp" << std::endl;
    return 1;
  }
  const std::string pIp = argv[1];

  // Proxy to ALVideoDevice.
  AL::ALVideoDeviceProxy cameraProxy(pIp);

  // For example, set the current selected camera to top camera.
  cameraProxy.setParam(AL::kCameraSelectID, 0);

  std::cout << "AL::kCameraSelectID has been set to " << 0 << std::endl;

  return 0;
}
