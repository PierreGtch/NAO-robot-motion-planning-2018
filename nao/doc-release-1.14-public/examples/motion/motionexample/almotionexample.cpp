/**
* @author Chris Kilner - ckilner@aldebaran-robotics.com
* Copyright (c) Aldebaran Robotics 2010 All Rights Reserved.
*/
#include "almotionexample.h"

#include <alvalue/alvalue.h>
#include <alcommon/albroker.h>
#include <alproxies/alrobotpostureproxy.h>
#include <alproxies/almotionproxy.h>
#include <qi/os.hpp>

#include <almath/types/alpose2d.h>
#include <almath/tools/aldubinscurve.h>
#include <almath/tools/almathio.h>
#include <almath/tools/altrigonometry.h>

#include <iostream>

/// <summary>Constructor.</summary>
/// <param name="broker">The broker.</param>
/// <param name="name">The name of the module.</param>
ALMotionExample::ALMotionExample(
    boost::shared_ptr<AL::ALBroker> broker,
    const std::string& name): AL::ALModule(broker, name)
{
  setModuleDescription("A collection of examples showing how to talk to the ALMotion module from c++.");

  functionName("cartesianArm1", "ALMotionExample", "Moves the left arm with Cartesian Control, to one position then back again.");
  BIND_METHOD(ALMotionExample::cartesianArm1);

  functionName("cartesianArm2", "ALMotionExample", "Moves the left arm with Cartesian Control, along a trajectory then back to the start.");
  BIND_METHOD(ALMotionExample::cartesianArm2);

  functionName("cartesianFoot", "ALMotionExample", "Lowers the Torso and moves to the side, then moves the Left Leg left.");
  BIND_METHOD(ALMotionExample::cartesianFoot);

  functionName("cartesianTorso1", "ALMotionExample", "Belly dancing: makes the torso follow a near circular path.");
  BIND_METHOD(ALMotionExample::cartesianTorso1);

  functionName("cartesianTorso2", "ALMotionExample", "Controls the position and orientation of the torso along a path.");
  BIND_METHOD(ALMotionExample::cartesianTorso2);

  functionName("cartesianTorsoArm1", "ALMotionExample", "Simultaneously controls three effectors : the Torso, the Left Arm and the Right Arm");
  BIND_METHOD(ALMotionExample::cartesianTorsoArm1);

  functionName("cartesianTorsoArm2", "ALMotionExample", "Moves the torso while keeping the arms fixed in nao space.");
  BIND_METHOD(ALMotionExample::cartesianTorsoArm2);

  functionName("collisionDetection", "ALMotionExample", "Collision detection: Nao bump on his torso and head with his arm.");
  addParam("pChainName",
    "The chain name: could be \"LArm\" or \"RArm\".");
  BIND_METHOD(ALMotionExample::collisionDetection);

  functionName("moveHand", "ALMotionExample", "Moves the hands using interpolation and the openHand and closeHand methods.");
  BIND_METHOD(ALMotionExample::moveHand);

  functionName("poseInit", "ALMotionExample", "Moves Nao to the init pose.");
  BIND_METHOD(ALMotionExample::poseInit);

  functionName("poseZero", "ALMotionExample", "Moves Nao to the zero pose, where all joints are at angle zero.");
  BIND_METHOD(ALMotionExample::poseZero);

  functionName("setFootStepDance", "ALMotionExample", "Small example to make Nao execute The Cha Cha Basic Steps for Men Using setFootStep API.");
  BIND_METHOD(ALMotionExample::setFootStepDance);

  functionName("stiffnessOff", "ALMotionExample", "Sets the stiffness to the minimum value.");
  BIND_METHOD(ALMotionExample::stiffnessOff);

  functionName("stiffnessOn", "ALMotionExample", "Sets the stiffness to the maximum value.");
  BIND_METHOD(ALMotionExample::stiffnessOn);

  functionName("walk", "ALMotionExample", "Walks using the setWalkTargetVelocity command and shows control of the arms.");
  BIND_METHOD(ALMotionExample::walk);

  functionName("walkCustomization", "ALMotionExample", "Walk: Small example to make Nao walk with gait customization. NAO is Keyser Soze.");
  BIND_METHOD(ALMotionExample::walkCustomization);

  functionName("walkFaster", "ALMotionExample", "Walk: Small example to make Nao walk Faster (Step of 8 cm)");
  BIND_METHOD(ALMotionExample::walkFaster);

  functionName("moveTo", "ALMotionExample", "Walks using the moveTo command and shows odometry.");
  BIND_METHOD(ALMotionExample::moveTo);

  functionName("walkToCustomization", "ALMotionExample", "Walk To: Small example to make Nao Walk To an Objective With customization.");
  BIND_METHOD(ALMotionExample::walkToCustomization);

  functionName("walkToDubinsCurve", "ALMotionExample", "Walk To: Small example to make Nao Walk follow a Dubins Curve.");
  BIND_METHOD(ALMotionExample::walkToDubinsCurve);

  functionName("wbEffectorControlHead", "ALMotionExample", "Whole body head orientation control.");
  BIND_METHOD(ALMotionExample::wbEffectorControlHead);

  functionName("wbEffectorControlLArm", "ALMotionExample", "Whole body left arm position control.");
  BIND_METHOD(ALMotionExample::wbEffectorControlLArm);

  functionName("wbEffectorControlRArm", "ALMotionExample", "Whole body right arm position control.");
  BIND_METHOD(ALMotionExample::wbEffectorControlRArm);

  functionName("wbEffectorControlConstraint", "ALMotionExample", "Whole Body balance control.");
  BIND_METHOD(ALMotionExample::wbEffectorControlConstraint);

  functionName("wbFootState", "ALMotionExample", "Whole body constraints to keep the feet on the plane, despite conflicting commands.");
  BIND_METHOD(ALMotionExample::wbFootState);

  functionName("wbKick", "ALMotionExample", "Example of a whole body kick");
  BIND_METHOD(ALMotionExample::wbKick);

  functionName("wbMultipleEffectors", "ALMotionExample", "Example of a whole body multiple effectors control \"LArm\", \"RArm\" and \"Torso\".");
  BIND_METHOD(ALMotionExample::wbMultipleEffectors);
}

/// <summary> Destructor. </summary>
ALMotionExample::~ALMotionExample() {}

void ALMotionExample::stiffnessOnPoseInit()
{
  stiffnessOn();
  poseInit();
}


/// <summary>
/// Cartesian arm 1.
/// Moves the left arm with Cartesian Control, to one position then back again.
/// </summary>
void ALMotionExample::cartesianArm1()
{
  // get a proxy to motion
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
  stiffnessOnPoseInit();

  // prepare the command
  const std::string effector = "LArm";

  // SPACES: FRAME_TORSO 0, FRAME_WORLD 1, FRAME_ROBOT 2
  // AXIS MASKS: X 1, Y 2, Z 4, WX 8, WY 16, WZ 32
  int  space      = 2;     // use space nao
  int  axisMask   = 7;     // just control position (X+Y+Z)
  bool isAbsolute = false; // a relative movement

  // Since we are in relative, the current position is zero
  // Here we are using the ALValue::array constuctor, as it
  // is easier to use than std::vector when adding multiple items
  AL::ALValue currentPos = AL::ALValue::array(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);

  // define the changes relative to the current position
  float dx  = 0.03f;  // translation axis X (meters)
  float dy  = 0.03f;  // translation axis Y (meters)
  float dz  = 0.00f;  // translation axis Z (meters)
  float dwx = 0.00f;  // rotation axis X (radians)
  float dwy = 0.00f;  // rotation axis Y (radians)
  float dwz = 0.00f;  // rotation axis Z (radians)
  AL::ALValue targetPos = AL::ALValue::array(dx, dy, dz, dwx, dwy, dwz);

  // make a trajectory by making an array containing the two positions
  // go to the target and back again
  AL::ALValue path = AL::ALValue::array(targetPos, currentPos);
  // times in seconds, exactly one time per target position in the trajectory
  AL::ALValue times = AL::ALValue::array(2.0f, 4.0f);

  proxy->positionInterpolation(
    effector, space, path, axisMask, times, isAbsolute);
}


