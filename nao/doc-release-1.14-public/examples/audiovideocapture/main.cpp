/**
 * \section Author
 * @author Victor Paleologue
 */

#include <signal.h>
#include <alcommon/albroker.h>
#include <alcommon/almodule.h>
#include <alcommon/albrokermanager.h>
#include <alcommon/altoolsmain.h>
#include "avcaptureremote.h"

#ifdef AVCAPTURE_IS_REMOTE
# define ALCALL
#else
# ifdef _WIN32
#  define ALCALL __declspec(dllexport)
# else
#  define ALCALL
# endif
#endif

ALCALL int _createModule(boost::shared_ptr<AL::ALBroker> pBroker)
{
  // init broker with the main broker instance
  // from the parent executable
  AL::ALBrokerManager::setInstance(pBroker->fBrokerManager.lock());
  AL::ALBrokerManager::getInstance()->addBroker(pBroker);
  AL::ALModule::createModule<AVCaptureRemote>(pBroker, "AVCaptureRemote");
  return 0;
}

ALCALL int _closeModule()
{
  return 0;
}


#ifdef AVCAPTURE_IS_REMOTE

int main(int argc, char *argv[])
{
  // pointer to createModule
  TMainType sig;
  sig = &_createModule;

  // call main
  ALTools::mainFunction("AVCapture", argc, argv, sig);
}
#endif

