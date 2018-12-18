/**
* @author Gwennael Gate
* Copyright (c) Aldebaran Robotics 2010
*/

#ifndef SOUNDBASEDREACTION_H
#define SOUNDBASEDREACTION_H

#include <boost/shared_ptr.hpp>
#include <alcommon/almodule.h>
#include <string>
#include <alproxies/altexttospeechproxy.h>
#include "alaudio/alsoundextractor.h"

using namespace AL;

class ALSoundBasedReaction : public ALSoundExtractor
{
public:

  ALSoundBasedReaction(boost::shared_ptr<ALBroker> broker,
                       const std::string & name);
  virtual ~ALSoundBasedReaction();

  void init();

  void process(const int & nbOfChannels,
               const int & nbrOfSamplesByChannel,
               const AL_SOUND_FORMAT * buffer,
               const ALValue & timeStamp);

private:
  ALTextToSpeechProxy fProxyToTextToSpeech;
};

#endif  // SOUNDBASEDREACTION_H