/// <summary>
/// Cartesian arm 2.
/// Moves the left arm with Cartesian Control, along a trajectory then back to the start.
/// </summary>
void ALMotionExample::cartesianArm2()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
  stiffnessOnPoseInit();

  // SPACES: FRAME_TORSO 0, FRAME_WORLD 1, FRAME_ROBOT 2
  // AXIS MASKS: X 1, Y 2, Z 4, WX 8, WY 16, WZ 32
  std::string effector   = "LArm";
  int         space      = 2;      // use space nao
  int         axisMask   = 7;      // just control position
  bool        isAbsolute = false;  // relative movement

  AL::ALValue path = AL::ALValue::array(
    AL::ALValue::array(0.0f, -0.05f, +0.00f, 0.0f, 0.0f, 0.0f),   // Point 1
    AL::ALValue::array(0.0f, +0.00f, +0.04f, 0.0f, 0.0f, 0.0f),   // Point 2
    AL::ALValue::array(0.0f, +0.04f, +0.00f, 0.0f, 0.0f, 0.0f),   // Point 3
    AL::ALValue::array(0.0f, +0.00f, -0.02f, 0.0f, 0.0f, 0.0f),   // Point 4
    AL::ALValue::array(0.0f, -0.05f, +0.00f, 0.0f, 0.0f, 0.0f),   // Point 5
    AL::ALValue::array(0.0f, +0.00f, +0.00f, 0.0f, 0.0f, 0.0f));  // Point 6

  // time in seconds
  AL::ALValue times = AL::ALValue::array(0.5f, 1.0f, 2.0f, 3.0f, 4.0f, 4.5f);

  proxy->positionInterpolation(
    effector, space, path, axisMask, times, isAbsolute);
}


/// <summary> Cartesian foot.
/// Lowers the Torso and moves to the side, then moves the Left Leg left.
/// </summary>
void ALMotionExample::cartesianFoot()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
  stiffnessOnPoseInit();

  // SPACES: FRAME_TORSO 0, FRAME_WORLD 1, FRAME_ROBOT 2
  // AXIS MASKS: X 1, Y 2, Z 4, WX 8, WY 16, WZ 32
  std::string effector   = "Torso";
  int         space      = 2;      // use space nao
  int         axisMask   = 63;     // control all the effector's axes
  bool        isAbsolute = false;
  float       duration   = 2.0f;   // seconds

  // Lower the Torso and move to the side
  AL::ALValue path = AL::ALValue::array(
    0.0f, -0.07f, -0.03f, 0.0f, 0.0f, 0.0f);

  proxy->positionInterpolation(
    effector, space, path,
    axisMask, duration, isAbsolute);

  // LLeg motion to the left
  effector    = "LLeg";
  path        = AL::ALValue::array(0.0f, 0.06f, 0.0f, 0.0f, 0.0f, 0.8f);

  proxy->positionInterpolation(
    effector, space, path, axisMask, duration, isAbsolute);
}


/// <summary>
/// Cartesian torso 1.
/// Belly dancing: makes the torso follow a near circular path.
/// </summary>
void ALMotionExample::cartesianTorso1()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
  stiffnessOnPoseInit();

  std::string effector   = "Torso";
  int         space      = 1;       // World
  int         axisMask   = 63;      // Full control
  bool        isAbsolute = false;
  float       dx         = 0.045f;  // relative translation axis X (meters)
  float       dy         = 0.050f;  // relative translation axis Y (meters)

  AL::ALValue path = AL::ALValue::array(
    AL::ALValue::array(+dx,  0.0f, 0.0f, 0.0f, 0.0f, 0.0f),   // Point 1
    AL::ALValue::array(0.0f,  -dy, 0.0f, 0.0f, 0.0f, 0.0f),   // Point 2
    AL::ALValue::array(-dx,  0.0f, 0.0f, 0.0f, 0.0f, 0.0f),   // Point 3
    AL::ALValue::array(0.0f,  +dy, 0.0f, 0.0f, 0.0f, 0.0f),   // Point 4
    AL::ALValue::array(+dx,  0.0f, 0.0f, 0.0f, 0.0f, 0.0f),   // Point 5
    AL::ALValue::array(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f));  // Point 6

  // Times in seconds
  AL::ALValue times  = AL::ALValue::array(1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f);

  proxy->positionInterpolation(
    effector, space, path, axisMask, times, isAbsolute);
}


/// <summary>
/// Cartesain torso 2
/// Controls the position and orientation of the torso along a path.
/// </summary>
void ALMotionExample::cartesianTorso2()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
  stiffnessOnPoseInit();

  std::string effector   = "Torso";
  int         space      = 2;      // World
  int         axisMask   = 63;     // Full control
  bool        isAbsolute = false;
  float       dx         = 0.07f;  // relative translation axis X (meters)
  float       dy         = 0.07f;  // relative translation axis Y (meters)
  float       dwx        = 0.15f;  // relative rotation axis X (rads)
  float       dwy        = 0.15f;  // relative rotation axis Y (rads)

  AL::ALValue path = AL::ALValue::array(
    AL::ALValue::array(+dx, 0.0f, 0.0f,  0.0f, -dwy, 0.0f),     // Point 01
    AL::ALValue::array(0.0f, -dy, 0.0f, -dwx,  0.0f, 0.0f),     // Point 02
    AL::ALValue::array(-dx, 0.0f, 0.0f,  0.0f,  dwy, 0.0f),     // Point 03
    AL::ALValue::array(0.0f, +dy, 0.0f,  dwx,  0.0f, 0.0f),     // Point 04
    AL::ALValue::array(+dx, 0.0f, 0.0f,  0.0f, -dwy, 0.0f),     // Point 05
    AL::ALValue::array(0.0f, -dy, 0.0f, -dwx,  0.0f, 0.0f),     // Point 06
    AL::ALValue::array(-dx, 0.0f, 0.0f,  0.0f,  dwy, 0.0f),     // Point 07
    AL::ALValue::array(0.0f, +dy, 0.0f,  dwx,  0.0f, 0.0f),     // Point 08
    AL::ALValue::array(+dx, 0.0f, 0.0f,  0.0f, -dwy, 0.0f),     // Point 09
    AL::ALValue::array(0.0f, 0.0f, 0.0f,  0.0f,  0.0f, 0.0f));  // Point 10

  // Using a coefficient to stretch time if needed
  float coeff       = 0.4f;
  AL::ALValue times = AL::ALValue::array(
    01.0f*coeff,
    02.0f*coeff,
    03.0f*coeff,
    04.0f*coeff,
    05.0f*coeff,
    06.0f*coeff,
    07.0f*coeff,
    08.0f*coeff,
    09.0f*coeff,
    10.0f*coeff);  // seconds

  proxy->positionInterpolation(
    effector, space, path, axisMask, times, isAbsolute);
}


