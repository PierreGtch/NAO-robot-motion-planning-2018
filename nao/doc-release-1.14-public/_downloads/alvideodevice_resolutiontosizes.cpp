#include <iostream>

#include <alproxies/alvideodeviceproxy.h>
#include <alvision/alvisiondefinitions.h>

int main(int argc, char **argv)
{
  if (argc < 2) {
    std::cerr << "Usage videodevice_resolutiontosizes pIp" << std::endl;
    return 1;
  }
  const std::string pIp = argv[1];

  // Proxy to ALVideoDevice.
  AL::ALVideoDeviceProxy cameraProxy(pIp);

  // Retrieve current image size.
  AL::ALValue size = cameraProxy.resolutionToSizes(AL::kVGA);
  std::cout << "Image width is " << size[0] << " and image height is "
            << size[1] << std::endl;

  return 0;
}
