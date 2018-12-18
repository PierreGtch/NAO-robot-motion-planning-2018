/**
* @author Gwennael Gate
* Copyright (c) Aldebaran Robotics 2010
*/

#include "alspeechbasedreaction.h"

#include <alvalue/alvalue.h>
#include <alcommon/alproxy.h>
#include <alcommon/albroker.h>
#include <iostream>


ALSpeechBasedReaction::ALSpeechBasedReaction(
  boost::shared_ptr<AL::ALBroker> broker,
  const std::string& name) : AL::ALModule(broker, name)
{
  /// This line will display a description of this module on the web page of the robot
  setModuleDescription("This module launch a text to speech command when a "
                       "specific voice command is heard. To start "
                       "this module, call its startRecognition() method in Choregraphe.");

  /// Class functions that need to be bound to be called in Python or by remote processes.
  functionName("startRecognition",
               getName(),
               "This function will launch the ASR engine.");
  BIND_METHOD(ALSpeechBasedReaction::startRecognition);

  functionName("stopRecognition",
               getName(),
               "This function will stop the ASR engine.");
  BIND_METHOD(ALSpeechBasedReaction::stopRecognition);

  functionName("onSpeechRecognized",
               getName(),
               "Called by ALMemory when a word is recognized.");
  BIND_METHOD(ALSpeechBasedReaction::onSpeechRecognized);

  /// Specify a command to which the robot will react.
  fCommand = "speak";
}

ALSpeechBasedReaction::~ALSpeechBasedReaction()
{

}

void ALSpeechBasedReaction::startRecognition()
{
  /// Setting up a proxy to ALTextToSpeech
  fTextToSpeech = getParentBroker()->getProxy("ALTextToSpeech");
  /// Setting the language to "English"
  fTextToSpeech->callVoid("setLanguage",std::string("English"));

  /// Setting up a proxy to ALMemory
  fMemory = getParentBroker()->getMemoryProxy();

  /// Setting up a proxy to ALSpeechRecognition
  fSpeechRecognition = getParentBroker()->getProxy("ALSpeechRecognition");
  /// Setting the working language of speech recognition engine
  fSpeechRecognition->callVoid("setLanguage",std::string("English"));

  /// Setting the word list that should be recognized
  std::vector<std::string> wordlist;
  wordlist.push_back(fCommand);
  fSpeechRecognition->callVoid("setWordListAsVocabulary", wordlist);

  /// Launching the speech recognition engine by subscribing to a ALMemory key
  /// that is fed by ALSpeechRecognition. Note that a callback function is specified.
  fMemory->subscribeToEvent("WordRecognized",getName(),"onSpeechRecognized");
}

void ALSpeechBasedReaction::stopRecognition()
{
  /// Stopping the speech recognition engine by unsubscribing to the ALMemory key
  fMemory->unsubscribeToEvent("WordRecognized",getName());
}


/// This function is called by ALMemory every time the value of
/// the key "WordRecognized" is modified by the speech recognition engine.
void ALSpeechBasedReaction::onSpeechRecognized(const std::string& name,
                                             const AL::ALValue& val,
                                             const std::string& myName)
{
  /// Parse the list of words that has been recognized by ALSpeechRecognition
  for(unsigned int i = 0; i < val.getSize()/2 ; ++i)
  {
    std::cout << "word recognized: " << val[i*2].toString()
              << " with confidence: " << (float)val[i*2+1] << std::endl;

    /// If our "command" has been recognized, start a speech synthesis reaction
    if((std::string)val[i*2] == fCommand && (float)val[i*2+1] > 0.15)
    {
      fTextToSpeech->callVoid("say",std::string("Ok, Hello There!"));
    }
  }
}