/// <summary> Cartesian torso arm 1.
/// Simultaneously controls three effectors :
/// the Torso, the Left Arm and the Right Arm
/// </summary>
void ALMotionExample::cartesianTorsoArm1()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
  stiffnessOnPoseInit();

  int   space       = 2;     // space nao
  int   axisMask    = 63;    // control all the effector axes
  bool  isAbsolute  = false;
  float coef        = 0.5f;  // the time per movement in seconds
  AL::ALValue times = AL::ALValue::array(
    coef, 2.0f * coef, 3.0f * coef, 4.0f * coef);

  // Relative movement between current and desired positions
  float dy         = +0.06f;  // translation axis Y (meters)
  float dz         = -0.03f;  // translation axis Z (meters)
  float dwx        = +0.30f;  // rotation axis X (radians)

  // Motion of Torso with post process
  std::string effector   = "Torso";
  AL::ALValue path       = AL::ALValue::array(
    AL::ALValue::array(0.0f,  -dy,    dz,  -dwx, 0.0f, 0.0f),   // Point 1
    AL::ALValue::array(0.0f, 0.0f,  0.0f,  0.0f, 0.0f, 0.0f),   // Point 2
    AL::ALValue::array(0.0f,  +dy,    dz,  +dwx, 0.0f, 0.0f),   // Point 3
    AL::ALValue::array(0.0f,  0.0f, 0.0f,  0.0f, 0.0f, 0.0f));  // Point 4

  proxy->post.positionInterpolation(
    effector, space, path,
    axisMask, times, isAbsolute);

  // Motion of the Arms one after the other
  axisMask = 7;  // control just the position
  dy = +0.03f;
  times = AL::ALValue::array(1.0f * coef, 2.0f * coef);  // seconds

  // Motion of Right Arm during the first half of the Torso motion
  effector = "RArm";
  path = AL::ALValue::array(
    AL::ALValue::array(0.0f,  -dy, 0.0f, 0.0f, 0.0f, 0.0f),   // Point 1
    AL::ALValue::array(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f));  // Point 2

  // blocking call to position interpolation
  proxy->positionInterpolation(effector, space, path,
    axisMask, times, isAbsolute);

  // Motion of Left Arm during the last half of the Torso motion
  effector   = "LArm";
  path       = AL::ALValue::array(
    AL::ALValue::array(0.0f,   dy, 0.0f, 0.0f, 0.0f, 0.0f),   // Point 1
    AL::ALValue::array(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f));  // Point 2

  // blocking call to position interpolation
  proxy->positionInterpolation(
    effector, space, path, axisMask, times, isAbsolute);
}


/// <summary>
/// Cartesian torso arm 2
/// Moves the torso while keeping the arms fixed in nao space
/// </summary>
void ALMotionExample::cartesianTorsoArm2()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
  stiffnessOnPoseInit();

  // Motion of Arms with block process
  std::vector<std::string> effectorNames;
  effectorNames.resize(2);
  effectorNames.at(0) = "LArm";
  effectorNames.at(1) = "RArm";

  int   space      = 2; // FRAME_ROBOT

  AL::ALValue pathList  = AL::ALValue::array(
        AL::ALValue::array(0.0, -0.04f, 0.0, 0.0, 0.0, 0.0),  // LArm
        AL::ALValue::array(0.0,  0.04f, 0.0, 0.0, 0.0, 0.0)); // RArm

  AL::ALValue axisMask = AL::ALValue::array(7, 7);  // control just the position for both effectors

  AL::ALValue timesList = AL::ALValue::array(
        AL::ALValue::array(1.0f),   // LArm in seconds
        AL::ALValue::array(1.0f));  // RArm in seconds

  bool  isAbsolute = false;

  proxy->positionInterpolations(
        effectorNames, space, pathList,
        axisMask, timesList, isAbsolute);

  // Motion of Arms and Torso with block process
  effectorNames.resize(3);
  effectorNames.at(0) = "LArm";
  effectorNames.at(1) = "RArm";
  effectorNames.at(2) = "Torso";


  pathList  = AL::ALValue::array(
        AL::ALValue::array(AL::ALValue::array(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f)), // LArm do not move
        AL::ALValue::array(AL::ALValue::array(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f)), // RArm do not move
        AL::ALValue::array(
          AL::ALValue::array( 0.0f,  0.04f, 0.0f, 0.0f, 0.0f, 0.0f),   // Torso point 1
          AL::ALValue::array(-0.03f,  0.0f, 0.0f, 0.0f, 0.0f, 0.0f),   // Torso point 2
          AL::ALValue::array( 0.0f, -0.04f, 0.0f, 0.0f, 0.0f, 0.0f),   // Torso point 3
          AL::ALValue::array( 0.0f,   0.0f, 0.0f, 0.0f, 0.0f, 0.0f))); // Torso point 4

  axisMask = AL::ALValue::array(
        7,   // LArm  control just the position
        7,   // RArm  control just the position
        63); // Torso control all axis


  timesList = AL::ALValue::array(
        AL::ALValue::array(4.0f),                    // LArm  in seconds
        AL::ALValue::array(4.0f),                    // RArm  in seconds
        AL::ALValue::array(1.0f, 2.0f, 3.0f, 4.0f)); // Torso in seconds

  proxy->positionInterpolations(
        effectorNames, space, pathList,
        axisMask, timesList, isAbsolute);

}


/// <summary>
/// Example showing the effect of collision detection
///  Nao bumps his chest with his left arm with collision detection enabled
///  or disabled.
/// </summary>
void ALMotionExample::collisionDetection(const std::string& pChainName)
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();

  if ((pChainName != "LArm") && (pChainName != "RArm"))
  {
    std::cout << "ERROR: chainName is unknown" << std::endl;
    std::cout << "Must be LArm or RArm" << std::endl;
    return;
  }

  ////////////////////
  // Initialization //
  ////////////////////

  // Set NAO in stiffness On and Pose Init
  stiffnessOnPoseInit();

  // Get the robot configuration.
  AL::ALValue robotConfig = proxy->getRobotConfig();
  std::string pRobotName = (std::string) robotConfig[1][0];

  /////////////////////////////////
  // Arm motion bumping on torso //
  /////////////////////////////////

  // Disable collision detection on chainName.
  bool pEnable = false;
  bool success = proxy->setCollisionProtectionEnabled(pChainName, pEnable);
  if (!success)
  {
    std::cout << "Failed to disable collision protection" << std::endl;
  }
  qi::os::msleep(1000);

  // Make NAO's arm move so that it bumps its torso.
  std::string pTargetName = "Torso";

  xMoveArm(pTargetName, pRobotName, pChainName);
  qi::os::msleep(1000);

  // Go back to pose init.
  poseInit();

  // Enable collision detection on chainName.
  pEnable = true;
  success = proxy->setCollisionProtectionEnabled(pChainName, pEnable);
  if (!success)
  {
    std::cout << "Failed to enable collision protection" << std::endl;
  }
  qi::os::msleep(1000);

  // Make NAO's arm move and see that it does not bump on the torso.
  pTargetName = "Torso";
  xMoveArm(pTargetName, pRobotName, pChainName);
  qi::os::msleep(1000);

  // Go back to pose init.
  poseInit();

  ////////////////////////////////
  // Arm motion bumping on head //
  ////////////////////////////////

  // Disable collision detection on chainName.
  pEnable = false;
  success = proxy->setCollisionProtectionEnabled(pChainName, pEnable);
  if (!success)
  {
    std::cout << "Failed to disable collision protection" << std::endl;
  }
  qi::os::msleep(1000);

  // Make NAO's arm move so that it bumps its head.
  pTargetName = "Head";
  xMoveArm(pTargetName, pRobotName, pChainName);

  qi::os::msleep(1000);
  // Go back to pose init.
  poseInit();
  // Enable collision detection on chainName.
  pEnable = true;
  success = proxy->setCollisionProtectionEnabled(pChainName, pEnable);
  if (!success)
  {
    std::cout << "Failed to enable collision protection" << std::endl;
  }
  // Make NAO's arm move and see that it does not bump on the head.
  pTargetName = "Head";
  xMoveArm(pTargetName, pRobotName, pChainName);

  qi::os::msleep(1000);
  // Go back to pose init.
  poseInit();
}


