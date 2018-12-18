#include <iostream>
#include <alproxies/almotionproxy.h>

int main(int argc, char **argv)
{
  std::string robotIp = "127.0.0.1";

  if (argc < 2) {
    std::cerr << "Usage: almotion_getwalkarmsenable robotIp "
              << "(optional default \"127.0.0.1\")."<< std::endl;
  }
  else {
    robotIp = argv[1];
  }

  AL::ALMotionProxy motion(robotIp);

  // Example showing how to get the enabled flags for the arms
  AL::ALValue result = motion.getWalkArmsEnabled();
  std::cout << "LeftArmEnabled: " << result[0] << std::endl;
  std::cout << "RightArmEnabled: " << result[1] << std::endl;

  return 0;
}
