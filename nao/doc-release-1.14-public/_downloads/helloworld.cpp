/**
 * Copyright (c) 2011 Aldebaran Robotics
 */

#include "helloworld.h"
#include <iostream>
#include <alcommon/albroker.h>
#include <qi/log.hpp>
#include <alproxies/altexttospeechproxy.h>

using namespace AL;

HelloWorld::HelloWorld(boost::shared_ptr<ALBroker> broker, const std::string& name):
  ALModule(broker, name)
{
  /** Describe the module here. This will appear on the webpage*/
  setModuleDescription("A hello world module.");

  /** Define callable methods with their descriptions:
  * This makes the method available to other cpp modules
  * and to python.
  * The name given will be the one visible from outside the module.
  * This method has no parameters or return value to describe
  */
  functionName("sayHello", getName(), "Say hello to the world");
  BIND_METHOD(HelloWorld::sayHello);

  functionName("sayText", getName(), "Say a given sentence.");
  /**
  * This enables to document the parameters of the method.
  * It is not compulsory to write this line.
  */
  addParam("toSay", "The sentence to be said.");
  BIND_METHOD(HelloWorld::sayText);

  functionName("sayTextAndReturnLength", getName(),
               "Say a given sentence, and return its length");
  addParam("toSay", "The sentence to be said.");
  /**
  * This enables to document the return of the method.
  * It is not compulsory to write this line.
  */
  setReturn("sentenceLength", "Length of the said sentence.");
  BIND_METHOD(HelloWorld::sayTextAndReturnLength);

  // If you had other methods, you could bind them here...
  /** Bound methods can only take const ref arguments of basic types,
  * or AL::ALValue or return basic types or an AL::ALValue.
  */
}

HelloWorld::~HelloWorld() {}

void HelloWorld::init()
{
  /** Init is called just after construction.
  *
  * Here we call sayHello, so that the module does something
  * without us having to explicitly call sayHello from somewhere else.
  */
  sayHello();
}


void HelloWorld::sayHello()
{
  const std::string phraseToSay("Hello world");
  std::cout << "Saying hello to the console ..." << std::endl;
  std::cout << phraseToSay << std::endl;
  std::cout << "Calling say method of ALTextToSpeech module ..." << std::endl;
  try
  {
    /** Create a proxy to TTS.*/
    ALTextToSpeechProxy tts(getParentBroker());
    /** Call the say method. */
    tts.say(phraseToSay);
    /** Note: on the desktop you won't hear anything, but you should see
    * some logs on the naoqi you are connected to.
    */
  }
  catch(const AL::ALError&) // no object name given to avoid warning
  {
    qiLogError("module.example") << "Could not get proxy to ALTextToSpeech" << std::endl;
  }

  qiLogInfo("module.example") << "Done !" << std::endl;
}

void HelloWorld::sayText(const std::string &toSay) {
  std::cout << "Saying the phrase in the console..." << std::endl;
  std::cout << toSay << std::endl;
  try
  {
    /** Create a proxy to TTS.*/
    ALTextToSpeechProxy tts(getParentBroker());
    /** Call the say method. */
    tts.say(toSay);
    /** Note: on the desktop you won't hear anything, but you should see
    * some logs on the naoqi you are connected to. */
  }
  catch(const AL::ALError&)
  {
    qiLogError("module.example") << "Could not get proxy to ALTextToSpeech" << std::endl;
  }
}

int HelloWorld::sayTextAndReturnLength(const std::string &toSay) {
  /** Say the sentence.*/
  sayText(toSay);
  /** Return its length.*/
  return toSay.length();
}

