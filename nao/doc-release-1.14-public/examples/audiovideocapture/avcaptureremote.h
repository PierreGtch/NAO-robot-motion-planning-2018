/**
 * @author Victor Paleologue
 */

#ifndef AVCAPTURE_AVCAPTUREREMOTE_H
#define AVCAPTURE_AVCAPTUREREMOTE_H

#include <string>
#include <alcommon/almodule.h>
#include <alaudio/alsoundextractor.h>
#include <alproxies/alvideodeviceproxy.h>
#include <pthread.h>

namespace AL
{
  class ALBroker;
}

/**
 * Remote module for synchronized audio and video capture.
 */
class AVCaptureRemote : public AL::ALSoundExtractor
{
  public:
    /**
     * Default Constructor for modules.
     * @param broker the broker to which the module should register.
     * @param name the boadcasted name of the module.
     */
    AVCaptureRemote(boost::shared_ptr<AL::ALBroker> broker, const std::string& name);

    /// Destructor.
    virtual ~AVCaptureRemote();

    void init();

    /// Are we currently capturing ?
    /// @return whether we started capturing
    bool isCapturing();

    /**
     * Start capture.
     * @param audio Set to true to start audio.
     * @param video  The method will return this parameter
     */
    void startCapture(const bool& audio, const bool& video);

    /// Stop capture.
    void stopCapture();

    // Audio processing =======================================================
protected:
    /// Are we currently capturing audio ?
    bool fCapturingAudio;

    /// Start audio capture.
    void xStartAudio();

    /// Stop audio capture.
    void xStopAudio();

    /// The maximum number of samples provided by ALAudioDevice.
    static int kMaxNofSamples;

    /// Our output buffer, allocated once.
    AL_SOUND_FORMAT* fAudioBuffer;

public:

    /**
     * Remote callback from ALAudioDevice providing sound buffers.
     * @param pNbOfInputChannels number of audio channels provided here.
     * @param pNbrSamples length of the audio buffer in samples.
     * @param pDataInterleaved raw interleaved audio buffer.
	 * @param pTimeStamp The time stamp of the audio buffer
     */
    void process(const int &pNbOfInputChannels,
                 const int &pNbrSamples,
                 const AL_SOUND_FORMAT *pDataInterleaved,
                 const AL::ALValue &pTimeStamp);

private:
    // Video processing =======================================================
    /// Are we currently capturing video ?
    bool fCapturingVideo;

    /// Start video capture.
    void xStartVideo();

    /// Stop video capture.
    void xStopVideo();

    /// Proxy to video device.
    AL::ALVideoDeviceProxy fALVideoDevice;

    /// Video subscriber id.
    std::string fVideoSubscriberId;

    /// Video framerate.
    int fFramerate;

    /// Video thread object.
    pthread_t fVideoThread;

    /// Video acquisition loop.
    /// @param pArg user data, here the module instance.
    /// @return Thread return value
    static void* xVideoThread(void *pArg);
	
	  /// Get the time in Us
	  /// @return time in Us
	  static long long xGetTime();
};

#endif  // AVCAPTURE_AVCAPTUREREMOTE_H

