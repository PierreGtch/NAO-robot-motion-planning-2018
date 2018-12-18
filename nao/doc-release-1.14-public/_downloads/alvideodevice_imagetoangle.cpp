#include <iostream>
#include <vector>

#include <alproxies/alvideodeviceproxy.h>

int main(int argc, char **argv)
{
  if (argc < 2) {
    std::cerr << "Usage: videodevice_imagetoangle pIp" << std::endl;
    return 1;
  }
  const std::string pIp = argv[1];

  // Proxy to ALVideoDevice.
  AL::ALVideoDeviceProxy cameraProxy(pIp);

  // Example of a normalized position in the image.
  float x = 0.2f, y = 0.7f;
  std::vector<float> posUV;
  posUV.push_back(x);
  posUV.push_back(y);

  // Retrieve the corresponding angles.
  std::vector<float> camAngles = cameraProxy.getAngPosFromImgPos(posUV);
  std::cout << "Position " << posUV << " corresponds to angles "
            << camAngles << std::endl;

  // Example of a normalized object size.
  float sizeX = 0.1f, sizeY = 0.3f;
  posUV.clear();
  posUV.push_back(sizeX);
  posUV.push_back(sizeY);

  // Retrieve corresponding angle size.
  std::vector<float> angSize = cameraProxy.getAngSizeFromImgSize(posUV);
  std::cout << "Object size " << posUV << "corresponds to angle size "
            << angSize << std::endl;

  return 0;
}