void ALMotionExample::xMoveArm(
  const std::string& pTargetName,
  const std::string& pRobotName,
  const std::string& pChainName)
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();

  // Function to make NAO bump on his torso with his arm '''

  // Set the fraction of max speed for the arm movement.
  float pMaxSpeedFraction = 0.5f;

  // Define the final position.
  float ShoulderPitchAngle = 0.0f;
  if (pTargetName == "Torso")
  {
    ShoulderPitchAngle = 50.0f * AL::Math::TO_RAD;
  }
  else if (pTargetName == "Head")
  {
    ShoulderPitchAngle = -50.0f * AL::Math::TO_RAD;
  }
  else
  {
    std::cout << "ERROR: target is unknown" << std::endl;
    std::cout << "Must be Torso or Head" << std::endl;
    std::cout << "---------------------" << std::endl;
    return;
  }

  float ShoulderRollAngle  =    6.0f * AL::Math::TO_RAD;
  float ElbowYawAngle      =    0.0f * AL::Math::TO_RAD;
  float ElbowRollAngle     = -150.0f * AL::Math::TO_RAD;

  AL::ALValue pTargetAngles;

  if (pChainName == "LArm")
  {
    pTargetAngles.arrayPush(ShoulderPitchAngle);
    pTargetAngles.arrayPush(+ShoulderRollAngle);
    pTargetAngles.arrayPush(+ElbowYawAngle);
    pTargetAngles.arrayPush(+ElbowRollAngle);
  }
  else if (pChainName == "RArm")
  {
    pTargetAngles.arrayPush(ShoulderPitchAngle);
    pTargetAngles.arrayPush(-ShoulderRollAngle);
    pTargetAngles.arrayPush(-ElbowYawAngle);
    pTargetAngles.arrayPush(-ElbowRollAngle);
  }
  else
  {
    std::cout << "ERROR: chainName is unknown" << std::endl;
    std::cout << "Must be LArm or RArm" << std::endl;
    std::cout << "---------------------" << std::endl;
    return;
  }

  // Set the target angles according to the robot version.
  if (
      (pRobotName == "naoH25") ||
      (pRobotName == "naoAcademics") ||
      (pRobotName == "naoT14"))
  {
    pTargetAngles.arrayPush(0.0f);
    pTargetAngles.arrayPush(0.0f);
  }
  else if (
           (pRobotName == "naoH21") ||
           (pRobotName == "naoRobocup")
           )
  {
    // Do nothing
  }
  else if (pRobotName == "naoT2")
  {
    return;
  }
  else
  {
    std::cout << "ERROR: Your robot is unknown" << std::endl;
    std::cout << "This test is not available for your Robot" << std::endl;
    std::cout << "---------------------" << std::endl;
    return;
  }

  // Move the arm to the final position.
  proxy->angleInterpolationWithSpeed(pChainName, pTargetAngles, pMaxSpeedFraction);
}


/// <summary> Move hand. </summary>
void ALMotionExample::moveHand()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();

  //bool MOVE_HAND_BY_INTERPOLATION = true;
  bool MOVE_HAND_BY_INTERPOLATION = false;

  // Get the Type of Nao
  AL::ALValue robotConfig = proxy->getRobotConfig();
  bool robotHasHands = (bool) robotConfig[1][7];

  if (!robotHasHands)
  {
    std::cout << "ERROR : Your robot doesn't have Hands" << std::endl;
    std::cout << "This test is not availbale for your Robot" << std::endl;
    return;  // no hands
  }

  if (MOVE_HAND_BY_INTERPOLATION)
  {
    // control of the hands using interpolation
    std::string handName   = "LHand";
    float stiffness        = 1.0f;  // max stiffness
    float time             = 1.0f;  // seconds
    float maxSpeedFraction = 0.5f;  // half of max speed

    // turn stiffness on for the LHand
    proxy->stiffnessInterpolation(handName, stiffness, time);
    // interpolate to an "angle" of 1.0
    // the hands use the same API as other joints, but the angle
    // of 1.0 doesn't correspond to a real angle. It means
    // fully open.
    proxy->angleInterpolationWithSpeed(handName, 1.0, maxSpeedFraction);
    // interpolate to an "angle" of 0.0
    proxy->angleInterpolationWithSpeed(handName, 0.0, maxSpeedFraction);
    // at this point, stiffness is still on. It is usally good practice
    // to reducte the stiffness for the hands as it isn't required to
    // maintain the closed position
  }
  else
  {
    // NOTE that open and close Hand methods put Stiffness to 0.0
    // after execution.

    // Close hands
    std::string handName = "RHand";
    proxy->closeHand(handName);
    handName = "LHand";
    proxy->closeHand(handName);

    qi::os::msleep(2000);

    // Open hands
    handName = "RHand";
    proxy->openHand(handName);
    handName = "LHand";
    proxy->openHand(handName);

    qi::os::msleep(2000);

    // Close hands
    handName = "RHand";
    proxy->closeHand(handName);
    handName = "LHand";
    proxy->closeHand(handName);
  }
}

/// <summary> Moves Nao to the init pose. </summary>
void ALMotionExample::poseInit()
{
  boost::shared_ptr<AL::ALRobotPostureProxy> proxy =
      getParentBroker()->getSpecialisedProxy<AL::ALRobotPostureProxy>("ALRobotPosture");

  std::string posture = "StandInit";
  const float maxSpeedFraction = 0.2f;

  proxy->applyPosture(posture, maxSpeedFraction);
}

/// <summary>
/// Moves Nao to the zero pose, where all joints are at angle zero
/// </summary>
void ALMotionExample::poseZero()
{
  boost::shared_ptr<AL::ALRobotPostureProxy> proxy =
      getParentBroker()->getSpecialisedProxy<AL::ALRobotPostureProxy>("ALRobotPosture");

  std::string posture = "StandZero";
  const float maxSpeedFraction = 0.3f;

  proxy->applyPosture(posture, maxSpeedFraction);
}

/// <summary>
/// Small example to make Nao execute
/// The Cha Cha Basic Steps for Men
/// Using setFootStep API
/// http://www.dancing4beginners.com/cha-cha-steps.htm
/// </summary>
void ALMotionExample::setFootStepDance()
{
    boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
    stiffnessOnPoseInit();

    ///////////////////////////////
    // First we defined each step
    ///////////////////////////////
    std::vector<std::vector<std::string> > legNameList;
    std::vector<std::string> llegName;
    llegName.push_back("LLeg");
    std::vector<std::string> rlegName;
    rlegName.push_back("RLeg");

    std::vector<AL::ALValue> footStepsList;

    // 1) Step forward with your left foot
    legNameList.push_back(llegName);
    footStepsList.push_back(AL::ALValue::array(AL::ALValue::array(0.06, 0.1, 0.0)));

    // 2) Sidestep to the left with your left foot
    legNameList.push_back(llegName);
    footStepsList.push_back(AL::ALValue::array(AL::ALValue::array(0.00f, 0.16f, 0.0f)));

    // 3) Move your right foot to your left foot
    legNameList.push_back(rlegName);
    footStepsList.push_back(AL::ALValue::array(AL::ALValue::array(0.00f, -0.1f, 0.0f)));

    // 4) Sidestep to the left with your left foot
    legNameList.push_back(llegName);
    footStepsList.push_back(AL::ALValue::array(AL::ALValue::array(0.00f, 0.16f, 0.0f)));

    // 5) Step backward & left with your right foot
    legNameList.push_back(rlegName);
    footStepsList.push_back(AL::ALValue::array(AL::ALValue::array(-0.04f, -0.1f, 0.0f)));

    // 6)Step forward & right with your right foot
    legNameList.push_back(rlegName);
    footStepsList.push_back(AL::ALValue::array(AL::ALValue::array(0.00f, -0.16f, 0.0f)));

    // 7) Move your left foot to your right foot
    legNameList.push_back(llegName);
    footStepsList.push_back(AL::ALValue::array(AL::ALValue::array(0.00f, 0.1f, 0.0f)));

    // 8) Sidestep to the right with your right foot
    legNameList.push_back(rlegName);
    footStepsList.push_back(AL::ALValue::array(AL::ALValue::array(0.00f, -0.16f, 0.0f)));

    std::vector<float> stepFrequency;
    stepFrequency.push_back(0.8f);
    bool clearExisting = false;
    ///////////////////////////////
    // Send Foot step
    ///////////////////////////////
    unsigned int nbStepDance = 2; // defined the number of cycle to make

    for (unsigned int j=0; j<nbStepDance; j++)
    {
      for (unsigned int i=0; i<footStepsList.size(); i++)
      {
        proxy->setFootStepsWithSpeed(
              legNameList.at(i),
              footStepsList.at(i),
              stepFrequency,
              clearExisting);
      }
    }
}


