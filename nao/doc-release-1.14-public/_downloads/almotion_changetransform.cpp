#include <iostream>
#include <alproxies/almotionproxy.h>
#include <alproxies/alrobotpostureproxy.h>
#include <qi/os.hpp>

int main(int argc, char **argv)
{
  std::string robotIp = "127.0.0.1";

  if (argc < 2) {
    std::cerr << "Usage: almotion_changetransform robotIp "
              << "(optional default \"127.0.0.1\")."<< std::endl;
  }
  else {
    robotIp = argv[1];
  }

  AL::ALMotionProxy motion(robotIp);
  AL::ALRobotPostureProxy robotPosture(robotIp);

  robotPosture.goToPosture("StandInit", 0.5f);

  // Example showing how to set Torso Transform, using a fraction of max speed
  std::string chainName  = "Torso";
  int space     = 2; // FRAME_ROBOT
  std::vector<float> transform(12, 0.0f);
  transform[0]  = 1.0f;  // 1.0f, 0.0f, 0.0f, 0.05f
  transform[3]  = 0.05f; // 0.0f, 1.0f, 0.0f, 0.0f
  transform[5]  = 1.0f;  // 0.0f, 0.0f, 1.0f, 0.0f
  transform[10] = 1.0f;
  float fractionMaxSpeed = 0.2f;
  int axisMask  = 63;
  motion.changeTransform(chainName, space, transform, fractionMaxSpeed, axisMask);

  qi::os::sleep(2.0f);

  return 0;
}
