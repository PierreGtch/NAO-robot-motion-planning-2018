/// <summary>
/// Example module to use fast method to get/set joints every 10ms with minimum delays.
/// </summary>

#include "fastgetsetdcm.h"
#include <boost/shared_ptr.hpp>
#include <alcommon/alproxy.h>
#include <alcommon/albroker.h>
#include <alcommon/almodule.h>

#include <alerror/alerror.h>

// Use DCM proxy
#include <alproxies/dcmproxy.h>

// Used to read values of ALMemory directly in RAM
#include <almemoryfastaccess/almemoryfastaccess.h>

#include <boost/bind.hpp>

/// <summary>
/// Example module to use fast method to get/set joints every 10ms with minimum delays.
/// </summary>
/// <param name="broker"> A smart pointer to the broker.</param>
/// <param name="name">   The name of the module. </param>
FastGetSetDCM::FastGetSetDCM(boost::shared_ptr<AL::ALBroker> broker,
                                     const std::string &name )
  : AL::ALModule(broker, name )
  , fMemoryFastAccess(boost::shared_ptr<AL::ALMemoryFastAccess>(new AL::ALMemoryFastAccess()))
{
  setModuleDescription( "Example module to use fast method to get/set joints every 10ms with minimum delays." );

  functionName("startLoop", getName() , "start");
  BIND_METHOD(FastGetSetDCM::startLoop);

  functionName("stopLoop", getName() , "stop");
  BIND_METHOD(FastGetSetDCM::stopLoop);

  functionName("setStiffness" , getName(),
                "change stiffness of all joint");
  addParam("value", "new stiffness value from 0.0 to 1.0");
  BIND_METHOD(FastGetSetDCM::setStiffness);

  //  start the example.
  //  You can remove it and call FastGetSetDCM.startLoop() to start instead.
  startLoop();
}

FastGetSetDCM::~FastGetSetDCM()
{
  stopLoop();
}

// Start the example
void FastGetSetDCM::startLoop()
{
  signed long isDCMRunning;

  try
  {
    // Get the DCM proxy
    dcmProxy = getParentBroker()->getDcmProxy();
  }
  catch (AL::ALError& e)
  {
    throw ALERROR(getName(), "startLoop()", "Impossible to create DCM Proxy : " + e.toString());
  }

  // Is the DCM running ?
  try
  {
    isDCMRunning = getParentBroker()->getProxy("ALLauncher")->call<bool>("isModulePresent", std::string("DCM"));
  }
  catch (AL::ALError& e)
  {
    throw ALERROR(getName(), "startLoop()", "Error when connecting to DCM : " + e.toString());
  }

  if (!isDCMRunning)
  {
    throw ALERROR(getName(), "startLoop()", "Error no DCM running ");
  }

  init();
  connectToDCMloop();
}

// Stop the example
void FastGetSetDCM::stopLoop()
{
  setStiffness(0.0f);
  // Remove the postProcess call back connection
  fDCMPostProcessConnection.disconnect();
}

// Initialisation of ALmemory fast access, DCM commands, Alias, stiffness, ...
void FastGetSetDCM::init()
{
  initFastAccess();
  createPositionActuatorAlias();
  createHardnessActuatorAlias();
  setStiffness(0.2f); // Set to 1.0 for maximum stiffness, but only after a test
  preparePositionActuatorCommand();
}

