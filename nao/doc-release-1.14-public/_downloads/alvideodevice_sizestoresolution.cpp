#include <iostream>

#include <alproxies/alvideodeviceproxy.h>
#include <alvision/alvisiondefinitions.h>

int main(int argc, char **argv)
{
  if (argc < 2) {
    std::cerr << "Usage: videodevice_sizestoresolution pIp" << std::endl;
    return 1;
  }
  const std::string pIp = argv[1];

  // Proxy to ALVideoDevice.
  AL::ALVideoDeviceProxy cameraProxy(pIp);

  // Get resolution of the currently selected camera.
  int resolution = cameraProxy.sizesToResolution(640, 480);

  switch(resolution) {
  case 0:
    std::cout << "Current resolution is QQVGA" << std::endl;
    break;

  case 1:
    std::cout << "Current resolution is QVGA" << std::endl;
    break;

  case 2:
    std::cout << "Current resolution is VGA" << std::endl;
    break;

  default:
    std::cerr << "Unknown resolution" << std::endl;
    break;
  }

  return 1;
}
