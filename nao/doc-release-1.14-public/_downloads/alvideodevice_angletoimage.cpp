#include <iostream>
#include <vector>

#include <alproxies/alvideodeviceproxy.h>

int main(int argc, char **argv)
{
  if (argc < 2) {
    std::cerr << "Usage videodevice_angletoimage pIp" << std::endl;
    return 1;
  }
  const std::string pIp = argv[1];

  // Proxy to ALVideoDevice.
  AL::ALVideoDeviceProxy cameraProxy(pIp);

  // Example camera angles.
  std::vector<float> camAngles;
  camAngles.push_back(0.1f);
  camAngles.push_back(0.1f);

  // Retrieve image position in pixels.
  std::vector<float> imgPos = cameraProxy.getImgPosFromAngPos(camAngles);
  std::cout << "Camera angles " << camAngles << " correspond to "
            << imgPos << " in pixels" << std::endl;

  camAngles.clear();
  // Example camera angle size.
  camAngles.push_back(0.1f);
  camAngles.push_back(0.3f);
  // Retrieve object size in pixels.
  std::vector<float> imSize = cameraProxy.getImgSizeFromAngSize(camAngles);
  std::cout << "Angle size " << imSize << " corresponds to "
            << imSize << " size in pixels" << std::endl;

  return 0;
}
