/**
* Copyright (c) 2011 Aldebaran Robotics. All Rights Reserved
*
* \file ledsexample.cpp
* \brief Play with NAO's leds.
*
* A simple example showing how to use NAO's leds using ALLedsProxy.
* This example launches a colorful animation on NAO's leds.
* We use here a specialized proxy to the ALLeds module.
*/

#include <iostream>
#include <alerror/alerror.h>
#include <alproxies/alledsproxy.h>

int main(int argc, char* argv[]) {

  if(argc != 2)
  {
    std::cerr << "Wrong number of arguments!" << std::endl;
    std::cerr << "Usage: movehead NAO_IP" << std::endl;
    exit(2);
  }

  try {
    /** Create a ALLedsProxy to call the methods to deal with NAO's leds.
    * Arguments for the constructor are:
    * - IP adress of the robot
    * - port on which NAOqi is listening, by default 9559
    */
    AL::ALLedsProxy leds(argv[1], 9559);

    /** Set the duration of the animation. */
    float duration = 3.0f;
    /** Play a green / yellow / red animation on all of NAO's leds. */
    leds.rasta(duration);
  }
  catch (const AL::ALError& e) {
    std::cerr << "Caught exception: " << e.what() << std::endl;
    exit(1);
  }
  exit(0);
}