/// <summary> Sets the stiffness to the minimum value. </summary>
void ALMotionExample::stiffnessOff()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();

  // We use the "Body" name to signify the collection of all joints
  const std::string names = "Body";
  float stiffnessLists = 0.0f;
  float timeLists      = 1.0f;

  // the interpolation command will assume that the same value is desired
  // for all joints in the collection "Body"
  proxy->stiffnessInterpolation(names, stiffnessLists, timeLists);

  // print motion state
  std::cout << proxy->getSummary() << std::endl;
}

/// <summary> Sets the stiffness to the maximum value. </summary>
void ALMotionExample::stiffnessOn()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();

  // We use the "Body" name to signify the collection of all joints
  const std::string names = "Body";
  float stiffnessLists = 1.0f;
  float timeLists      = 1.0f;

  // the interpolation command will assume that the same value is desired
  // for all joints in the collection "Body"
  proxy->stiffnessInterpolation(names, stiffnessLists, timeLists);

  // print motion state
  std::cout << proxy->getSummary() << std::endl;
}

/// <summary> Walks using the setWalkTargetVelocity command and shows control of the arms. </summary>
void ALMotionExample::walk()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();

  // Set Nao to stiffness On, no need to do poseInit, as walk will
  // do this for us.
  stiffnessOn();

  // Enable arm control by Walk algorithm
  proxy->setWalkArmsEnabled(true, true);
  // or disable
  // proxy->setWalkArmsEnabled(false, false)

  // Enable FOOT CONTACT PROTECTION
  proxy->setMotionConfig(AL::ALValue::array(
    AL::ALValue::array(
      "ENABLE_FOOT_CONTACT_PROTECTION", true)));
  // or disable
  // proxy->setMotionConfig([["ENABLE_FOOT_CONTACT_PROTECTION", false]])

  // set the target velocity (backwards)
  float x         = -0.5f;
  float y         =  0.0f;
  float theta     =  0.0f;
  float frequency =  0.0f;  // low speed
  proxy->setWalkTargetVelocity(x, y, theta, frequency);
  qi::os::msleep(4000);

  // set the target velocity (forwards)
  x         = 0.8f;
  y         = 0.0f;
  theta     = 0.0f;
  frequency = 1.0f;  // Max speed
  proxy->setWalkTargetVelocity(x, y, theta, frequency);
  qi::os::msleep(4000);

  // set the target velocity (forwards, right, turn)
  x         =  0.2f;
  y         = -0.5f;
  theta     =  0.2f;
  frequency =  1.0f;
  proxy->setWalkTargetVelocity(x, y, theta, frequency);
  qi::os::msleep(2000);

  // Now, we will show how to control the arms while
  // walkking.
  //
  // First, deactivate the automatic left arm motion
  proxy->setWalkArmsEnabled(false, true);

  // Prepare a trajectory for the joints of the left arm
  AL::ALValue jointNames = AL::ALValue::array(
    "LShoulderPitch", "LShoulderRoll", "LElbowYaw", "LElbowRoll");
  AL::ALValue arm1 = AL::ALValue::array(
        -40.0f * AL::Math::TO_RAD,  // "LShoulderPitch"
        +25.0f * AL::Math::TO_RAD,  // "LShoulderRoll"
        +00.0f * AL::Math::TO_RAD,  // "LElbowYaw"
        -40.0f * AL::Math::TO_RAD); // "LElbowRoll"
  AL::ALValue arm2 = AL::ALValue::array(
        -40.0f * AL::Math::TO_RAD,  // "LShoulderPitch"
        +50.0f * AL::Math::TO_RAD,  // "LShoulderRoll"
        +00.0f * AL::Math::TO_RAD,  // "LElbowYaw"
        -80.0f * AL::Math::TO_RAD); // "LElbowRoll"

  // Blocking interpolations using a fraction of max speed
  // These can be stacked up one after the other.
  proxy->angleInterpolationWithSpeed(jointNames, arm1, 0.6f);
  proxy->angleInterpolationWithSpeed(jointNames, arm2, 0.6f);
  proxy->angleInterpolationWithSpeed(jointNames, arm1, 0.6f);

  // reactivate the left arm
  proxy->setWalkArmsEnabled(true, true);

  qi::os::msleep(2000);

  // End Walk by setting a target velocity of zero
  x = 0.0f;
  y = 0.0f;
  theta = 0.0f;
  proxy->setWalkTargetVelocity(x, y, theta, frequency);
}


/// <summary>
/// Walk: Small example to make Nao walk
/// with gait customization
/// NAO is Keyser Soze
/// </summary>
void ALMotionExample::walkCustomization()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();

  // Set Nao to stiffness On, no need to do poseInit, as walk will
  // do this for us.
  stiffnessOnPoseInit();

  // set the target velocity (backwards)
  float x         = 1.0f;
  float y         = 0.0f;
  float theta     = 0.0f;
  float frequency = 1.0f;

  proxy->setWalkTargetVelocity(x, y, theta, frequency,
                               AL::ALValue::array( // LEFT FOOT
                                                  AL::ALValue::array("StepHeight", 0.02f),
                                                  AL::ALValue::array("TorsoWy", 5.0f*AL::Math::TO_RAD)),
                               AL::ALValue::array( // RIGHT FOOT
                                                  AL::ALValue::array("StepHeight", 0.005f),
                                                  AL::ALValue::array("MaxStepX", 0.001f),
                                                  AL::ALValue::array("MaxStepFrequency", 0.0f),
                                                  AL::ALValue::array("TorsoWx", -7.0f*AL::Math::TO_RAD),
                                                  AL::ALValue::array("TorsoWy", 5.0f*AL::Math::TO_RAD)));

  qi::os::msleep(3000);

  proxy->setWalkTargetVelocity(x, y, theta, frequency);
  qi::os::msleep(3000);

  // stop walk in the next double support
  proxy->stopMove();
}


/// <summary>
/// Walk: Small example to make Nao walk
///       Faster (Step of 6 cm)
/// </summary>
void ALMotionExample::walkFaster()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();

  // Set Nao to stiffness On, no need to do poseInit, as walk will
  // do this for us.
  stiffnessOnPoseInit();

  // Initialize the move process.
  // Check the robot pose and take a right posture.
  // This is blocking called.
  proxy->moveInit();

  // set the target velocity (backwards)
  float x         = 1.0f;
  float y         = 0.0f;
  float theta     = 0.0f;
  float frequency = 1.0f;

  // Default walk (MaxStepX = 0.04 m)
  proxy->setWalkTargetVelocity(x, y, theta, frequency);
  qi::os::msleep(3000);
  std::cout << "walk speed x: " << proxy->getRobotVelocity()[0] << " m/s" << std::endl;

  // Speed walk (MaxStepX = 0.06 m)
  // Could be faster: see walk documentation
  proxy->setWalkTargetVelocity(x, y, theta, frequency,
                               AL::ALValue::array(AL::ALValue::array("MaxStepX", 0.06f)));
  qi::os::msleep(4000);
  std::cout << "walk speed x: " << proxy->getRobotVelocity()[0] << " m/s" << std::endl;

  // stop walk in the next double support
  proxy->stopMove();
}


