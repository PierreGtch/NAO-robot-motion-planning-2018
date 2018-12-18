#include <iostream>
#include <alproxies/almotionproxy.h>
#include <alproxies/alrobotpostureproxy.h>
#include <qi/os.hpp>

int main(int argc, char **argv)
{
  std::string robotIp = "127.0.0.1";

  if (argc < 2) {
    std::cerr << "Usage: almotion_changeposition robotIp "
              << "(optional default \"127.0.0.1\")."<< std::endl;
  }
  else {
    robotIp = argv[1];
  }

  AL::ALMotionProxy motion(robotIp);
  AL::ALRobotPostureProxy robotPosture(robotIp);

  robotPosture.goToPosture("StandInit", 0.5f);

  // Example showing how to move forward (3cm) "LArm".
  std::string effectorName  = "LArm";
  int space                 = 2; // FRAME_ROBOT
  std::vector<float> positionChange(6, 0.0f);
  positionChange[0] = 0.03f;
  float fractionMaxSpeed    = 0.3f;
  int axisMask              = 7;

  motion.changePosition(effectorName, space, positionChange, fractionMaxSpeed, axisMask);

  return 0;
}
