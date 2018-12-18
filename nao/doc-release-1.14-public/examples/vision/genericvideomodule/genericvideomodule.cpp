/**
 * @author Pierre-Emmanuel VIEL
 * Copyright (c) 2011 Aldebaran Robotics
 *
 */

#include <iostream>
#include "genericvideomodule.h"

// For resolution and colorspace definitions + utility functions.
#include <alvision/alvisiondefinitions.h>
#include <alvision/alimage.h>
#include <alcommon/albroker.h>

#include <opencv2/highgui/highgui.hpp>

#include <qi/log.hpp>

using namespace std;

namespace AL
{
GenericVideoModule::GenericVideoModule( boost::shared_ptr<ALBroker> pBroker, const std::string& pName ):
  ALModule(pBroker , pName),
  fRegisteredToVideoDevice(false),
  fIplImageHeader(cv::Mat())
{

  // Describe the module here.
  setModuleDescription( "This is an example of a generic video module. "
    "It can be used to save images returned by the camera. "
    "It internally uses OpenCv's cvSaveImage function. "
    "Refer to the Example codes section below for an example of use.");

  // Define the module example.
  addModuleExample( "Python",
                     "  # Create a proxy to the module \n"
                     "  sampleProxy = ALProxy('GenericVideoModule', '127.0.0.1', 9559)\n\n"
                     "  # Register our module to the Video Input Module. \n"
                     "  sampleProxy.registerToVideoDevice(1, 13)\n\n"
                     "  # Save image in remote mode. \n"
                     "  sampleProxy.saveImageRemote('/home/nao/img', 'jpg') \n\n"
                     "  # Unregister.\n"
                     "  sampleProxy.unRegisterFromVideoDevice()\n"
                  );

  // Define bound methods with their description.
  functionName( "registerToVideoDevice", getName(), "Register to the V.I.M." );
  addParam("resolution", "Resolution requested.");
  addParam("colorSpace", "Colorspace requested.");
  BIND_METHOD( GenericVideoModule::registerToVideoDevice );

  functionName( "unRegisterFromVideoDevice", getName(), "Unregister from the V.I.M." );
  BIND_METHOD( GenericVideoModule::unRegisterFromVideoDevice );

  functionName( "saveImageLocal", getName(), "Save an image received from the camera." );
  addParam( "name", "name and path of the picture (without format extension)" );
  addParam( "imageFormat", "format extension such as bmp, jpg, tiff, etc.)" );
  BIND_METHOD( GenericVideoModule::saveImageLocal );

  functionName( "saveImageRemote", getName(), "Save an image received from the camera. to be used if the genericvideomodule is a remote module." );
  addParam( "name", "name and path of the picture (without format extension)" );
  addParam( "imageFormat", "format extension such as bmp, jpg, tiff, etc.)" );
  BIND_METHOD( GenericVideoModule::saveImageRemote );
}


void GenericVideoModule::exit()
{
  AL::ALModule::exit();
}


void GenericVideoModule::init() {

  // Create a proxy to the ALVideoDevice.
  try {
    fCamProxy = boost::shared_ptr<ALVideoDeviceProxy>(new ALVideoDeviceProxy(getParentBroker()));
  } catch (const AL::ALError& e) {
    qiLogError("vision.genericvideomodule") << "Error while getting proxy on ALVideoDevice.  Error msg " << e.toString() << std::endl;
    GenericVideoModule::exit();
    return;
  }
  if(fCamProxy == NULL)
  {
    qiLogError("vision.genericvideomodule") << "Error while getting proxy on ALVideoDevice. Check ALVideoDevice is running." << std::endl;
    GenericVideoModule::exit();
    return;
  }

  qiLogInfo("vision.genericvideomodule") << "Use registerToVideoDevice + "
    "saveImageLocal + unRegisterFromVideoDevice to save images." << std::endl;
}


GenericVideoModule::~GenericVideoModule() {

  // Unregister the video module.
  try
  {
    if(fCamProxy)
      fCamProxy->unsubscribe(fVideoClientName);

    fCamProxy.reset();
  }
  catch(const AL::ALError& e)
  {
    qiLogError("vision.genericvideomodule") <<  e.toString() << std::endl;
  }
}

/**
 * registerToVIM
 */
void GenericVideoModule::registerToVideoDevice(const int &pResolution, const int &pColorSpace) {

  // If we've already registered a module, we need to unregister it first !
  if (fRegisteredToVideoDevice) {
    throw ALError(getName(), "registerToVideoDevice()", "A video module has already been "
      "registered. Call unRegisterFromVideoDevice() before trying to register a new module.");
  }

  // GVM Name that we're going to use to register.
  const std::string kOriginalName = "genericvideomodule";
  int imgWidth = 0;
  int imgHeight = 0;
  int imgNbLayers = 0;
  const int kImgDepth = 8;
  const int kFps = 5;

  // Release Image Header if it has been allocated before.
  if (!fIplImageHeader.empty())
    fIplImageHeader.release();

  setSizeFromResolution(pResolution, imgWidth, imgHeight);
  imgNbLayers = getNumLayersInColorSpace(pColorSpace);

  if (imgWidth == -1 || imgWidth == -1 || imgNbLayers == -1) {
    throw ALError(getName(), "registerToVideoDevice()", "Invalid resolution or color space.");
  }

  // Allocate our Image header.
  int type;
  type = (imgNbLayers) == 3 ? CV_8UC3 : CV_8UC1;
  fIplImageHeader = cv::Mat(cv::Size(imgWidth, imgHeight), type);

  if (fIplImageHeader.empty()) {
    throw ALError(getName(), "registerToVideoDevice()", "Fail to allocate OpenCv image header.");
  }

  // Call the "subscribe" function with the given parameters.
  if(fCamProxy)
    fVideoClientName = fCamProxy->subscribe(kOriginalName, pResolution, pColorSpace, kFps );

  qiLogInfo("vision.genericvideomodule") << "Module registered as " << fVideoClientName << std::endl;

  // Registration is successful, set fRegisteredToVim to true.
  fRegisteredToVideoDevice = true;
}


/**
 * unRegisterFromVIM
 */
void GenericVideoModule::unRegisterFromVideoDevice() {

  if (!fRegisteredToVideoDevice) {
    throw ALError(getName(), "unRegisterFromVideoDevice()", "No video module is currently "
      "registered! Call registerToVideoDevice first.");
  }

  // Release Image Header if it has been allocated.
  if (!fIplImageHeader.empty())
    fIplImageHeader.release();

  qiLogInfo("vision.genericvideomodule") << "try to unregister " << fVideoClientName << " module." << std::endl;
  if(fCamProxy)
    fCamProxy->unsubscribe(fVideoClientName);

  qiLogInfo("vision.genericvideomodule") << "Done." << std::endl;

  // UnRegistration is successful, set fRegisteredToVim to false.
  fRegisteredToVideoDevice = false;
}


/**
 * saveImage : save the last image received.
 * @param pName name of the file
 */
void GenericVideoModule::saveImageLocal(const std::string& pName, const std::string& pImageFormat) {

  // Check that a video module has been registered.
  if (!fRegisteredToVideoDevice) {
    throw ALError(getName(), "saveImageLocal()",  "No video module is currently "
      "registered! Call registerToVideoDevice() first.");
  }

#ifdef GENERICVIDEOMODULE_IS_REMOTE
  // If this module is running in remote mode, we shouldn't use saveImageLocal.
  throw ALError(getName(), "saveImageLocal()", "Module is run in remote mode, "
    "use saveImageRemote instead !");
#else

  ALImage* imageIn = NULL;

  // Now you can get the pointer to the video structure.
  imageIn = (ALImage*)fCamProxy->getImageLocal(fVideoClientName);
  if (!imageIn) {
    throw ALError(getName(), "saveImageLocal", "Invalid image returned.");
  }


  // You can get some image information that you may find useful.
  //const int width = imageIn->fWidth;
  //const int height = imageIn->fHeight;
  //const int nbLayers = imageIn->fNbLayers;
  //const int colorSpace = imageIn->fColorSpace;
  const long long timeStamp = imageIn->getTimeStamp();
  const int seconds = (int)(timeStamp/1000000LL);

  // Set the buffer we received to our IplImage header.
  fIplImageHeader.data = imageIn->getData();

  xSaveIplImage(fIplImageHeader, pName, pImageFormat, seconds);

  // Now that you're done with the (local) image, you have to release it from the V.I.M.
  fCamProxy->releaseImage(fVideoClientName);

#endif
}


/**
 * saveImageRemote : save the last image received. To be used if genericvideomodule is a remote module.
 * @param pName name of the file
 */
void GenericVideoModule::saveImageRemote(const std::string& pName, const std::string& pImageFormat ) {

  // Check that a video module has been registered.
  if (!fRegisteredToVideoDevice) {
    throw ALError(getName(), "saveImageRemote()",  "No video module is currently "
      "registered! Call registerToVideoDevice() first.");
  }

  ALValue results;

  results = (fCamProxy->getImageRemote(fVideoClientName ));

  if (results.getType()!= ALValue::TypeArray && results.getSize() != 7) {
    throw ALError(getName(), "saveImageRemote", "Invalid image returned.");
  }

  //const int size = results[6].getSize();

  // You can get some image information that you may find useful.
  //const int width = (int) results[0];
  //const int height = (int) results[1];
  //const int nbLayers = (int) results[2];
  //const int colorSpace = (int) results[3];
  const long long timeStamp = ((long long)(int)results[4])*1000000LL + ((long long)(int)results[5]);
  const int seconds = (int)(timeStamp/1000000LL);

  // Set the buffer we received to our IplImage header.
  fIplImageHeader.data = (uchar*) (results[6].GetBinary());

  xSaveIplImage(fIplImageHeader, pName, pImageFormat, seconds);
}


// Actually perform the cvSaveImage operation.
void GenericVideoModule::xSaveIplImage(const cv::Mat &img,
                             const std::string& pName,
                             const std::string& pImageFormat,
                             int seconds) {

  std::stringstream ss;
  ss << pName << seconds << "." << pImageFormat;
  const std::string kImageNameFull = ss.str();

  try {
    cv::imwrite(kImageNameFull, fIplImageHeader);
    qiLogInfo("vision.genericvideomodule") << "Image saved as " << kImageNameFull << std::endl;
  }
  catch(const cv::Exception& e) {
    qiLogError("vision.genericvideomodule") << "OpenCV can't save the image "
                                              << "with this format. (e.g. "
                                              << "incompatible file format"
                                              << " / no space left)  Error msg "
                                              << e.err << std::endl;
  }
}

} // namespace AL