/// <summary> Walks using the moveTo command and shows odometry. </summary>
void ALMotionExample::moveTo()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();

  // Set NAO to stiffness On
  stiffnessOn();

  //// Enable arms control by Walk algorithm
  proxy->setWalkArmsEnabled(true, true);
  // or disable
  // proxy->setWalkArmsEnabled(false, false)

  // Enable foor contact protection
  proxy->setMotionConfig(AL::ALValue::array(
    AL::ALValue::array("ENABLE_FOOT_CONTACT_PROTECTION", true)));
  // or disable
  //  proxy->setMotionConfig(AL::ALValue::array(
  //    AL::ALValue::array("ENABLE_FOOT_CONTACT_PROTECTION", false)));

  // store Nao's position before the walk
  std::vector<float>  before = proxy->getRobotPosition(false);
  float x, y, theta;

  x     = 0.3f;
  y     = 0.1f;
  theta = AL::Math::PI/2.0f;
  proxy->moveTo(x, y, theta);
  proxy->waitUntilMoveIsFinished();

  // store Nao's position after the walk
  std::vector<float> after = proxy->getRobotPosition(false);

  // compute Nao's displacement
  std::vector<float> change;
  change.resize(3);
  change[0] =
    + (after[0] - before[0]) * cosf(before[2])
    + (after[1] - before[1]) * sinf(after[2]);

  change[1] =
    - (after[0] - before[0]) * sinf(before[2])
    + (after[1] - before[1]) * cosf(before[2]);

  change[2] = (after[2] - before[2]);

  std::cout << "Nao before x: " << before[0] << " , y: "
    << before[1] << " , theta:" << before[2] << std::endl;
  std::cout << "Nao after  x: " << after[0] << " , y: "
    << after[1] << " , theta:" << after[2] << std::endl;
  std::cout << "Nao change x: " << change[0] << " , y: "
    << change[1] << " , theta:" << change[2] << std::endl;
}


/// <summary>
/// Walk To: Small example to make Nao Walk To an Objective
///          With customization
/// </summary>
void ALMotionExample::walkToCustomization()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();

  // Set Nao to stiffness On, no need to do poseInit, as walk will
  // do this for us.
  stiffnessOn();

  float x     = 0.2f;
  float y     = 0.0f;
  float theta = 0.0f;

  // This example show customization for the both foot
  // with all the possible gait parameters
  proxy->moveTo(x, y, theta, AL::ALValue::array(
                  AL::ALValue::array("MaxStepX", 0.02f),         // step of 2 cm in front
                  AL::ALValue::array("MaxStepY", 0.16f),         // default value
                  AL::ALValue::array("MaxStepTheta", 0.4f),      // default value
                  AL::ALValue::array("MaxStepFrequency", 0.0f),  // low frequency
                  AL::ALValue::array("StepHeight", 0.01f),       // step height of 1 cm
                  AL::ALValue::array("TorsoWx", 0.0f),           // default value
                  AL::ALValue::array("TorsoWy", 0.1f)));         // torso bend 0.1 rad in front

  // This example show customization for the both foot
  // with just one gait parameter, in this case, the other
  // parameters are set to the default value
  proxy->moveTo(x, y, theta, AL::ALValue::array(
                  AL::ALValue::array("StepHeight", 0.04f))); // step height of 4 cm
}


/// <summary>
/// Walk To: Small example to make Nao Walk follow
///          a Dubins Curve
/// </summary>
void ALMotionExample::walkToDubinsCurve()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();

  // Set Nao to stiffness On
  //stiffnessOn();
  stiffnessOnPoseInit();

  // first we defined the goal
  AL::Math::Pose2D goal = AL::Math::Pose2D(0.0f , -0.4f, 0.0f);

  // We get the dubins solution (control points) by
  // calling an almath function
  float circleRadius = 0.04f;

  // Warning : the circle warning use by dubins curve
  //           have to be 4*CircleRadius < norm(goal)
  std::vector<AL::Math::Pose2D> dubinsSolution = AL::Math::getDubinsSolutions(goal, circleRadius);

  // create a vector of moveTo with dubins Control Points
  AL::ALValue walkToTargets;
  for (unsigned int i=0; i<dubinsSolution.size(); i++)
  {
    walkToTargets.arrayPush(
          AL::ALValue::array(
            dubinsSolution.at(i).x,
            dubinsSolution.at(i).y,
            dubinsSolution.at(i).theta));
  }

  // Initialized the Walk process and be sure the robot is ready to walk
  // without this call, the first getRobotPosition() will not refer to the position
  // of the robot before the walk process
  proxy->moveInit();

  // get robot position before move
  AL::Math::Pose2D robotPositionBeforeCommand = AL::Math::Pose2D(proxy->getRobotPosition(false));

  proxy->moveTo(walkToTargets);

  // With MoveTo control Points, it's also possible to customize the gait parameters
  // proxy->moveTo(
  //       walkToTargets, AL::ALValue::array(
  //         AL::ALValue::array("StepHeight", 0.001f),
  //         AL::ALValue::array("MaxStepX", 0.06f),
  //         AL::ALValue::array("MaxStepFrequency", 1.0f)));

  // get robot position after move
  AL::Math::Pose2D robotPositionAfterCommand = AL::Math::Pose2D(proxy->getRobotPosition(false));

  // compute and print the robot motion
  AL::Math::Pose2D robotMoveCommand =
      AL::Math::pose2DInverse(robotPositionBeforeCommand)*
      robotPositionAfterCommand;
  std::cout << "The Robot Move Command: " << robotMoveCommand << std::endl;

}


/// <summary>
/// Whole Body effector control head.
/// Example of a whole body head orientation control
/// </summary>
void ALMotionExample::wbEffectorControlHead()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
  stiffnessOnPoseInit();

  std::string effectorName = "Head";

  // Active Head tracking.
  bool isEnabled    = true;
  proxy->wbEnableEffectorControl(effectorName, isEnabled);

  // Example showing how to set orientation target for Head tracking.
  // The 3 coordinates are absolute head orientation in NAO_SPACE.
  // Rotations in radians around x, y and z axis.

  // WX Axis Head Orientation feasible movement = [-20.0, +20.0] degrees
  // WY Axis Head Orientation feasible movement = [-75.0, +70.0] degrees
  // WZ Axis Head Orientation feasible movement = [-30.0, +30.0] degrees
  AL::ALValue targetCoordinateList = AL::ALValue::array(
    AL::ALValue::array(+20.0f * AL::Math::TO_RAD,  00.0f                   ,  00.0f                   ),   // target 0
    AL::ALValue::array(-20.0f * AL::Math::TO_RAD,  00.0f                   ,  00.0f                   ),   // target 1
    AL::ALValue::array( 00.0f                   , +70.0f * AL::Math::TO_RAD,  00.0f                   ),   // target 2
    AL::ALValue::array( 00.0f                   , +70.0f * AL::Math::TO_RAD, +30.0f * AL::Math::TO_RAD),   // target 3
    AL::ALValue::array( 00.0f                   , +70.0f * AL::Math::TO_RAD, -30.0f * AL::Math::TO_RAD),   // target 4
    AL::ALValue::array( 00.0f                   , -75.0f * AL::Math::TO_RAD,  00.0f                   ),   // target 5
    AL::ALValue::array( 00.0f                   , -75.0f * AL::Math::TO_RAD, +30.0f * AL::Math::TO_RAD),   // target 6
    AL::ALValue::array( 00.0f                   , -75.0f * AL::Math::TO_RAD, -30.0f * AL::Math::TO_RAD),   // target 7
    AL::ALValue::array( 00.0f                   ,  00.0f                   ,  00.0f                   ));  // target 8

  // loop along the orientation trajectory
  for(unsigned int i = 0; i < targetCoordinateList.getSize(); ++i) {
    // send the command
    proxy->wbSetEffectorControl(effectorName, targetCoordinateList[i]);
    // wbSetEffectorControl is a non blocking function, so
    // sleep to allow the head to go to its target.
    // The recommended minimum period between two successives set commands is 0.2 s.
    qi::os::msleep(3000);
  }

  // Disactivate effector control for the Head
  isEnabled = false;
  proxy->wbEnableEffectorControl(effectorName, isEnabled);
}