// ALMemory fast access
void FastGetSetDCM::initFastAccess()
{
  fSensorKeys.clear();
  //  Here as an example inertial + joints + FSR are read
  fSensorKeys.resize(7 + 25 + 6);
  // Joints Sensor list
  fSensorKeys[HEAD_PITCH]       = std::string("Device/SubDeviceList/HeadPitch/Position/Sensor/Value");
  fSensorKeys[HEAD_YAW]         = std::string("Device/SubDeviceList/HeadYaw/Position/Sensor/Value");
  fSensorKeys[L_ANKLE_PITCH]    = std::string("Device/SubDeviceList/LAnklePitch/Position/Sensor/Value");
  fSensorKeys[L_ANKLE_ROLL]     = std::string("Device/SubDeviceList/LAnkleRoll/Position/Sensor/Value");
  fSensorKeys[L_ELBOW_ROLL]     = std::string("Device/SubDeviceList/LElbowRoll/Position/Sensor/Value");
  fSensorKeys[L_ELBOW_YAW]      = std::string("Device/SubDeviceList/LElbowYaw/Position/Sensor/Value");
  fSensorKeys[L_HAND]           = std::string("Device/SubDeviceList/LHand/Position/Sensor/Value");
  fSensorKeys[L_HIP_PITCH]      = std::string("Device/SubDeviceList/LHipPitch/Position/Sensor/Value");
  fSensorKeys[L_HIP_ROLL]       = std::string("Device/SubDeviceList/LHipRoll/Position/Sensor/Value");
  fSensorKeys[L_HIP_YAW_PITCH]  = std::string("Device/SubDeviceList/LHipYawPitch/Position/Sensor/Value");
  fSensorKeys[L_KNEE_PITCH]     = std::string("Device/SubDeviceList/LKneePitch/Position/Sensor/Value");
  fSensorKeys[L_SHOULDER_PITCH] = std::string("Device/SubDeviceList/LShoulderPitch/Position/Sensor/Value");
  fSensorKeys[L_SHOULDER_ROLL]  = std::string("Device/SubDeviceList/LShoulderRoll/Position/Sensor/Value");
  fSensorKeys[L_WRIST_YAW]      = std::string("Device/SubDeviceList/LWristYaw/Position/Sensor/Value");
  fSensorKeys[R_ANKLE_PITCH]    = std::string("Device/SubDeviceList/RAnklePitch/Position/Sensor/Value");
  fSensorKeys[R_ANKLE_ROLL]     = std::string("Device/SubDeviceList/RAnkleRoll/Position/Sensor/Value");
  fSensorKeys[R_ELBOW_ROLL]     = std::string("Device/SubDeviceList/RElbowRoll/Position/Sensor/Value");
  fSensorKeys[R_ELBOW_YAW]      = std::string("Device/SubDeviceList/RElbowYaw/Position/Sensor/Value");
  fSensorKeys[R_HAND]           = std::string("Device/SubDeviceList/RHand/Position/Sensor/Value");
  fSensorKeys[R_HIP_PITCH]      = std::string("Device/SubDeviceList/RHipPitch/Position/Sensor/Value");
  fSensorKeys[R_HIP_ROLL]       = std::string("Device/SubDeviceList/RHipRoll/Position/Sensor/Value");
  fSensorKeys[R_KNEE_PITCH]     = std::string("Device/SubDeviceList/RKneePitch/Position/Sensor/Value");
  fSensorKeys[R_SHOULDER_PITCH] = std::string("Device/SubDeviceList/RShoulderPitch/Position/Sensor/Value");
  fSensorKeys[R_SHOULDER_ROLL]  = std::string("Device/SubDeviceList/RShoulderRoll/Position/Sensor/Value");
  fSensorKeys[R_WRIST_YAW]      = std::string("Device/SubDeviceList/RWristYaw/Position/Sensor/Value");

  // Inertial sensors
  fSensorKeys[ACC_X]   = std::string("Device/SubDeviceList/InertialSensor/AccX/Sensor/Value");
  fSensorKeys[ACC_Y]   = std::string("Device/SubDeviceList/InertialSensor/AccY/Sensor/Value");
  fSensorKeys[ACC_Z]   = std::string("Device/SubDeviceList/InertialSensor/AccZ/Sensor/Value");
  fSensorKeys[GYR_X]   = std::string("Device/SubDeviceList/InertialSensor/GyrX/Sensor/Value");
  fSensorKeys[GYR_Y]   = std::string("Device/SubDeviceList/InertialSensor/GyrY/Sensor/Value");
  fSensorKeys[ANGLE_X] = std::string("Device/SubDeviceList/InertialSensor/AngleX/Sensor/Value");
  fSensorKeys[ANGLE_Y] = std::string("Device/SubDeviceList/InertialSensor/AngleY/Sensor/Value");

  // Some FSR sensors
  fSensorKeys[L_COP_X]        = std::string("Device/SubDeviceList/LFoot/FSR/CenterOfPressure/X/Sensor/Value");
  fSensorKeys[L_COP_Y]        = std::string("Device/SubDeviceList/LFoot/FSR/CenterOfPressure/Y/Sensor/Value");
  fSensorKeys[L_TOTAL_WEIGHT] = std::string("Device/SubDeviceList/LFoot/FSR/TotalWeight/Sensor/Value");
  fSensorKeys[R_COP_X]        = std::string("Device/SubDeviceList/RFoot/FSR/CenterOfPressure/X/Sensor/Value");
  fSensorKeys[R_COP_Y]        = std::string("Device/SubDeviceList/RFoot/FSR/CenterOfPressure/Y/Sensor/Value");
  fSensorKeys[R_TOTAL_WEIGHT] = std::string("Device/SubDeviceList/RFoot/FSR/TotalWeight/Sensor/Value");

  // Create the fast memory access
  fMemoryFastAccess->ConnectToVariables(getParentBroker(), fSensorKeys, false);
}

