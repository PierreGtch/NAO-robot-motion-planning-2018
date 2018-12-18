/**
* Copyright (c) 2011 Aldebaran Robotics. All Rights Reserved
*
* \file testhelloworld.cpp
* \brief Test how to call a module from the outside.
*
* An example on how to call the example "HelloWorld" module from the outside.
*
*/

#include <iostream>
#include <alerror/alerror.h>
#include <alcommon/alproxy.h>

int main(int argc, char* argv[]) {
  if(argc != 2)
  {
    std::cerr << "Wrong number of arguments!" << std::endl;
    std::cerr << "Usage: testhelloworld NAO_IP" << std::endl;
    exit(2);
  }

  const std::string robotIP = argv[1];
  int port = 9559;

  try {
    /** Create a generic proxy to "HelloWorld" module.
    * Arguments for the constructor are
    * - name of the module
    * - string containing the IP adress of the robot
    * - port (default is 9559)
    */
    boost::shared_ptr<AL::ALProxy> testProxy
    = boost::shared_ptr<AL::ALProxy>(new AL::ALProxy("HelloWorld", robotIP, port));

    /** Call the sayHello method from the module using its bound name.
    * Since it returns nothing, use the callVoid method.
    */
    testProxy->callVoid("sayHello");

    /** Call the sayText method from the module using its bound name and giving
    * the right argument. Since it returns nothing, use the callVoid method.
    */
    testProxy->callVoid("sayText", std::string("This is a test."));

    /** Call the sayTextAndReturnLength method from the module using its bound
    * name and giving the right argument.
    * Since the method returns something, use the call method templated with
    * the right return type.
    */
    int sentenceLength = testProxy->call<int>("sayTextAndReturnLength",
                         std::string("This is another test"));
    std::cout << "Sentence length is " << sentenceLength << std::endl;
  }
  catch (const AL::ALError& e) {
    std::cerr << e.what() << std::endl;
  }
}