/// <summary> Whole Body effector control Left arm. </summary>
void ALMotionExample::wbEffectorControlLArm()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
  stiffnessOnPoseInit();

  std::string effectorName = "LArm";
  int         space        = 2;      // space nao
  bool        useSensors   = false;  // get the "command" position

  std::vector<float> effectorInit = proxy->getPosition(effectorName, space, useSensors);

  // Activate effector control for the Left Arm
  bool isEnabled = true;
  proxy->wbEnableEffectorControl(effectorName, isEnabled);

  // Example showing how to set position target for LArm.
  // The 3 coordinates are absolute LArm position in NAO_SPACE.
  // Positions are in meters along the x, y and z axis.
  // X Axis LArm Position feasible movement = [ +0.00, +0.12] meters
  // Y Axis LArm Position feasible movement = [ -0.05, +0.10] meters
  // Z Axis LArm Position feasible movement = [ -0.10, +0.10] meters

  // start with relative coordinates
  AL::ALValue targetCoordinateList = AL::ALValue::array(
    AL::ALValue::array(0.12f, +0.00f, +0.00f),   // target 0
    AL::ALValue::array(0.12f, +0.00f, -0.10f),   // target 1
    AL::ALValue::array(0.12f, +0.05f, -0.10f),   // target 1
    AL::ALValue::array(0.12f, +0.05f, +0.10f),   // target 2
    AL::ALValue::array(0.12f, -0.10f, +0.10f),   // target 3
    AL::ALValue::array(0.12f, -0.10f, -0.10f),   // target 4
    AL::ALValue::array(0.12f, +0.00f, -0.10f),   // target 5
    AL::ALValue::array(0.12f, +0.00f, +0.00f),   // target 6
    AL::ALValue::array(0.00f, +0.00f, +0.00f));  // target 7

  for (unsigned int i = 0; i < targetCoordinateList.getSize(); ++i) {
    // loop around the x, y, z
    for (int c = 0; c < 3; c++) {
      // make the cordinates absolute by adding to the init position
      targetCoordinateList[i][c] = (float)targetCoordinateList[i][c] + effectorInit[c];
    }

    // wbSetEffectorControl is a non blocking function
    proxy->wbSetEffectorControl(effectorName, targetCoordinateList[i]);
    // sleep to allow LArm to go to its target.
    // The recommended minimum period between two successives set commands is 0.2 s.
    qi::os::msleep(4000);
  }

  // Disactivate effector control.
  isEnabled = false;
  proxy->wbEnableEffectorControl(effectorName, isEnabled);
}

/// <summary> Whole Body effector control Right arm. </summary>
void ALMotionExample::wbEffectorControlRArm()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
  stiffnessOnPoseInit();

  const std::string effectorName = "RArm";
  int               space        = 2;      // space nao
  bool              useSensor    = false;  // Use the "command" position

  std::vector<float> effectorInit = proxy->getPosition(effectorName, space, useSensor);

  // Active RArm tracking.
  bool isEnabled    = true;
  proxy->wbEnableEffectorControl(effectorName, isEnabled);

  // Example showing how to set position target for RArm.
  // The 3 coordinates are absolute RArm position in NAO_SPACE.
  // Positions are in meters along the x, y and z axis.
  // X Axis RArm Position feasible movement = [ +0.00, +0.12] meters
  // Y Axis RArm Position feasible movement = [ -0.10, +0.05] meters
  // Z Axis RArm Position feasible movement = [ -0.10, +0.10] meters

  // start with relative coordinates
  AL::ALValue targetCoordinateList = AL::ALValue::array(
    AL::ALValue::array(0.12f, +0.00f, +0.00f),   // target 0
    AL::ALValue::array(0.12f, +0.00f, -0.10f),   // target 1
    AL::ALValue::array(0.12f, -0.05f, -0.10f),   // target 1
    AL::ALValue::array(0.12f, -0.05f, +0.10f),   // target 2
    AL::ALValue::array(0.12f, +0.10f, +0.10f),   // target 3
    AL::ALValue::array(0.12f, +0.10f, -0.10f),   // target 4
    AL::ALValue::array(0.12f, +0.00f, -0.10f),   // target 5
    AL::ALValue::array(0.12f, +0.00f, +0.00f),   // target 6
    AL::ALValue::array(0.00f, +0.00f, +0.00f));  // target 7

  for (unsigned int i = 0; i < targetCoordinateList.getSize(); ++i)
  {
    // loop around the x, y, z
    for (unsigned int c = 0; c < 3; c++)
    {
      // make the cordinates absolute by adding to the init position
      targetCoordinateList[i][c] = (float)targetCoordinateList[i][c] + effectorInit[c];
    }

    // wbSetEffectorControl is a non blocking function
    proxy->wbSetEffectorControl(effectorName, targetCoordinateList[i]);
    // sleep to allow LArm to go to its target.
    // The recommended minimum period between two successives set commands is 0.2 s.
    qi::os::msleep(4000);
  }

  // Disactivate effector control;
  isEnabled = false;
  proxy->wbEnableEffectorControl(effectorName, isEnabled);
}

/// <summary>
/// Whole Body effector control constraint.
/// Balance Constraints
/// </summary>
void ALMotionExample::wbEffectorControlConstraint()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
  stiffnessOnPoseInit();

  // Activate Whole Body Balancer.
  bool isEnabled  = true;
  proxy->wbEnable(isEnabled);

  // Legs are constrained in position
  std::string stateName  = "Fixed";  // Fixed position
  std::string supportLeg = "Legs";   // Both Legs
  proxy->wbFootState(stateName, supportLeg);

  // Add a blance constraint. This will keep the center of mass
  // within the support polygon
  proxy->wbEnableBalanceConstraint(isEnabled, supportLeg);

  // Now, cause some problems by doing a jointspace interpolation
  // of the knees, bending them to 40 degrees. Without the
  // constraints added above, Nao would fall down.
  AL::ALValue names      = AL::ALValue::array("LKneePitch", "RKneePitch");
  AL::ALValue angleLists = AL::ALValue::array(
    AL::ALValue::array(0.0f, 40.0f * AL::Math::TO_RAD),   // LKneePitch trajectory
    AL::ALValue::array(0.0f, 40.0f * AL::Math::TO_RAD));  // RKneePitch trajectory

  AL::ALValue timeLists  = AL::ALValue::array(
    AL::ALValue::array(5.0f, 10.0f),   // LKneePitch times
    AL::ALValue::array(5.0f, 10.0f));  // RKneePitch times

  bool isAbsolute = true;  // absolute knee angles
  proxy->angleInterpolation(names, angleLists, timeLists, isAbsolute);

  // Disactivate Whole Body Balancer
  isEnabled  = false;
  proxy->wbEnable(isEnabled);
}

/// <summary>
/// Whole body constraints to keep the feet on the plane,
/// despite conflicting commands.
/// </summary>
void ALMotionExample::wbFootState()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
  stiffnessOnPoseInit();

  // Activate Whole Body Balancer
  bool isEnabled  = true;
  proxy->wbEnable(isEnabled);

  // Add a constraint to the legs, that allows no vertical movement
  // and keeps the orientation of the feet flat.
  std::string stateName  = "Plane";  // on the plane
  std::string supportLeg = "Legs";   // both legs
  proxy->wbFootState(stateName, supportLeg);

  // Now, cause some problems by starting a HipYawPitch angleInterpolation
  // This twists the legs drastically. Without the constraints added above
  // Nao would fall down.
  AL::ALValue names = "LHipYawPitch";
  AL::ALValue angleLists = AL::ALValue::array(
        -45.0f * AL::Math::TO_RAD,
        +10.0f * AL::Math::TO_RAD,
        +00.0f * AL::Math::TO_RAD);

  AL::ALValue timeLists  = AL::ALValue::array(3.0f, 6.0f, 9.0f);
  bool isAbsolute = true;  // absolute angles
  proxy->angleInterpolation(names, angleLists, timeLists, isAbsolute);

  // Disactivate Whole Body Balancer
  isEnabled  = false;
  proxy->wbEnable(isEnabled);
}


