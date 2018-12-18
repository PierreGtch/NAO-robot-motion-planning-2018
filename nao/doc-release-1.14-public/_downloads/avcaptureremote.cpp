/**
 * @author Aldebaran Robotics
 */

#include <iostream>
#include "avcaptureremote.h"

#include <qi/os.hpp>
#include <alvalue/alvalue.h>
#include <alcommon/alproxy.h>
#include <alcommon/albroker.h>
#include <alvision/alvisiondefinitions.h>

int AVCaptureRemote::kMaxNofSamples = 16384;

/**
 * Constructor for AVCaptureRemote object
 * @param broker The parent broker
 * @param name The name of the module
 */
AVCaptureRemote::AVCaptureRemote(
  boost::shared_ptr<AL::ALBroker> broker,
  const std::string& name)
: AL::ALSoundExtractor(broker, name)
, fCapturingAudio(false)
, fAudioBuffer(new AL_SOUND_FORMAT[kMaxNofSamples])
, fCapturingVideo(false)
, fALVideoDevice(broker)
, fVideoSubscriberId()
, fFramerate(5)
, fVideoThread()
{
  setModuleDescription("Captures audio and video.");

  functionName("isCapturing", "AVCaptureRemote", "Says if the capture was started.");
  setReturn("capturing", "Whether capture was started.");
  BIND_METHOD(AVCaptureRemote::isCapturing);

  functionName("startCapture", "AVCaptureRemote", "Starts audiovisual capture.");
  addParam("audio", "Whether to enable audio capture.");
  addParam("video", "Whether to enable video capture.");
  BIND_METHOD(AVCaptureRemote::startCapture);

  functionName("stopCapture", "AVCaptureRemote", "Stops audiovisual capture.");
  BIND_METHOD(AVCaptureRemote::stopCapture);
}

AVCaptureRemote::~AVCaptureRemote() {
  stopCapture();
  if (fAudioBuffer!=NULL)
  {
    delete [] fAudioBuffer;
    fAudioBuffer = NULL;
  }
}

void AVCaptureRemote::init()
{
  startCapture(true, true);
}

bool AVCaptureRemote::isCapturing()
{
  return fCapturingAudio || fCapturingVideo;
}

void AVCaptureRemote::startCapture(const bool& audio,
                                   const bool& video)
{
  if(isCapturing())
    throw std::runtime_error("Capture already started.");
  if(!audio && !video)
    throw std::invalid_argument("Cannot start capture: no audio nor video !");
  if(audio)
    xStartAudio();
  if(video)
    xStartVideo();
}

void AVCaptureRemote::stopCapture()
{
  if(fCapturingAudio)
    xStopAudio();
  if(fCapturingVideo)
    xStopVideo();
}

// Audio ======================================================================
void AVCaptureRemote::xStartAudio()
{
  try
  {
    audioDevice->callVoid("setClientPreferences",
                          getName(),                //Name of this module
                          48000,                    //48000 Hz requested
                          (int)AL::ALLCHANNELS,     //4 Channels requested
                          0                         //Deinterleaving not requested
                          );

    this->startDetection();
    fCapturingAudio = true;
  }
  catch(const std::exception &error)
  {
    std::cerr << "Cannot subscribe audio: " << error.what() << std::endl;
    fCapturingAudio = false;
  }
}

void AVCaptureRemote::xStopAudio()
{
  try
  {
    this->stopDetection();
  }
  catch(const std::exception &error)
  {
    std::cerr << "Cannot unsubscribe audio." << error.what() << std::endl;
  }
  fCapturingAudio = false;
}

