/// <summary>
/// Example module to use fast method to get/set joints every 10ms with minimum delays.
/// </summary>

#ifndef _FAST_GET_SET_DCM_H
#define _FAST_GET_SET_DCM_H

#include <boost/shared_ptr.hpp>
#include <alcommon/almodule.h>
#include <boost/shared_ptr.hpp>

namespace AL
{
  class ALBroker;
  class ALMemoryFastAccess;
  class DCMProxy;
}


/// <summary>
/// Example module tu use fast method to get/set joints every 10ms with minimum delays.
/// </summary>
class FastGetSetDCM : public AL::ALModule
{
public:
  FastGetSetDCM(boost::shared_ptr<AL::ALBroker> pBroker,
                    const std::string &pName );

  virtual ~FastGetSetDCM();

  // Start the example
  void startLoop();

  // Stop the example
  void stopLoop();

private:

  // Initialisation of ALMemory/DCM link
  void init();

  // ALMemory fast access
  void initFastAccess();

  //  Connect callback to the DCM post proccess
  void connectToDCMloop();

  // Callback called by the DCM every 10ms
  void synchronisedDCMcallback();

  // Create DCM hardness Actuator Alias
  void createHardnessActuatorAlias();

  // Create DCM Position Actuator Alias
  void createPositionActuatorAlias();

  // Prepare Command ALValue to send command to actuator
  void preparePositionActuatorCommand();

  // Set one hardness value to all joint
  void setStiffness(const float &stiffnessValue);

  // Used for postprocess sync with the DCM
  ProcessSignalConnection fDCMPostProcessConnection;

  // Sensors names
  std::vector<std::string> fSensorKeys;

  // Used for fast memory access
  boost::shared_ptr<AL::ALMemoryFastAccess> fMemoryFastAccess;

  // Store sensor values.
  std::vector<float> sensorValues;
  boost::shared_ptr<AL::DCMProxy> dcmProxy;

  // Used for the test actuator = sensor
  std::vector<float>  initialJointSensorValues;

  // Used to store command to send
  AL::ALValue commands;
};

enum SensorType { HEAD_PITCH, HEAD_YAW,
                  L_ANKLE_PITCH,
                  L_ANKLE_ROLL,
                  L_ELBOW_ROLL,
                  L_ELBOW_YAW,
                  L_HAND,
                  L_HIP_PITCH,
                  L_HIP_ROLL,
                  L_HIP_YAW_PITCH,
                  L_KNEE_PITCH,
                  L_SHOULDER_PITCH,
                  L_SHOULDER_ROLL,
                  L_WRIST_YAW,
                  R_ANKLE_PITCH,
                  R_ANKLE_ROLL,
                  R_ELBOW_ROLL,
                  R_ELBOW_YAW,
                  R_HAND,
                  R_HIP_PITCH,
                  R_HIP_ROLL,
                  R_KNEE_PITCH,
                  R_SHOULDER_PITCH,
                  R_SHOULDER_ROLL,
                  R_WRIST_YAW,
                  ACC_X,
                  ACC_Y,
                  ACC_Z,
                  GYR_X,
                  GYR_Y,
                  ANGLE_X,
                  ANGLE_Y,
                  L_COP_X,
                  L_COP_Y,
                  L_TOTAL_WEIGHT,
                  R_COP_X,
                  R_COP_Y,
                  R_TOTAL_WEIGHT};

#endif  // _FAST_GET_SET_DCM_H

