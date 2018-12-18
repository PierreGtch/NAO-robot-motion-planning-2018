/**
* @author Gwennael Gate
* Copyright (c) Aldebaran Robotics 2010
*/

#ifndef SPEECHBASEDREACTION_H
#define SPEECHBASEDREACTION_H

#include <boost/shared_ptr.hpp>
#include <alcommon/almodule.h>
#include <string>
#include <alproxies/almemoryproxy.h>

namespace AL
{
  class ALBroker;
}

class ALSpeechBasedReaction : public AL::ALModule
{

public:

  ALSpeechBasedReaction(boost::shared_ptr<AL::ALBroker> broker, const std::string& name);
  virtual ~ALSpeechBasedReaction();

  void startRecognition();

  void stopRecognition();

  void onSpeechRecognized(const std::string& name,
                          const AL::ALValue& val,
                          const std::string& myName);

private:
  std::string fCommand;
  boost::shared_ptr<AL::ALProxy> fTextToSpeech;
  boost::shared_ptr<AL::ALMemoryProxy> fMemory;
  boost::shared_ptr<AL::ALProxy> fSpeechRecognition;
};

#endif  // SPEECHBASEDREACTION_H