void FastGetSetDCM::createPositionActuatorAlias()
{
  AL::ALValue jointAliasses;

  jointAliasses.arraySetSize(2);
  jointAliasses[0] = std::string("jointActuator"); // Alias for all 25 joint actuators
  jointAliasses[1].arraySetSize(25);

  // Joints actuator list

  jointAliasses[1][HEAD_PITCH]       = std::string("Device/SubDeviceList/HeadPitch/Position/Actuator/Value");
  jointAliasses[1][HEAD_YAW]         = std::string("Device/SubDeviceList/HeadYaw/Position/Actuator/Value");
  jointAliasses[1][L_ANKLE_PITCH]    = std::string("Device/SubDeviceList/LAnklePitch/Position/Actuator/Value");
  jointAliasses[1][L_ANKLE_ROLL]     = std::string("Device/SubDeviceList/LAnkleRoll/Position/Actuator/Value");
  jointAliasses[1][L_ELBOW_ROLL]     = std::string("Device/SubDeviceList/LElbowRoll/Position/Actuator/Value");
  jointAliasses[1][L_ELBOW_YAW]      = std::string("Device/SubDeviceList/LElbowYaw/Position/Actuator/Value");
  jointAliasses[1][L_HAND]           = std::string("Device/SubDeviceList/LHand/Position/Actuator/Value");
  jointAliasses[1][L_HIP_PITCH]      = std::string("Device/SubDeviceList/LHipPitch/Position/Actuator/Value");
  jointAliasses[1][L_HIP_ROLL]       = std::string("Device/SubDeviceList/LHipRoll/Position/Actuator/Value");
  jointAliasses[1][L_HIP_YAW_PITCH]  = std::string("Device/SubDeviceList/LHipYawPitch/Position/Actuator/Value");
  jointAliasses[1][L_KNEE_PITCH]     = std::string("Device/SubDeviceList/LKneePitch/Position/Actuator/Value");
  jointAliasses[1][L_SHOULDER_PITCH] = std::string("Device/SubDeviceList/LShoulderPitch/Position/Actuator/Value");
  jointAliasses[1][L_SHOULDER_ROLL]  = std::string("Device/SubDeviceList/LShoulderRoll/Position/Actuator/Value");
  jointAliasses[1][L_WRIST_YAW]      = std::string("Device/SubDeviceList/LWristYaw/Position/Actuator/Value");
  jointAliasses[1][R_ANKLE_PITCH]    = std::string("Device/SubDeviceList/RAnklePitch/Position/Actuator/Value");
  jointAliasses[1][R_ANKLE_ROLL]     = std::string("Device/SubDeviceList/RAnkleRoll/Position/Actuator/Value");
  jointAliasses[1][R_ELBOW_ROLL]     = std::string("Device/SubDeviceList/RElbowRoll/Position/Actuator/Value");
  jointAliasses[1][R_ELBOW_YAW]      = std::string("Device/SubDeviceList/RElbowYaw/Position/Actuator/Value");
  jointAliasses[1][R_HAND]           = std::string("Device/SubDeviceList/RHand/Position/Actuator/Value");
  jointAliasses[1][R_HIP_PITCH]      = std::string("Device/SubDeviceList/RHipPitch/Position/Actuator/Value");
  jointAliasses[1][R_HIP_ROLL]       = std::string("Device/SubDeviceList/RHipRoll/Position/Actuator/Value");
  jointAliasses[1][R_KNEE_PITCH]     = std::string("Device/SubDeviceList/RKneePitch/Position/Actuator/Value");
  jointAliasses[1][R_SHOULDER_PITCH] = std::string("Device/SubDeviceList/RShoulderPitch/Position/Actuator/Value");
  jointAliasses[1][R_SHOULDER_ROLL]  = std::string("Device/SubDeviceList/RShoulderRoll/Position/Actuator/Value");
  jointAliasses[1][R_WRIST_YAW]      = std::string("Device/SubDeviceList/RWristYaw/Position/Actuator/Value");

  // Create alias
  try
  {
    dcmProxy->createAlias(jointAliasses);
  }
  catch (const AL::ALError &e)
  {
    throw ALERROR(getName(), "createPositionActuatorAlias()", "Error when creating Alias : " + e.toString());
  }
}

