#include <iostream>
#include <alproxies/almotionproxy.h>
#include <alproxies/alrobotpostureproxy.h>

int main(int argc, char **argv)
{
  std::string robotIp = "127.0.0.1";

  if (argc < 2) {
    std::cerr << "Usage: almotion_positioninterpolation robotIp "
              << "(optional default \"127.0.0.1\")."<< std::endl;
  }
  else {
    robotIp = argv[1];
  }

  AL::ALMotionProxy motion(robotIp);
  AL::ALRobotPostureProxy robotPosture(robotIp);

  robotPosture.goToPosture("StandInit", 0.5f);

  // Example of a cartesian foot trajectory
  // Warning: Needs a PoseInit before executing
  int space       =  2; // FRAME_ROBOT
  int axisMask    = 63; // control all the effector's axes
  bool isAbsolute = false;

  // Lower the Torso and move to the side
  std::string effector = "Torso";
  AL::ALValue path     = AL::ALValue::array(0.0f, -0.07f, -0.03f, 0.0f, 0.0f, 0.0f);
  AL::ALValue timeList = 2.0f; // seconds
  motion.positionInterpolation(effector, space, path,
                              axisMask, timeList, isAbsolute);

  // LLeg motion
  effector   = "LLeg";
  path       = AL::ALValue::array(0.0f,  0.06f,  0.00f, 0.0f, 0.0f, 0.8f);
  timeList   = 2.0f; // seconds
  motion.positionInterpolation(effector, space, path,
                              axisMask, timeList, isAbsolute);

  return 0;
}