/// <summary>
/// Example of a whole body kick
/// </summary>
void ALMotionExample::wbKick()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
  stiffnessOnPoseInit();

  // Activate Whole Body Balancer.
  bool isEnabled  = true;
  proxy->wbEnable(isEnabled);

  // Legs are constrained fixed
  std::string stateName  = "Fixed";
  std::string supportLeg = "Legs";
  proxy->wbFootState(stateName, supportLeg);

  // Constraint Balance Motion
  bool isEnable   = true;
  supportLeg = "Legs";
  proxy->wbEnableBalanceConstraint(isEnable, supportLeg);

  // Com go to LLeg
  supportLeg = "LLeg";
  float duration = 2.0f;
  proxy->wbGoToBalance(supportLeg, duration);

  // RLeg is free
  stateName  = "Free";
  supportLeg = "RLeg";
  proxy->wbFootState(stateName, supportLeg);

  // RLeg is optimized
  std::string effectorName = "RLeg";
  int axisMask = 63; // all axis
  int space    = 2;  // FRAME_ROBOT

  // Motion of the RLeg
  float dx  = 0.05f;                 // translation axis X (meters)
  float dz  = 0.05f;                 // translation axis Z (meters)
  float dwy = 5.0*AL::Math::TO_RAD;  // rotation axis Y (radian)


  AL::ALValue times = AL::ALValue::array(2.0f, 2.7f, 4.5f);
  bool isAbsolute = false;

  AL::ALValue targetList = AL::ALValue::array(
        AL::ALValue::array(-dx, 0.0f, dz, 0.0f, +dwy, 0.0f),
        AL::ALValue::array(+dx, 0.0f, dz, 0.0f, 0.0f, 0.0f),
        AL::ALValue::array(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f));

  proxy->positionInterpolation(effectorName, space, targetList,
                               axisMask, times, isAbsolute);


  // Example showing how to Enable Effector Control as an Optimization.
  bool isActive = false;
  proxy->wbEnableEffectorOptimization(effectorName, isActive);

  // Com go to LLeg
  supportLeg = "RLeg";
  duration   = 2.0f;
  proxy->wbGoToBalance(supportLeg, duration);

  // RLeg is free
  stateName  = "Free";
  supportLeg = "LLeg";
  proxy->wbFootState(stateName, supportLeg);

  effectorName = "LLeg";
  proxy->positionInterpolation(effectorName, space, targetList,
                              axisMask, times, isAbsolute);

  qi::os::msleep(1000);

  // Disactivate Head tracking
  isEnabled    = false;
  proxy->wbEnable(isEnabled);

  // send robot to Pose Init
  poseInit();
}


/// <summary>
/// Example of a whole body multiple effectors control "LArm", "RArm" and "Torso"
/// </summary>
void ALMotionExample::wbMultipleEffectors()
{
  boost::shared_ptr<AL::ALMotionProxy> proxy = getParentBroker()->getMotionProxy();
  stiffnessOnPoseInit();

  // Activate Whole Body Balancer
  bool isEnabled  = true;
  proxy->wbEnable(isEnabled);

  // Legs are constrained fixed
  std::string stateName  = "Fixed";
  std::string supportLeg = "Legs";
  proxy->wbFootState(stateName, supportLeg);

  // Constraint Balance Motion.
  bool isEnable = true;
  supportLeg    = "Legs";
  proxy->wbEnableBalanceConstraint(isEnable, supportLeg);

  AL::ALValue effectorList = AL::ALValue::array("LArm", "RArm");

  int space = 2; // FRAME_ROBOT

  AL::ALValue pathList = AL::ALValue::array(
        AL::ALValue::array(
          AL::ALValue::array(0.0f,  0.08f,  0.14f, 0.0f, 0.0f, 0.0f), // target 1 for "LArm"
          AL::ALValue::array(0.0f, -0.05f, -0.07f, 0.0f, 0.0f, 0.0f), // target 2 for "LArm"
          AL::ALValue::array(0.0f,  0.08f,  0.14f, 0.0f, 0.0f, 0.0f), // target 3 for "LArm"
          AL::ALValue::array(0.0f, -0.05f, -0.07f, 0.0f, 0.0f, 0.0f), // target 4 for "LArm"
          AL::ALValue::array(0.0f,  0.08f,  0.14f, 0.0f, 0.0f, 0.0f)  // target 5 for "LArm"
          ),
        AL::ALValue::array(
          AL::ALValue::array(0.0,  0.05, -0.07, 0.0, 0.0, 0.0), // target 1 for "RArm"
          AL::ALValue::array(0.0, -0.08,  0.14, 0.0, 0.0, 0.0), // target 2 for "RArm"
          AL::ALValue::array(0.0,  0.05, -0.07, 0.0, 0.0, 0.0), // target 3 for "RArm"
          AL::ALValue::array(0.0, -0.08,  0.14, 0.0, 0.0, 0.0), // target 4 for "RArm"
          AL::ALValue::array(0.0,  0.05, -0.07, 0.0, 0.0, 0.0), // target 5 for "RArm"
          AL::ALValue::array(0.0, -0.08,  0.14, 0.0, 0.0, 0.0)  // target 6 for "RArm"
          )
        );

  AL::ALValue axisMaskList = AL::ALValue::array(
        7,  // translation for "LArm"
        7); // translation for "RArm"

  float coef = 1.5f;
  AL::ALValue timesList = AL::ALValue::array(
        AL::ALValue::array(coef*1.0f, coef*2.0f, coef*3.0f, coef*4.0f, coef*5.0f),             // for "LArm" in seconds
        AL::ALValue::array(coef*1.0f, coef*2.0f, coef*3.0f, coef*4.0f, coef*5.0f, coef*6.0f)); // for "RArm" in seconds

  bool isAbsolute = false;

  proxy->positionInterpolations(effectorList, space, pathList,
                                axisMaskList, timesList, isAbsolute);

  effectorList = AL::ALValue::array("Torso");

  float dy = 0.05f;
  float dz = 0.05f;

  AL::ALValue pathListTmp;
  pathListTmp.arraySetSize(12);
  pathListTmp[0]  = AL::ALValue::array(0.0f,  +dy,  -dz, 0.0f, 0.0f, 0.0f); // target  1 for "Torso"
  pathListTmp[1]  = AL::ALValue::array(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f); // target  2 for "Torso"
  pathListTmp[2]  = AL::ALValue::array(0.0f,  -dy,  -dz, 0.0f, 0.0f, 0.0f); // target  3 for "Torso"
  pathListTmp[3]  = AL::ALValue::array(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f); // target  4 for "Torso"
  pathListTmp[4]  = AL::ALValue::array(0.0f,  +dy,  -dz, 0.0f, 0.0f, 0.0f); // target  5 for "Torso"
  pathListTmp[5]  = AL::ALValue::array(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f); // target  6 for "Torso"
  pathListTmp[6]  = AL::ALValue::array(0.0f,  -dy,  -dz, 0.0f, 0.0f, 0.0f); // target  7 for "Torso"
  pathListTmp[7]  = AL::ALValue::array(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f); // target  8 for "Torso"
  pathListTmp[8]  = AL::ALValue::array(0.0f,  +dy,  -dz, 0.0f, 0.0f, 0.0f); // target  9 for "Torso"
  pathListTmp[9]  = AL::ALValue::array(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f); // target 10 for "Torso"
  pathListTmp[10] = AL::ALValue::array(0.0f,  -dy,  -dz, 0.0f, 0.0f, 0.0f); // target 11 for "Torso"
  pathListTmp[11] = AL::ALValue::array(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f); // target 12 for "Torso"

  pathList = AL::ALValue::array(pathListTmp);

  axisMaskList = AL::ALValue::array(63); // all axis for "Torso"

  coef = 0.5f;
  AL::ALValue timesListTmp;
  for (unsigned int i=0; i<12; i++)
  {
    timesListTmp.arrayPush(coef*(i+1));
  }
  timesList = AL::ALValue::array(timesListTmp); // for "Torso" in seconds

  isAbsolute = false;

  proxy->positionInterpolations(effectorList, space, pathList,
                                axisMaskList, timesList, isAbsolute);

  qi::os::msleep(3000);

  // Remove optimization of "LArm". "LArm" move to its initial posture
  bool isActive = false;
  proxy->wbEnableEffectorOptimization("LArm", isActive);
  qi::os::msleep(3000);

  // Remove optimization of "RArm". "RArm" move to its initial posture
  proxy->wbEnableEffectorOptimization("RArm", isActive);
  qi::os::msleep(3000);

  // Disactivate Head tracking.
  isEnabled = false;
  proxy->wbEnable(isEnabled);

}
