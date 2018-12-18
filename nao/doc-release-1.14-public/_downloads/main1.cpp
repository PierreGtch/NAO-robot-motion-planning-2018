/**
 * @author Vincent Meserette
 * Copyright (c) Aldebaran Robotics 2010 All Rights Reserved
*/

#ifndef _WIN32
#include <signal.h>
#endif

#include <boost/shared_ptr.hpp>
#include <alcommon/albroker.h>
#include <alcommon/almodule.h>
#include <alcommon/albrokermanager.h>
#include <alcommon/altoolsmain.h>
#include "alsoundplayback.h"

#ifdef SOUNDPLAYBACK_IS_REMOTE
# define ALCALL
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
  AL::ALModule::createModule<ALSoundPlayback>(pBroker,"ALSoundPlayback");
  return 0;
}

ALCALL int _closeModule()
{
  return 0;
}

} // extern "C"


#ifdef SOUNDPLAYBACK_IS_REMOTE

int main(int argc, char *argv[] )
{
  // pointer on createModule
  TMainType sig;
  sig = &_createModule;

  // call main
  ALTools::mainFunction("alsoundplayback", argc, argv, sig);
}

#endif
