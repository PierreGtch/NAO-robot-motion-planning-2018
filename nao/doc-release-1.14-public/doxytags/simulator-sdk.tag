<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="namespace">
    <name>Sim</name>
    <filename>namespaceSim.html</filename>
    <class kind="class">Sim::Model</class>
    <class kind="class">Sim::Frame</class>
    <class kind="class">Sim::Joint</class>
    <class kind="class">Sim::MassData</class>
    <class kind="class">Sim::VisualData</class>
    <class kind="class">Sim::Link</class>
    <class kind="class">Sim::Actuator</class>
    <class kind="class">Sim::AngleActuator</class>
    <class kind="class">Sim::CoupledActuator</class>
    <class kind="class">Sim::TorqueActuator</class>
    <class kind="class">Sim::AngleSpeedActuator</class>
    <class kind="class">Sim::WheelTorqueActuator</class>
    <class kind="class">Sim::WheelVelocityActuator</class>
    <class kind="class">Sim::LEDActuator</class>
    <class kind="class">Sim::Sensor</class>
    <class kind="class">Sim::DCMSensor</class>
    <class kind="class">Sim::AngleSensor</class>
    <class kind="class">Sim::CoupledSensor</class>
    <class kind="class">Sim::TorqueSensor</class>
    <class kind="class">Sim::AngleSpeedSensor</class>
    <class kind="class">Sim::WheelVelocitySensor</class>
    <class kind="class">Sim::CameraSensor</class>
    <class kind="class">Sim::FSRSensor</class>
    <class kind="class">Sim::InertialSensor</class>
    <class kind="class">Sim::SonarSensor</class>
    <class kind="class">Sim::BumperSensor</class>
    <class kind="class">Sim::TactileSensor</class>
    <class kind="class">Sim::DepthInfraredSensor</class>
    <class kind="class">Sim::HALInterface</class>
    <class kind="class">Sim::NAOqiLauncher</class>
    <member kind="function">
      <type>ALROBOTMODEL_API bool</type>
      <name>frictionCoeff</name>
      <anchorfile>namespaceSim.html</anchorfile>
      <anchor>a3a24029a0b38d8daf677534146784d62</anchor>
      <arglist>(const std::string &amp;frictionMaterial1, const std::string &amp;frictionMaterial2, float &amp;frictionCoeff)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::Model</name>
    <filename>classSim_1_1Model.html</filename>
    <member kind="function">
      <type></type>
      <name>Model</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>ac3e9c03b6bc33a41e6bb5063b4be072e</anchor>
      <arglist>(const std::string &amp;pathToModel)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Model</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a0c5a7210b7f39155d4094d8d42d708c2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>name</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a282840c700ac7b1ec41edb38828dc466</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>configFile</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a69079aa753a4a5218ee093f598e885e3</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const Joint * &gt;</type>
      <name>joints</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a777f50d37e8afde22a3609deaf76bbd4</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const Joint *</type>
      <name>joint</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a0b652c7e1577c3d2b9fec5a12d53c9f9</anchor>
      <arglist>(const std::string &amp;jointName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const Link * &gt;</type>
      <name>links</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a68a68c5b41c73551945df4023946ac51</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const Link *</type>
      <name>link</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a018ec2096d4c8425c05ea8154e7fdc48</anchor>
      <arglist>(const std::string &amp;linkName) const </arglist>
    </member>
    <member kind="function">
      <type>const Link *</type>
      <name>rootLink</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>abae6006b6a3a322de3eb978eb3fbcfed</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const Actuator * &gt;</type>
      <name>actuators</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>ac77ccda48e154985db777f01b6f1aaad</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const Actuator *</type>
      <name>actuator</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>abd6ff88e440a54eafd4208db59f22c5d</anchor>
      <arglist>(const std::string &amp;actuatorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const AngleActuator * &gt;</type>
      <name>angleActuators</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a110a5503b0550f4ea704973e77b464cc</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const AngleActuator *</type>
      <name>angleActuator</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>af6f2eaf51d579300a3fcbba4ba3c3317</anchor>
      <arglist>(const std::string &amp;actuatorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const CoupledActuator * &gt;</type>
      <name>coupledActuators</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>aae8f384c1432e50ca8e2d483ac0a9dde</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const CoupledActuator *</type>
      <name>coupledActuator</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a1f7224e6eed2bd9a1c3eb6c3e831307b</anchor>
      <arglist>(const std::string &amp;actuatorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const TorqueActuator * &gt;</type>
      <name>torqueActuators</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>add76e9cb8f848c28762aacb4d3a36233</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const TorqueActuator *</type>
      <name>torqueActuator</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a847989097b308d3568e470711b08f91f</anchor>
      <arglist>(const std::string &amp;actuatorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const AngleSpeedActuator * &gt;</type>
      <name>angleSpeedActuators</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>aa8043d89340713c349a3a8856e4a5e79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const AngleSpeedActuator *</type>
      <name>angleSpeedActuator</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>ace4ccdb44e9c9d7b189ce862adc0a681</anchor>
      <arglist>(const std::string &amp;actuatorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const WheelTorqueActuator * &gt;</type>
      <name>wheelTorqueActuators</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a35698929b6414e131dd6625270cef907</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const WheelTorqueActuator *</type>
      <name>wheelTorqueActuator</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>ae46bba20e77399a741f662ee25aa2f3b</anchor>
      <arglist>(const std::string &amp;actuatorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const WheelVelocityActuator * &gt;</type>
      <name>wheelVelocityActuators</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a1bcf176cb8b660382dc7207058cbb0bd</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const WheelVelocityActuator *</type>
      <name>wheelVelocityActuator</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a7bdbfaf74b6d4c6c65b94866cee1bfdf</anchor>
      <arglist>(const std::string &amp;actuatorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const LEDActuator * &gt;</type>
      <name>ledActuators</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a0e72c24264631df7779f979680c827ff</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const LEDActuator *</type>
      <name>ledActuator</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a74bfd160e789156a70325e60a7308de9</anchor>
      <arglist>(const std::string &amp;actuatorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const Sensor * &gt;</type>
      <name>sensors</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a25766cef6b3d6e43f36966933e4482a7</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const Sensor *</type>
      <name>sensor</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a7ace3e119cb287aa8cf674cecbe30e7c</anchor>
      <arglist>(const std::string &amp;sensorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const AngleSensor * &gt;</type>
      <name>angleSensors</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>ac193ffa1534fc9d98245a9e57af44dfc</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const AngleSensor *</type>
      <name>angleSensor</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a0fb2d0e8e86d6134e54ef8d843f7bf2d</anchor>
      <arglist>(const std::string &amp;sensorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const CoupledSensor * &gt;</type>
      <name>coupledSensors</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a3d07903a88e4574223c36b4e2ab2e460</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const CoupledSensor *</type>
      <name>coupledSensor</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a4e746f299bb7b245a375b6b70e4203eb</anchor>
      <arglist>(const std::string &amp;sensorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const TorqueSensor * &gt;</type>
      <name>torqueSensors</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a40729dc9b4038732dd2c0777d64bf7c1</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const TorqueSensor *</type>
      <name>torqueSensor</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a976aa8915bf7925ee5c76efd63019690</anchor>
      <arglist>(const std::string &amp;sensorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const AngleSpeedSensor * &gt;</type>
      <name>angleSpeedSensors</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a60995136c6c51f9d8b6425a6c5c029a1</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const AngleSpeedSensor *</type>
      <name>angleSpeedSensor</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>ab44d5293637f8b67636d8f4ad47db21e</anchor>
      <arglist>(const std::string &amp;sensorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const WheelVelocitySensor * &gt;</type>
      <name>wheelVelocitySensors</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a87fe05bece3680f83ab687338f90dc1a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const WheelVelocitySensor *</type>
      <name>wheelVelocitySensor</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>ace681e7b923a64b5012d0bbdacabae0b</anchor>
      <arglist>(const std::string &amp;sensorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const CameraSensor * &gt;</type>
      <name>cameraSensors</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>aee2727a3caf5ea66cfd11c4b4574ea21</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const CameraSensor *</type>
      <name>cameraSensor</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a1ad50d3f74fdd3521794c20e4a6702eb</anchor>
      <arglist>(const std::string &amp;sensorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const FSRSensor * &gt;</type>
      <name>fsrSensors</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a8b9394f794897fd04081bec25e4d8a0a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const FSRSensor *</type>
      <name>fsrSensor</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>ac372c24c5c56903d177004e5cf904bb0</anchor>
      <arglist>(const std::string &amp;sensorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const InertialSensor * &gt;</type>
      <name>inertialSensors</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a921641f0b559bf2da75ea9783e13080e</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const InertialSensor *</type>
      <name>inertialSensor</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a12b8eaf5c8e809ff844e4a22fa4cd15f</anchor>
      <arglist>(const std::string &amp;sensorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const SonarSensor * &gt;</type>
      <name>sonarSensors</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>acad972826378fa08faee4a9f639c01a2</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const SonarSensor *</type>
      <name>sonarSensor</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>a2310cecec7fd7ec58f2dae1cbd8c0767</anchor>
      <arglist>(const std::string &amp;sensorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const BumperSensor * &gt;</type>
      <name>bumperSensors</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>abafb5346a6a8a2eb6d8c9ad7273b9c1f</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const BumperSensor *</type>
      <name>bumperSensor</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>ae7a109d973c415989cc9bbe543e75ce4</anchor>
      <arglist>(const std::string &amp;sensorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const TactileSensor * &gt;</type>
      <name>tactileSensors</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>ad4421cf4b9bdf69a6a347cd32cd36bfd</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const TactileSensor *</type>
      <name>tactileSensor</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>ad152d486a287fa53141ac5002b7ff28e</anchor>
      <arglist>(const std::string &amp;sensorName) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; const DepthInfraredSensor * &gt;</type>
      <name>depthInfraredSensors</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>ab7ea506ecbbf80ebbaa99c09aafdf2a8</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const DepthInfraredSensor *</type>
      <name>depthInfraredSensor</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>ac3a151c4cbaec9ee83438f15500eb52a</anchor>
      <arglist>(const std::string &amp;sensorName) const </arglist>
    </member>
    <member kind="variable">
      <type>class ModelImpl *</type>
      <name>a_impl</name>
      <anchorfile>classSim_1_1Model.html</anchorfile>
      <anchor>ae4a878d851b66f8de64e9c901709d7d4</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::Frame</name>
    <filename>classSim_1_1Frame.html</filename>
    <member kind="function">
      <type></type>
      <name>Frame</name>
      <anchorfile>classSim_1_1Frame.html</anchorfile>
      <anchor>a16e1c4964b56ce23f405aeec2e8e44f1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Frame</name>
      <anchorfile>classSim_1_1Frame.html</anchorfile>
      <anchor>abb0ea0069025e8a258cf4910a65bd83b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>name</name>
      <anchorfile>classSim_1_1Frame.html</anchorfile>
      <anchor>a4efdedd358f34f6b92fe82bc9cf0d268</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const AL::Math::Transform &amp;</type>
      <name>position</name>
      <anchorfile>classSim_1_1Frame.html</anchorfile>
      <anchor>a50c8765508b685d66cb942fb612821b6</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const Frame *</type>
      <name>parentFrame</name>
      <anchorfile>classSim_1_1Frame.html</anchorfile>
      <anchor>ac49576172a82b977403458d91c265dff</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const AL::Math::Transform &amp;</type>
      <name>localPosition</name>
      <anchorfile>classSim_1_1Frame.html</anchorfile>
      <anchor>aa6c3e107f9de44df763ddc1aad357014</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" static="yes">
      <type>static AL::Math::Transform</type>
      <name>globalPosition</name>
      <anchorfile>classSim_1_1Frame.html</anchorfile>
      <anchor>a50b7ebe1adee8186c1264a5b890c192d</anchor>
      <arglist>(const Frame *frame)</arglist>
    </member>
    <member kind="variable">
      <type>class FrameImpl *</type>
      <name>a_impl</name>
      <anchorfile>classSim_1_1Frame.html</anchorfile>
      <anchor>a52a25d15693b144f76cf691b33e63528</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::Joint</name>
    <filename>classSim_1_1Joint.html</filename>
    <member kind="function">
      <type></type>
      <name>Joint</name>
      <anchorfile>classSim_1_1Joint.html</anchorfile>
      <anchor>a18a8b57c005e35fc68ee7a7ae712fd7f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Joint</name>
      <anchorfile>classSim_1_1Joint.html</anchorfile>
      <anchor>ab07ea5604d4bbdd5c61f38eda924aeeb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const Frame *</type>
      <name>frame</name>
      <anchorfile>classSim_1_1Joint.html</anchorfile>
      <anchor>a7302f9b85f9d4e4a041f2a2848d2c110</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>name</name>
      <anchorfile>classSim_1_1Joint.html</anchorfile>
      <anchor>a2e5475558ec3fe475363e27a1d78168d</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const Link *</type>
      <name>parentLink</name>
      <anchorfile>classSim_1_1Joint.html</anchorfile>
      <anchor>afaf92d0f05e80f8d8102e09a276d7dd9</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const Link *</type>
      <name>childLink</name>
      <anchorfile>classSim_1_1Joint.html</anchorfile>
      <anchor>a3572b7d992d4baef44d37d94dc1b956c</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="variable">
      <type>class JointImpl *</type>
      <name>a_impl</name>
      <anchorfile>classSim_1_1Joint.html</anchorfile>
      <anchor>a17b43932aeeb28c82735eba6b79a8b89</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::MassData</name>
    <filename>classSim_1_1MassData.html</filename>
    <member kind="function">
      <type></type>
      <name>MassData</name>
      <anchorfile>classSim_1_1MassData.html</anchorfile>
      <anchor>a14adeb263ada4a5e79841079ba5bcf96</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~MassData</name>
      <anchorfile>classSim_1_1MassData.html</anchorfile>
      <anchor>a17915e06baeeef38daf898cfd97b78dd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>mass</name>
      <anchorfile>classSim_1_1MassData.html</anchorfile>
      <anchor>a4a4bc90403af8f75eed8e715a57255c2</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const AL::Math::Position3D &amp;</type>
      <name>CoM</name>
      <anchorfile>classSim_1_1MassData.html</anchorfile>
      <anchor>aaadabaab19e291b253f6e4280999889a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const std::vector&lt; float &gt; &amp;</type>
      <name>inertiaMatrix</name>
      <anchorfile>classSim_1_1MassData.html</anchorfile>
      <anchor>a0b30e262afe523a0bae0998bb68613cc</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="variable">
      <type>class MassDataImpl *</type>
      <name>a_impl</name>
      <anchorfile>classSim_1_1MassData.html</anchorfile>
      <anchor>a1dc93a0e87f8939f1038d05bbc78a16f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::VisualData</name>
    <filename>classSim_1_1VisualData.html</filename>
    <member kind="function">
      <type></type>
      <name>VisualData</name>
      <anchorfile>classSim_1_1VisualData.html</anchorfile>
      <anchor>a2b07bc871780f49fa0dbb4386c6ab0e9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~VisualData</name>
      <anchorfile>classSim_1_1VisualData.html</anchorfile>
      <anchor>a829967855d27f56b463ddeffe71e24d1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>meshPath</name>
      <anchorfile>classSim_1_1VisualData.html</anchorfile>
      <anchor>abb853b2ad79899a495655cc5f7c03abb</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const AL::Math::Transform &amp;</type>
      <name>meshTransform</name>
      <anchorfile>classSim_1_1VisualData.html</anchorfile>
      <anchor>ada655937884f2c57a9492bcb511dd931</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="variable">
      <type>class VisualDataImpl *</type>
      <name>a_impl</name>
      <anchorfile>classSim_1_1VisualData.html</anchorfile>
      <anchor>a7d0be1b0e0e0356718ba7478167c4dc2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::Link</name>
    <filename>classSim_1_1Link.html</filename>
    <member kind="function">
      <type></type>
      <name>Link</name>
      <anchorfile>classSim_1_1Link.html</anchorfile>
      <anchor>a0fd4ccb31aadb1276d247253bc3a2811</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~Link</name>
      <anchorfile>classSim_1_1Link.html</anchorfile>
      <anchor>a8a88495c5389b846d0f80017388a993c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const Frame *</type>
      <name>frame</name>
      <anchorfile>classSim_1_1Link.html</anchorfile>
      <anchor>ad291988367ba0c4faef7252c79244c1e</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>name</name>
      <anchorfile>classSim_1_1Link.html</anchorfile>
      <anchor>ae98b072abb27ce7b87fff061de6c74ab</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const Joint *</type>
      <name>parentJoint</name>
      <anchorfile>classSim_1_1Link.html</anchorfile>
      <anchor>aa44dac94ae31dd341ba8a59e95bf4079</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const std::vector&lt; const Joint * &gt;</type>
      <name>childrenJoints</name>
      <anchorfile>classSim_1_1Link.html</anchorfile>
      <anchor>a4593729f3286f9afe2786cd288d50723</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const MassData *</type>
      <name>mass</name>
      <anchorfile>classSim_1_1Link.html</anchorfile>
      <anchor>a3cfa98f1efd91b697e4643eaffc8e4b5</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>frictionMaterial</name>
      <anchorfile>classSim_1_1Link.html</anchorfile>
      <anchor>a7b991f3a488b748a4772ec921dd0d550</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const VisualData *</type>
      <name>visual</name>
      <anchorfile>classSim_1_1Link.html</anchorfile>
      <anchor>a6e5d0154357a37279439f3c421b112fd</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>LinkType</type>
      <name>type</name>
      <anchorfile>classSim_1_1Link.html</anchorfile>
      <anchor>ac107015f84b2f13eb35d82b97b5850a1</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="variable">
      <type>class LinkImpl *</type>
      <name>a_impl</name>
      <anchorfile>classSim_1_1Link.html</anchorfile>
      <anchor>a719b1a126cee5b7bb3b2e943ec786fb2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::Actuator</name>
    <filename>classSim_1_1Actuator.html</filename>
    <member kind="enumeration">
      <name>Type</name>
      <anchorfile>classSim_1_1Actuator.html</anchorfile>
      <anchor>a9e218acaf5f202a77e71b53ba5223e27</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LED</name>
      <anchorfile>classSim_1_1Actuator.html</anchorfile>
      <anchor>a9e218acaf5f202a77e71b53ba5223e27af3d716bc0e1744a7b2bbe425cb2e1c18</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Actuator</name>
      <anchorfile>classSim_1_1Actuator.html</anchorfile>
      <anchor>a7f23a182044b30a3ce93aa288e755ac4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Actuator</name>
      <anchorfile>classSim_1_1Actuator.html</anchorfile>
      <anchor>a2c52902d0690fc7db8b552ac664c4f67</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const Frame *</type>
      <name>frame</name>
      <anchorfile>classSim_1_1Actuator.html</anchorfile>
      <anchor>a61c806befbcbd1dac1560bf61011559a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual const std::string &amp;</type>
      <name>name</name>
      <anchorfile>classSim_1_1Actuator.html</anchorfile>
      <anchor>ac0a99ab103920f56b9645fc5d03c3e11</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>Type</type>
      <name>type</name>
      <anchorfile>classSim_1_1Actuator.html</anchorfile>
      <anchor>a0f422324aab9519bf697112654b3a87a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1Actuator.html</anchorfile>
      <anchor>aa72b7b94460f10d1628aff0d6149c8a0</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="variable">
      <type>class ActuatorImpl *</type>
      <name>a_impl</name>
      <anchorfile>classSim_1_1Actuator.html</anchorfile>
      <anchor>af20fa227028692b4816add19d17d8178</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::AngleActuator</name>
    <filename>classSim_1_1AngleActuator.html</filename>
    <member kind="function">
      <type></type>
      <name>AngleActuator</name>
      <anchorfile>classSim_1_1AngleActuator.html</anchorfile>
      <anchor>acac045e118a29f966768dd4df2e045b6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~AngleActuator</name>
      <anchorfile>classSim_1_1AngleActuator.html</anchorfile>
      <anchor>a246ef45364859ed9d501597fe10a55e5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AngleActuator *</type>
      <name>reflectedSymmetric</name>
      <anchorfile>classSim_1_1AngleActuator.html</anchorfile>
      <anchor>a3e447374ab03ba08e11988ecedd98ca3</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>reflectedSymmetricReversed</name>
      <anchorfile>classSim_1_1AngleActuator.html</anchorfile>
      <anchor>a18b4808e16bce828253059478eb22853</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>proportionalGain</name>
      <anchorfile>classSim_1_1AngleActuator.html</anchorfile>
      <anchor>acc6df3856de8e342c9227781ce2d29fd</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1AngleActuator.html</anchorfile>
      <anchor>a6df4d237c71e401865fdd682d1614293</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>startValue</name>
      <anchorfile>classSim_1_1AngleActuator.html</anchorfile>
      <anchor>a0a9ac5a01f4b706faba02962ea277d5e</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>minValue</name>
      <anchorfile>classSim_1_1AngleActuator.html</anchorfile>
      <anchor>aae525b0b312c1fdf608e1603c5f35007</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>maxValue</name>
      <anchorfile>classSim_1_1AngleActuator.html</anchorfile>
      <anchor>ad1b5d2a4a35b40486302e1695ff12933</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>maxSpeed</name>
      <anchorfile>classSim_1_1AngleActuator.html</anchorfile>
      <anchor>a16f52b6f4bcc537dce632df72d9670e0</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const Joint *</type>
      <name>controlledJoint</name>
      <anchorfile>classSim_1_1AngleActuator.html</anchorfile>
      <anchor>af4d41d506213fb0178012f50f774256c</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::CoupledActuator</name>
    <filename>classSim_1_1CoupledActuator.html</filename>
    <member kind="function">
      <type></type>
      <name>CoupledActuator</name>
      <anchorfile>classSim_1_1CoupledActuator.html</anchorfile>
      <anchor>ad3006e4db165328ad64334e2bfc211a5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~CoupledActuator</name>
      <anchorfile>classSim_1_1CoupledActuator.html</anchorfile>
      <anchor>a17aaa9d72056472755360856a713c2ba</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const CoupledActuator *</type>
      <name>reflectedSymmetric</name>
      <anchorfile>classSim_1_1CoupledActuator.html</anchorfile>
      <anchor>aeadcd762e91073ce91ffb95bd3f68f0d</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>reflectedSymmetricReversed</name>
      <anchorfile>classSim_1_1CoupledActuator.html</anchorfile>
      <anchor>a28f098256c3492eaf7d7825ba68ec1d0</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>proportionalGain</name>
      <anchorfile>classSim_1_1CoupledActuator.html</anchorfile>
      <anchor>a2b0be8928a27969db968ed61c856bfbc</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1CoupledActuator.html</anchorfile>
      <anchor>a403d9baebadd2a1284241ec665bf1d44</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>startValue</name>
      <anchorfile>classSim_1_1CoupledActuator.html</anchorfile>
      <anchor>a1dd0e4d9c2421e489dbcb382521e34fd</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>minValue</name>
      <anchorfile>classSim_1_1CoupledActuator.html</anchorfile>
      <anchor>ac77afd7ebbfb1ae412dcd5846c654be5</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>maxValue</name>
      <anchorfile>classSim_1_1CoupledActuator.html</anchorfile>
      <anchor>a0763d1f95e18dc9b895ff2e1f3dfd09f</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>maxSpeed</name>
      <anchorfile>classSim_1_1CoupledActuator.html</anchorfile>
      <anchor>a682b436a38ece3925e88c85b0c29e532</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; std::pair&lt; const Joint *, float &gt; &gt;</type>
      <name>controlledJointAndRatios</name>
      <anchorfile>classSim_1_1CoupledActuator.html</anchorfile>
      <anchor>a276823033f92c92080388215e2c0fb24</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::TorqueActuator</name>
    <filename>classSim_1_1TorqueActuator.html</filename>
    <member kind="function">
      <type></type>
      <name>TorqueActuator</name>
      <anchorfile>classSim_1_1TorqueActuator.html</anchorfile>
      <anchor>a9e3856a412022f1255cbfced45906c69</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~TorqueActuator</name>
      <anchorfile>classSim_1_1TorqueActuator.html</anchorfile>
      <anchor>a78f4bd9ceb6f01ab814d832a9399f3d4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const TorqueActuator *</type>
      <name>reflectedSymmetric</name>
      <anchorfile>classSim_1_1TorqueActuator.html</anchorfile>
      <anchor>aedfb6c348d8e1b9b7a61eb26de53baf3</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>reflectedSymmetricReversed</name>
      <anchorfile>classSim_1_1TorqueActuator.html</anchorfile>
      <anchor>ab60aa0aa06578975784bde17c1b430b8</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>proportionalGain</name>
      <anchorfile>classSim_1_1TorqueActuator.html</anchorfile>
      <anchor>a78b8b522cfdfdd76bc10aecc022be367</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>derivativeGain</name>
      <anchorfile>classSim_1_1TorqueActuator.html</anchorfile>
      <anchor>a00898ca51b9efa4538198bd3fd8a4a8e</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1TorqueActuator.html</anchorfile>
      <anchor>af0f32ba451b0ed6a702b70fc4de0cc34</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>startValue</name>
      <anchorfile>classSim_1_1TorqueActuator.html</anchorfile>
      <anchor>a1adbdfbc44a06cf41b6fb9f1ef2cbd33</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>minValue</name>
      <anchorfile>classSim_1_1TorqueActuator.html</anchorfile>
      <anchor>adf0acf76d2a0146ae5f02c069872409a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>maxValue</name>
      <anchorfile>classSim_1_1TorqueActuator.html</anchorfile>
      <anchor>acdd2c70ce34232e2cf80501a41a14600</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const Joint *</type>
      <name>controlledJoint</name>
      <anchorfile>classSim_1_1TorqueActuator.html</anchorfile>
      <anchor>a19b8fe02e2478d71dc5d9cef6f51b9b5</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::AngleSpeedActuator</name>
    <filename>classSim_1_1AngleSpeedActuator.html</filename>
    <member kind="function">
      <type></type>
      <name>AngleSpeedActuator</name>
      <anchorfile>classSim_1_1AngleSpeedActuator.html</anchorfile>
      <anchor>aab1b7405e5590a867abefbc441913d33</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~AngleSpeedActuator</name>
      <anchorfile>classSim_1_1AngleSpeedActuator.html</anchorfile>
      <anchor>a811ef3c28fcca5cf4041270f2919493d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const AngleSpeedActuator *</type>
      <name>reflectedSymmetric</name>
      <anchorfile>classSim_1_1AngleSpeedActuator.html</anchorfile>
      <anchor>a5ad23944abb4d80e578d4642084611b6</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>reflectedSymmetricReversed</name>
      <anchorfile>classSim_1_1AngleSpeedActuator.html</anchorfile>
      <anchor>a3b3e33ebdb09c72451d289527a782db4</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>derivativeGain</name>
      <anchorfile>classSim_1_1AngleSpeedActuator.html</anchorfile>
      <anchor>a2e0610f044a81395512886b1b700b795</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1AngleSpeedActuator.html</anchorfile>
      <anchor>ab6b7324b02804d207b5be72799e02ac8</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>startValue</name>
      <anchorfile>classSim_1_1AngleSpeedActuator.html</anchorfile>
      <anchor>aa5893eb65da8c17db2777aa9a9f95498</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>minValue</name>
      <anchorfile>classSim_1_1AngleSpeedActuator.html</anchorfile>
      <anchor>ae4a58df9f0c4b850ebf4656586e171a1</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>maxValue</name>
      <anchorfile>classSim_1_1AngleSpeedActuator.html</anchorfile>
      <anchor>a377c057f3e4563bfdb556a86051f1eac</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const Joint *</type>
      <name>controlledJoint</name>
      <anchorfile>classSim_1_1AngleSpeedActuator.html</anchorfile>
      <anchor>a8e09750ad295124cc7e2b3c13481a421</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::WheelTorqueActuator</name>
    <filename>classSim_1_1WheelTorqueActuator.html</filename>
    <member kind="function">
      <type></type>
      <name>WheelTorqueActuator</name>
      <anchorfile>classSim_1_1WheelTorqueActuator.html</anchorfile>
      <anchor>a4e10679d6af9fcccfd1ff3697264b247</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~WheelTorqueActuator</name>
      <anchorfile>classSim_1_1WheelTorqueActuator.html</anchorfile>
      <anchor>aa76de1d61bd4cb33b547fd64d0a28cf9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>proportionalGain</name>
      <anchorfile>classSim_1_1WheelTorqueActuator.html</anchorfile>
      <anchor>a83767f0ad50457a217a3489069af0cbb</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>derivativeGain</name>
      <anchorfile>classSim_1_1WheelTorqueActuator.html</anchorfile>
      <anchor>a9aa7f8571cc1e603f3f132bc0f64199c</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1WheelTorqueActuator.html</anchorfile>
      <anchor>a9a421f7b6e72a1c95eef0f5732c161e4</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>maxTorque</name>
      <anchorfile>classSim_1_1WheelTorqueActuator.html</anchorfile>
      <anchor>a254fd6a74b2525637123653c5e1e64a6</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const Joint *</type>
      <name>controlledJoint</name>
      <anchorfile>classSim_1_1WheelTorqueActuator.html</anchorfile>
      <anchor>ac7a916377759b1c03c0a2be9a112973c</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::WheelVelocityActuator</name>
    <filename>classSim_1_1WheelVelocityActuator.html</filename>
    <member kind="function">
      <type></type>
      <name>WheelVelocityActuator</name>
      <anchorfile>classSim_1_1WheelVelocityActuator.html</anchorfile>
      <anchor>a245096d9c595764a5b5fe830c9567104</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~WheelVelocityActuator</name>
      <anchorfile>classSim_1_1WheelVelocityActuator.html</anchorfile>
      <anchor>a92fa87bdf281174e6f355bfedd5e3781</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>derivativeGain</name>
      <anchorfile>classSim_1_1WheelVelocityActuator.html</anchorfile>
      <anchor>ab5b166d6415e9b34c1c585c953ec0f71</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1WheelVelocityActuator.html</anchorfile>
      <anchor>ab75ba78b6fbf120ff9be2a46fb5924df</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>maxVelocity</name>
      <anchorfile>classSim_1_1WheelVelocityActuator.html</anchorfile>
      <anchor>acd94acf9f1367d6c7fb76be554e52f08</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const Joint *</type>
      <name>controlledJoint</name>
      <anchorfile>classSim_1_1WheelVelocityActuator.html</anchorfile>
      <anchor>a1d3b61d3276ca10762e7e41065c87c41</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::LEDActuator</name>
    <filename>classSim_1_1LEDActuator.html</filename>
    <member kind="function">
      <type></type>
      <name>LEDActuator</name>
      <anchorfile>classSim_1_1LEDActuator.html</anchorfile>
      <anchor>afd725fe463164631acd9c45a26c26d76</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~LEDActuator</name>
      <anchorfile>classSim_1_1LEDActuator.html</anchorfile>
      <anchor>a08b78863ac25c0bfe973f3bb16d43877</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1LEDActuator.html</anchorfile>
      <anchor>acdb5b13ee771d1f9770968381b9193a6</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>Color</type>
      <name>color</name>
      <anchorfile>classSim_1_1LEDActuator.html</anchorfile>
      <anchor>aab21fc12fc064ccf4cb3aeb3f5336bd3</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::Sensor</name>
    <filename>classSim_1_1Sensor.html</filename>
    <member kind="enumeration">
      <name>Type</name>
      <anchorfile>classSim_1_1Sensor.html</anchorfile>
      <anchor>a7827135d79637a0b67e4a025b87e201b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Sensor</name>
      <anchorfile>classSim_1_1Sensor.html</anchorfile>
      <anchor>abf604cb8581f32285cb710b754c7c8f3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Sensor</name>
      <anchorfile>classSim_1_1Sensor.html</anchorfile>
      <anchor>af756e6ad5ecba7bf61640832ab0b793b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const Frame *</type>
      <name>frame</name>
      <anchorfile>classSim_1_1Sensor.html</anchorfile>
      <anchor>ac4070229e81f564becd3d0f8412062af</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual const std::string &amp;</type>
      <name>name</name>
      <anchorfile>classSim_1_1Sensor.html</anchorfile>
      <anchor>a45be1b49d0dd1625f196cad761ef81de</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>Type</type>
      <name>type</name>
      <anchorfile>classSim_1_1Sensor.html</anchorfile>
      <anchor>a35056409309406024c9c5520b792dfe1</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1Sensor.html</anchorfile>
      <anchor>a06658ab25196b0bbcd35033c9d270a57</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="variable">
      <type>class SensorImpl *</type>
      <name>a_impl</name>
      <anchorfile>classSim_1_1Sensor.html</anchorfile>
      <anchor>adaa64c547efbee76ba7b99187d56122c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::DCMSensor</name>
    <filename>classSim_1_1DCMSensor.html</filename>
    <member kind="function">
      <type></type>
      <name>DCMSensor</name>
      <anchorfile>classSim_1_1DCMSensor.html</anchorfile>
      <anchor>a789f104e1e9064294e2c7c2a63bd4684</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~DCMSensor</name>
      <anchorfile>classSim_1_1DCMSensor.html</anchorfile>
      <anchor>a60650d2be69e17fbaed68d3efd8c717d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const std::vector&lt; std::string &gt; &amp;</type>
      <name>dcmKeys</name>
      <anchorfile>classSim_1_1DCMSensor.html</anchorfile>
      <anchor>a556d792a6f5d467aec1b5335ca5fd358</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1DCMSensor.html</anchorfile>
      <anchor>ae1e692d9c04f1954ab0b5ce2af7740e2</anchor>
      <arglist>() const =0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::AngleSensor</name>
    <filename>classSim_1_1AngleSensor.html</filename>
    <member kind="function">
      <type></type>
      <name>AngleSensor</name>
      <anchorfile>classSim_1_1AngleSensor.html</anchorfile>
      <anchor>a2e4d22ed89400fd30a51d1f531a62b61</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~AngleSensor</name>
      <anchorfile>classSim_1_1AngleSensor.html</anchorfile>
      <anchor>af04e615adc8ed76a48b9017438370001</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1AngleSensor.html</anchorfile>
      <anchor>a400c2409ef27f0bfa5041560d59db4fe</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::CoupledSensor</name>
    <filename>classSim_1_1CoupledSensor.html</filename>
    <member kind="function">
      <type></type>
      <name>CoupledSensor</name>
      <anchorfile>classSim_1_1CoupledSensor.html</anchorfile>
      <anchor>ae3538f4f8811f139993ca5890c0dc0b2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~CoupledSensor</name>
      <anchorfile>classSim_1_1CoupledSensor.html</anchorfile>
      <anchor>ae968d713aac290e31a80b9744bf720b4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1CoupledSensor.html</anchorfile>
      <anchor>ad7fdcd42b6259feb926d7964cd32eb4b</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::TorqueSensor</name>
    <filename>classSim_1_1TorqueSensor.html</filename>
    <member kind="function">
      <type></type>
      <name>TorqueSensor</name>
      <anchorfile>classSim_1_1TorqueSensor.html</anchorfile>
      <anchor>aae1abbb0e812657c315a03930eb65318</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~TorqueSensor</name>
      <anchorfile>classSim_1_1TorqueSensor.html</anchorfile>
      <anchor>ab2a55a8a7f63500d544a3bb3889b623d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1TorqueSensor.html</anchorfile>
      <anchor>adaffd58a655e0c4033cd4ba7887bbcbf</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::AngleSpeedSensor</name>
    <filename>classSim_1_1AngleSpeedSensor.html</filename>
    <member kind="function">
      <type></type>
      <name>AngleSpeedSensor</name>
      <anchorfile>classSim_1_1AngleSpeedSensor.html</anchorfile>
      <anchor>a131d5706a2dd8f44d4b82fd1715b973a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~AngleSpeedSensor</name>
      <anchorfile>classSim_1_1AngleSpeedSensor.html</anchorfile>
      <anchor>a338b36e6c137a3d6e475e5a8d731fb84</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1AngleSpeedSensor.html</anchorfile>
      <anchor>a3e74902d7204c9be35aa27f23f37a267</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::WheelVelocitySensor</name>
    <filename>classSim_1_1WheelVelocitySensor.html</filename>
    <member kind="function">
      <type></type>
      <name>WheelVelocitySensor</name>
      <anchorfile>classSim_1_1WheelVelocitySensor.html</anchorfile>
      <anchor>ad347433dac39b0e50087aaaf16f9325e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~WheelVelocitySensor</name>
      <anchorfile>classSim_1_1WheelVelocitySensor.html</anchorfile>
      <anchor>a7b552624603810161b3a545bb4dc3373</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1WheelVelocitySensor.html</anchorfile>
      <anchor>a7b5868183549ee2a22f64971f3a7bd53</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::CameraSensor</name>
    <filename>classSim_1_1CameraSensor.html</filename>
    <member kind="function">
      <type></type>
      <name>CameraSensor</name>
      <anchorfile>classSim_1_1CameraSensor.html</anchorfile>
      <anchor>aa2316a46a00bc6b9fb452c3ba664c70f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~CameraSensor</name>
      <anchorfile>classSim_1_1CameraSensor.html</anchorfile>
      <anchor>a28da96147d0395fdb76b4cc6bc1ca4c7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1CameraSensor.html</anchorfile>
      <anchor>a3f557d42e5937c493b3d0776dbcc91ff</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>width</name>
      <anchorfile>classSim_1_1CameraSensor.html</anchorfile>
      <anchor>ad28c94e78a1a1ba53dfaac3e778a52ea</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>height</name>
      <anchorfile>classSim_1_1CameraSensor.html</anchorfile>
      <anchor>a4927aeae3e8effd5be456f4559e8e66c</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::FSRSensor</name>
    <filename>classSim_1_1FSRSensor.html</filename>
    <member kind="function">
      <type></type>
      <name>FSRSensor</name>
      <anchorfile>classSim_1_1FSRSensor.html</anchorfile>
      <anchor>a6b763e22a85bb8e168fee1673a8892ad</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~FSRSensor</name>
      <anchorfile>classSim_1_1FSRSensor.html</anchorfile>
      <anchor>aee2024ae39b48452a2a0f7b5cba09c0a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1FSRSensor.html</anchorfile>
      <anchor>ab493e32765c5c73e3de87aa1bc69e0e0</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::InertialSensor</name>
    <filename>classSim_1_1InertialSensor.html</filename>
    <member kind="function">
      <type></type>
      <name>InertialSensor</name>
      <anchorfile>classSim_1_1InertialSensor.html</anchorfile>
      <anchor>aee93c25f002635eb1ce92e8dce0c2945</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~InertialSensor</name>
      <anchorfile>classSim_1_1InertialSensor.html</anchorfile>
      <anchor>a77c9470bde25a0f4577c6ed4c84dfe6c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1InertialSensor.html</anchorfile>
      <anchor>acebeb0719af4b4f35b2280dd2c69c727</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::SonarSensor</name>
    <filename>classSim_1_1SonarSensor.html</filename>
    <member kind="function">
      <type></type>
      <name>SonarSensor</name>
      <anchorfile>classSim_1_1SonarSensor.html</anchorfile>
      <anchor>a1eb8ae838d590e913fdeb8091dea311f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~SonarSensor</name>
      <anchorfile>classSim_1_1SonarSensor.html</anchorfile>
      <anchor>ad65ab052c443c5d5a68e19149fe3b932</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1SonarSensor.html</anchorfile>
      <anchor>a93d9bb25502357bc9f84d23db5433ab0</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::BumperSensor</name>
    <filename>classSim_1_1BumperSensor.html</filename>
    <member kind="function">
      <type></type>
      <name>BumperSensor</name>
      <anchorfile>classSim_1_1BumperSensor.html</anchorfile>
      <anchor>ac64e4726e523db9642e5cf65afb4486e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~BumperSensor</name>
      <anchorfile>classSim_1_1BumperSensor.html</anchorfile>
      <anchor>a8850ae6cb151d180ef5603727acfb06a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1BumperSensor.html</anchorfile>
      <anchor>abb27c0fefe7728799d4ec379ffe03320</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::TactileSensor</name>
    <filename>classSim_1_1TactileSensor.html</filename>
    <member kind="function">
      <type></type>
      <name>TactileSensor</name>
      <anchorfile>classSim_1_1TactileSensor.html</anchorfile>
      <anchor>a6641afb13632b3209db8018750ea7207</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~TactileSensor</name>
      <anchorfile>classSim_1_1TactileSensor.html</anchorfile>
      <anchor>a1e513e0cfd057eab9da12d605649afc0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1TactileSensor.html</anchorfile>
      <anchor>a013bee80926f0bec87c0b6041536ccc8</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::DepthInfraredSensor</name>
    <filename>classSim_1_1DepthInfraredSensor.html</filename>
    <member kind="function">
      <type></type>
      <name>DepthInfraredSensor</name>
      <anchorfile>classSim_1_1DepthInfraredSensor.html</anchorfile>
      <anchor>a66248b9d4dff4c55cf47a322e96ee5bd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~DepthInfraredSensor</name>
      <anchorfile>classSim_1_1DepthInfraredSensor.html</anchorfile>
      <anchor>a852fd31caeaac38a2cc3c87e81d7178b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>bufferSize</name>
      <anchorfile>classSim_1_1DepthInfraredSensor.html</anchorfile>
      <anchor>a32a96ace6a3191a843edd6550777f3a2</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::HALInterface</name>
    <filename>classSim_1_1HALInterface.html</filename>
    <member kind="function">
      <type></type>
      <name>HALInterface</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a1131bb68f81e95bd450bc9dfc5ea3021</anchor>
      <arglist>(const Model *model, int NAOqiId=9559)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~HALInterface</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a7916a27bbbdf0d1412aed89a101c6e6f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>fetchAngleActuatorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a35b9485417544e3eaf5f55939f6d273c</anchor>
      <arglist>(const AngleActuator *angleActuator)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>fetchCoupledActuatorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a61efc48d21f049295b7b5ebad8922016</anchor>
      <arglist>(const CoupledActuator *coupledActuator)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>fetchTorqueActuatorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a6d347b3fcc115bb97d0de96fa3a0d8b2</anchor>
      <arglist>(const TorqueActuator *torqueActuator)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>fetchAngleSpeedActuatorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a504a2c82e6ae25aef595513f709f6bda</anchor>
      <arglist>(const AngleSpeedActuator *angleSpeedActuator)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>fetchWheelTorqueActuatorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a1e199ded48c757211560e506019a7d19</anchor>
      <arglist>(const WheelTorqueActuator *wheelTorqueActuator)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>fetchWheelVelocityActuatorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a23832f2832ec1fbe9f4bf7d391434b10</anchor>
      <arglist>(const WheelVelocityActuator *wheelVelocityActuator)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>fetchLEDActuatorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>ad3c315342d5049ef00881af312907ea8</anchor>
      <arglist>(const LEDActuator *ledActuator)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>fetchAngleActuatorStiffness</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a033f0e2c40112486c1c3cee5d3af37f6</anchor>
      <arglist>(const AngleActuator *angleActuator)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>fetchCoupledActuatorStiffness</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a010054c947dd11a26345f1d715b8da0b</anchor>
      <arglist>(const CoupledActuator *coupledActuator)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>fetchTorqueActuatorStiffness</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a7f5a327b98b66f48b85f65169a9e2aa3</anchor>
      <arglist>(const TorqueActuator *torqueActuator)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>fetchAngleSpeedActuatorStiffness</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>af0c30b28f82cc269fa367232d195c2d7</anchor>
      <arglist>(const AngleSpeedActuator *angleSpeedActuator)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>fetchWheelTorqueActuatorStiffness</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a32b06504f27950646b6caa59fbe4c96c</anchor>
      <arglist>(const WheelTorqueActuator *wheelTorqueActuator)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>fetchWheelVelocityActuatorStiffness</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>aab4caf0cee374073df96346fd064621e</anchor>
      <arglist>(const WheelVelocityActuator *wheelVelocityActuator)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendAngleSensorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>adbf9005e4a3b2318227834a067da32dd</anchor>
      <arglist>(const AngleSensor *angleSensor, float value)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendCoupledSensorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a0c78c12ff88b36468e8ee4b8af745768</anchor>
      <arglist>(const CoupledSensor *coupledSensor, float value)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendTorqueSensorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>aa672f0341407cfaddb6758c5b9e4ae8e</anchor>
      <arglist>(const TorqueSensor *torqueSensor, float value)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendAngleSpeedSensorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>ad7bfd6c4f702d631edaa57794987bb2b</anchor>
      <arglist>(const AngleSpeedSensor *angleSpeedSensor, float value)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendWheelVelocitySensorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>ad8426d98c109693293a06e113659a044</anchor>
      <arglist>(const WheelVelocitySensor *wheelVelocitySensor, float value)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendCameraSensorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a6390c6e4ed46bf36c1802caa3899193b</anchor>
      <arglist>(const CameraSensor *cameraSensor, const unsigned char *img)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendFSRSensorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a9b06f6cdf7bc169bab4b1942d8c5e66b</anchor>
      <arglist>(const FSRSensor *fsrSensor, float value)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendBumperSensorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>aa611a7aad5f2c89630549e98c8044530</anchor>
      <arglist>(const BumperSensor *bumperSensor, float value)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendTactileSensorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a3790c7537e7640677770c5a79509e043</anchor>
      <arglist>(const TactileSensor *tactileSensor, float value)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendDepthInfraredSensorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>ab502c935d97d5232cd3a5c6a5dc1f507</anchor>
      <arglist>(const DepthInfraredSensor *depthInfraredSensor, float value)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendInertialSensorValues</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>aacd08d5b2a1c649548bc25623d43319a</anchor>
      <arglist>(const InertialSensor *inertialSensor, std::vector&lt; const float * &gt; values)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendSonarSensorValues</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a6cd8be6a0339971ab3f94f3cbcc0536b</anchor>
      <arglist>(const SonarSensor *sonarSensor, std::vector&lt; const float * &gt; values)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendInertialSensorValues</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a0af18295eb5d66b4c60298c8315af863</anchor>
      <arglist>(const InertialSensor *inertialSensor, std::vector&lt; float &gt; values)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendSonarSensorValues</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>ae209b8f46b0dca54c577fb0876694ec7</anchor>
      <arglist>(const SonarSensor *sonarSensor, std::vector&lt; float &gt; values)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>sendSonarSensorValue</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a0c6813fab375a61a22376ddd3bae6e84</anchor>
      <arglist>(const SonarSensor *sonarSensor, float value)</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>activeCamera</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>afd2b5824e2a395d3f8fad0b5f5918cdd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>cameraBufferSize</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a1042fc4987322398512da1a238bd33d4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>cameraBufferSize</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>abb938939ed8aab163b11877556de3be3</anchor>
      <arglist>(const CameraSensor *camera, int *cameraBufferSize, int *width, int *height)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>cameraBufferSize</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>a917617d4aa9b40c29dd03b1dbb623ccb</anchor>
      <arglist>(const CameraSensor *camera)</arglist>
    </member>
    <member kind="variable">
      <type>class HALInterfaceImpl *</type>
      <name>a_impl</name>
      <anchorfile>classSim_1_1HALInterface.html</anchorfile>
      <anchor>aad876bd666a3bf6307fde2bc55932970</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Sim::NAOqiLauncher</name>
    <filename>classSim_1_1NAOqiLauncher.html</filename>
    <member kind="function">
      <type></type>
      <name>NAOqiLauncher</name>
      <anchorfile>classSim_1_1NAOqiLauncher.html</anchorfile>
      <anchor>ae1915f4eaa6ebc59eb225b89d862b873</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~NAOqiLauncher</name>
      <anchorfile>classSim_1_1NAOqiLauncher.html</anchorfile>
      <anchor>ab6d1465530be504435e3a3f11fe7e92f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>launch</name>
      <anchorfile>classSim_1_1NAOqiLauncher.html</anchorfile>
      <anchor>a2cb0767cef9bb48e872643f5c686d11f</anchor>
      <arglist>(const Model *model, int NAOqiId=9559, const std::string &amp;naoqiPath=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>stop</name>
      <anchorfile>classSim_1_1NAOqiLauncher.html</anchorfile>
      <anchor>a8dcda83032e333e760df9e4c1ecfe93f</anchor>
      <arglist>(int id)</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>Simulator-sdk Documentation</title>
    <filename>index</filename>
    <docanchor file="index">overview_sec</docanchor>
  </compound>
</tagfile>