void FastGetSetDCM::createHardnessActuatorAlias()
{
  AL::ALValue jointAliasses;
  // Alias for all joint stiffness
  jointAliasses.clear();
  jointAliasses.arraySetSize(2);
  jointAliasses[0] = std::string("jointStiffness"); // Alias for all 25 actuators
  jointAliasses[1].arraySetSize(25);

  // stiffness list
  jointAliasses[1][HEAD_PITCH]        = std::string("Device/SubDeviceList/HeadPitch/Hardness/Actuator/Value");
  jointAliasses[1][HEAD_YAW]          = std::string("Device/SubDeviceList/HeadYaw/Hardness/Actuator/Value");
  jointAliasses[1][L_ANKLE_PITCH]     = std::string("Device/SubDeviceList/LAnklePitch/Hardness/Actuator/Value");
  jointAliasses[1][L_ANKLE_ROLL]      = std::string("Device/SubDeviceList/LAnkleRoll/Hardness/Actuator/Value");
  jointAliasses[1][L_ELBOW_ROLL]      = std::string("Device/SubDeviceList/LElbowRoll/Hardness/Actuator/Value");
  jointAliasses[1][L_ELBOW_YAW]       = std::string("Device/SubDeviceList/LElbowYaw/Hardness/Actuator/Value");
  jointAliasses[1][L_HAND]            = std::string("Device/SubDeviceList/LHand/Hardness/Actuator/Value");
  jointAliasses[1][L_HIP_PITCH]       = std::string("Device/SubDeviceList/LHipPitch/Hardness/Actuator/Value");
  jointAliasses[1][L_HIP_ROLL]        = std::string("Device/SubDeviceList/LHipRoll/Hardness/Actuator/Value");
  jointAliasses[1][L_HIP_YAW_PITCH]   = std::string("Device/SubDeviceList/LHipYawPitch/Hardness/Actuator/Value");
  jointAliasses[1][L_KNEE_PITCH]      = std::string("Device/SubDeviceList/LKneePitch/Hardness/Actuator/Value");
  jointAliasses[1][L_SHOULDER_PITCH]  = std::string("Device/SubDeviceList/LShoulderPitch/Hardness/Actuator/Value");
  jointAliasses[1][L_SHOULDER_ROLL]   = std::string("Device/SubDeviceList/LShoulderRoll/Hardness/Actuator/Value");
  jointAliasses[1][L_WRIST_YAW]       = std::string("Device/SubDeviceList/LWristYaw/Hardness/Actuator/Value");
  jointAliasses[1][R_ANKLE_PITCH]     = std::string("Device/SubDeviceList/RAnklePitch/Hardness/Actuator/Value");
  jointAliasses[1][R_ANKLE_ROLL]      = std::string("Device/SubDeviceList/RAnkleRoll/Hardness/Actuator/Value");
  jointAliasses[1][R_ELBOW_ROLL]      = std::string("Device/SubDeviceList/RElbowRoll/Hardness/Actuator/Value");
  jointAliasses[1][R_ELBOW_YAW]       = std::string("Device/SubDeviceList/RElbowYaw/Hardness/Actuator/Value");
  jointAliasses[1][R_HAND]            = std::string("Device/SubDeviceList/RHand/Hardness/Actuator/Value");
  jointAliasses[1][R_HIP_PITCH]       = std::string("Device/SubDeviceList/RHipPitch/Hardness/Actuator/Value");
  jointAliasses[1][R_HIP_ROLL]        = std::string("Device/SubDeviceList/RHipRoll/Hardness/Actuator/Value");
  jointAliasses[1][R_KNEE_PITCH]      = std::string("Device/SubDeviceList/RKneePitch/Hardness/Actuator/Value");
  jointAliasses[1][R_SHOULDER_PITCH]  = std::string("Device/SubDeviceList/RShoulderPitch/Hardness/Actuator/Value");
  jointAliasses[1][R_SHOULDER_ROLL]   = std::string("Device/SubDeviceList/RShoulderRoll/Hardness/Actuator/Value");
  jointAliasses[1][R_WRIST_YAW]       = std::string("Device/SubDeviceList/RWristYaw/Hardness/Actuator/Value");

  // Create alias
  try
  {
    dcmProxy->createAlias(jointAliasses);
  }
  catch (const AL::ALError &e)
  {
    throw ALERROR(getName(), "createHardnessActuatorAlias()", "Error when creating Alias : " + e.toString());
  }
}


