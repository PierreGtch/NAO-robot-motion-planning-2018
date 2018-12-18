/**
 * @author Pierre-Emmanuel VIEL
 * Copyright (c) 2011 Aldebaran Robotics
 *
 */

#ifndef GenericVideoModule_H
#define GenericVideoModule_H

#include <boost/shared_ptr.hpp>
#include <string>
#include <opencv2/core/core.hpp>
#include <alproxies/alvideodeviceproxy.h>
#include <alcommon/almodule.h>

namespace AL
{
/**
 * This class shows how to use the ALVideoDevice module to save images on disk.
 * It internally uses OpenCv's cvSaveImage function.
 */
class GenericVideoModule : public AL::ALModule
{
  public:
    GenericVideoModule( boost::shared_ptr<ALBroker> pBroker, const std::string& pName );

    virtual ~GenericVideoModule();

    void exit();

    /**
     * registerToVIM : Register to the V.I.M.
     */
    void registerToVideoDevice(const int &pResolution, const int &pColorSpace);

    /**
     * unRegisterFromVIM : Unregister from the V.I.M.
     */
    void unRegisterFromVideoDevice();

    /**
     * saveImage : save the last image received.
     * @param pName name of the file
     */
    void saveImageLocal(const std::string& pName, const std::string& imageFormat);

    /**
     * saveImageRemote : save the last image received.
     * To be used if genericvideomodule is a remote module.
     * @param pName name of the file
     */
    void saveImageRemote(const std::string& pName, const std::string& imageFormat);

    // Automatically called right after the module is created.
    virtual void init();

  private:

    // Actually perform the cvSaveImage operation.
    void xSaveIplImage(const cv::Mat& img, const std::string& name,
                      const std::string& format, int seconds);

    // Proxy to the video input module.
    boost::shared_ptr<AL::ALVideoDeviceProxy> fCamProxy;

    // Client name that is used to talk to the Video Device.
    std::string fVideoClientName;

    // This is set to true when we have subscribed one module to the VideoDevice.
    bool fRegisteredToVideoDevice;

    // Just a IplImage header to wrap around our camera image buffer.
    // This object doesn't own the image buffer.
    cv::Mat fIplImageHeader;
};

} // namespace AL

#endif // GenericVideoModule_H
