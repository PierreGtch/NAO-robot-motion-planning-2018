/**
 * @author Pierre-Emmanuel VIEL
 * Copyright (c) 2011 Aldebaran Robotics
 *
 */

#ifndef _WIN32
#include <signal.h>
#endif

#include <boost/shared_ptr.hpp>
#include <alcommon/albroker.h>
#include <alcommon/almodule.h>
#include <alcommon/albrokermanager.h>
#include <alcommon/altoolsmain.h>

#include "genericvideomodule.h"

#ifndef GENERICVIDEOMODULE_IS_REMOTE
#  define ALCALL
#else
# ifdef _WIN32
#  define ALCALL __declspec(dllexport)
# else
#  define ALCALL
# endif
#endif

extern "C"
{
ALCALL int _createModule(boost::shared_ptr<AL::ALBroker> pBroker)
{
  // init broker with the main broker instance
  // from the parent executable
  AL::ALBrokerManager::setInstance(pBroker->fBrokerManager.lock());
  AL::ALBrokerManager::getInstance()->addBroker(pBroker);


  // create module instances
  AL::ALModule::createModule<AL::GenericVideoModule>(pBroker,"GenericVideoModule" );

  return 0;
}

ALCALL int _closeModule()
{
  return 0;
}

} // extern "C"


#ifdef GENERICVIDEOMODULE_IS_REMOTE

int main(int argc, char *argv[])
{
  // pointer on createModule
  TMainType sig;
  sig = &_createModule;

  // call main
  ALTools::mainFunction("genericvideomodule", argc, argv, sig);
}

#endif