void FastGetSetDCM::preparePositionActuatorCommand()
{
  commands.arraySetSize(6);
  commands[0] = std::string("jointActuator");
  commands[1] = std::string("ClearAll"); // Erase all previous commands
  commands[2] = std::string("time-separate");
  commands[3] = 0;

  commands[4].arraySetSize(1);
  //commands[4][0]  Will be the new time

  commands[5].arraySetSize(25); // For all joints

  for (int i=0; i<25; i++)
  {
    commands[5][i].arraySetSize(1);
    //commands[5][i][0] will be the new angle
  }
}


void FastGetSetDCM::setStiffness(const float &stiffnessValue)
{
  AL::ALValue stiffnessCommands;
  int DCMtime;
  // increase stiffness with the "jointStiffness" Alias created at initialisation
  try
  {
    // Get time : return the time in 1 seconde
    DCMtime = dcmProxy->getTime(1000);
  }
  catch (const AL::ALError &e)
  {
    throw ALERROR(getName(), "setStiffness()", "Error on DCM getTime : " + e.toString());
  }

  // Prepare one dcm command:
  // it will linearly "Merge" all joint stiffness
  // from last value to "stiffnessValue" in 1 seconde
  stiffnessCommands.arraySetSize(3);
  stiffnessCommands[0] = std::string("jointStiffness");
  stiffnessCommands[1] = std::string("Merge");
  stiffnessCommands[2].arraySetSize(1);
  stiffnessCommands[2][0].arraySetSize(2);
  stiffnessCommands[2][0][0] = stiffnessValue;
  stiffnessCommands[2][0][1] = DCMtime;
  try
  {
    dcmProxy->set(stiffnessCommands);
  }
  catch (const AL::ALError &e)
  {
    throw ALERROR(getName(), "setStiffness()", "Error when sending stiffness to DCM : " + e.toString());
  }
}

void FastGetSetDCM::connectToDCMloop()
{
  // Get all values from ALMemory using fastaccess
  fMemoryFastAccess->GetValues(sensorValues);

  // Save all sensor position for the sensor=actuator test
  for (int i=0; i<25; i++)
  {
    initialJointSensorValues.push_back(sensorValues[i]);
  }

  // Connect callback to the DCM post proccess
  try
  {
    fDCMPostProcessConnection =
      getParentBroker()->getProxy("DCM")->getModule()->atPostProcess(boost::bind(&FastGetSetDCM::synchronisedDCMcallback, this));
  }
  catch (const AL::ALError &e)
  {
    throw ALERROR(getName(), "connectToDCMloop()", "Error when connecting to DCM postProccess: " + e.toString());
  }
}


/**
 *  WARNING
 *
 *  Once this method is connected to DCM postprocess
 *  it will be called in Real Time every 10 milliseconds from DCM thread
 *  Dynamic allocation and system call are strictly forbidden in this method
 *  Computation time in this section must remain as short as possible to prevent
 *  erratic move or joint getting loose.
 *
 */
//  Send the new values of all joints to the DCM.
//  Note : a joint could be ignore unsing a NAN value.
//  Note : do not forget to set stiffness
void FastGetSetDCM::synchronisedDCMcallback()
{
  int DCMtime;

  try
  {
    // Get absolute time, at 0 ms in the future ( i.e. now )
    DCMtime = dcmProxy->getTime(0);
  }
  catch (const AL::ALError &e)
  {
    throw ALERROR(getName(), "synchronisedDCMcallback()", "Error on DCM getTime : " + e.toString());
  }

  commands[4][0] = DCMtime; // To be used in the next cycle

  for (int i=0; i<25; i++)
  {
    // new actuator value = first Sensor value
    commands[5][i][0] = initialJointSensorValues[i];
  }
  // Uncomment this to activate
  // Left Arm mirror Right Arm
  // Get all values from ALMemory using fastaccess
  fMemoryFastAccess->GetValues(sensorValues);
  commands[5][L_SHOULDER_PITCH][0] =   sensorValues[R_SHOULDER_PITCH];
  commands[5][L_SHOULDER_ROLL][0]  = - sensorValues[R_SHOULDER_ROLL];
  commands[5][L_ELBOW_YAW][0]      = - sensorValues[R_ELBOW_YAW];
  commands[5][L_ELBOW_ROLL][0]     = - sensorValues[R_ELBOW_ROLL];

  try
  {
    dcmProxy->setAlias(commands);
  }
  catch (const AL::ALError &e)
  {
    throw ALERROR(getName(), "synchronisedDCMcallback()", "Error when sending command to DCM : " + e.toString());
  }
}