void AVCaptureRemote::process(const int &pNbOfInputChannels,
                              const int &pNbrSamples,
                              const AL_SOUND_FORMAT *pDataInterleaved,
                              const AL::ALValue &pTimeStamp)
{
  // Add your code for sound processing here
  // Input is a 4-channels raw 16-bit-integer buffer at 48kHz.
  std::cout << xGetTime() << ":audio" << std::endl;

  return;
  // Example: deinterleaving operation.
  // 1: left microphone
  // 2: right microphone
  // 3: front microphone
  // 4: rear microphone
  unsigned keptChannel = 3;
  char nofSkippedChannels = pNbOfInputChannels - 1;

  const AL_SOUND_FORMAT *iterAudioDataSource;
  const AL_SOUND_FORMAT *iterAudioDataSourceEnd;
  AL_SOUND_FORMAT *iterAudioDataSelectedChannel;

  iterAudioDataSource = pDataInterleaved + keptChannel;
  iterAudioDataSourceEnd = &(pDataInterleaved[pNbrSamples*pNbOfInputChannels]);
  iterAudioDataSelectedChannel = fAudioBuffer;

  while(iterAudioDataSource < iterAudioDataSourceEnd - (pNbOfInputChannels-1))
  {
    (*iterAudioDataSelectedChannel) = (*iterAudioDataSource);
    iterAudioDataSelectedChannel++;
    iterAudioDataSource += nofSkippedChannels;
  }

  // Now do what you want with fAudioBuffer
}

// Video ======================================================================
void AVCaptureRemote::xStartVideo()
{
  try
  {
    fVideoSubscriberId = fALVideoDevice.subscribe(
        getName(), AL::kQQVGA, AL::kRGBColorSpace, fFramerate);
    fCapturingVideo = true;
    pthread_create(&fVideoThread, 0, xVideoThread, this);
  }
  catch(const std::exception &error)
  {
    std::cerr << "Cannot subscribe to video: " << error.what() << std::endl;
    fCapturingVideo = false;
  }
}

void AVCaptureRemote::xStopVideo()
{
  void* lReturn;
  fCapturingVideo = false;
  pthread_join(fVideoThread, &lReturn);
  try
  {
    fALVideoDevice.unsubscribe(fVideoSubscriberId);
  }
  catch(const std::exception &error)
  {
    std::cerr << "Cannot unsubscribe from video: " << error.what() << std::endl;
  }
}

void * AVCaptureRemote::xVideoThread(void *pArg)
{
  AVCaptureRemote* lThis = (AVCaptureRemote*)pArg;
  AL::ALValue lImage;
  lImage.arraySetSize(7);

  // Time measurement
  long long lLastBufferTime = xGetTime();

  // Buffer duration depends on framerate
  long long lDuration = 1000000000 / lThis->fFramerate; // in nanoseconds

  try
  {
    while(lThis->fCapturingVideo)
    {
      if((xGetTime() - lLastBufferTime) < lDuration / 1000)
      {
        qi::os::msleep(10);
        continue;
      }

      // Get an image and its metadata from video device
      lImage = lThis->fALVideoDevice.getImageRemote(lThis->fVideoSubscriberId);

      // Do what you want with your video here
      // Input requested was RGB
      std::cout << xGetTime() << ":video" << std::endl;

      //    // You can get some information about the image.
      //    int width = (int) image[0];
      //    int height = (int) image[1];
      //    int nbLayers = (int) image[2];
      //    int colorSpace = (int) image[3];
      //    long long timeStamp = ((long long)image[4])*1000000LL + (long long)image[5];
      //    // image[4] is the number of seconds, image[5] the number of microseconds

      //    // You can get the pointer to the image data and its size
      //    const char* dataPointer =  static_cast<const char*>(image[6].GetBinary());
      //    int size = image[6].getSize();

      // Releasing the image for video device
      lThis->fALVideoDevice.releaseImage(lThis->fVideoSubscriberId);
    }
  }
  catch(const std::exception &error)
  {
    std::cerr << "Video loop stopped, reason: " << error.what() << std::endl;
    if(lThis->fCapturingVideo)
      lThis->xStopVideo();
  }

  return 0;
}

long long AVCaptureRemote::xGetTime() {
  qi::os::timeval lTimeStruct;
  qi::os::gettimeofday(&lTimeStruct);
  long long lTime = (long long)lTimeStruct.tv_sec * 1000000; // Seconds
  lTime += (long long)lTimeStruct.tv_usec;                   // Microseconds
  return lTime;
}
