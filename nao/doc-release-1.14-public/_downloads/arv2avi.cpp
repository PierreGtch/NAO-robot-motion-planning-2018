#include <stdlib.h>
#include <stdio.h>
#include <string>
#include <boost/filesystem.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <alvision/alvisiondefinitions.h>
#include <alvision/alvideo.h>

namespace fs = boost::filesystem;

using namespace AL;

void printUsage()
{
  printf("Usage: arv2avi [OPTION] ARV_FILE AVI_FILE\n"
         "Convert ARV_FILE arv video file into AVI_FILE avi\n\n"
         "  -f           compression method (MJPG(defaut), IYUV, ...)\n"
         "  -s           for multi-streams arv, indicate which stream is going to be converted in avi "
         "(1st stream has number 0)\n" );
}


inline char klip( int val )
{
  if( val > 255 ) return (unsigned char)255;
  if( val < 0 )   return (unsigned char)0;
  return (unsigned char) val;
}


void convertYUV422ToBGR(int _width, int _height, int _nScaleFactor,
                        const unsigned char* _imageDataIn,
                        unsigned char* _imageDataOut)
{
  // integer implementation (4.9 times faster) - PEV
  unsigned char * ptuc_imageDataOut = (unsigned char *)_imageDataOut;
  const unsigned char * ptuc_imageDataIn = (const unsigned char *)_imageDataIn;

  int widthMax = _width*2*_nScaleFactor;
  int widthStep= 4*_nScaleFactor;
  for(int j=0; j < _height; j++)
  { for(int i=0; i < widthMax; i+=widthStep)
    { int C = ptuc_imageDataIn[i  ] - 16;
      int D = ptuc_imageDataIn[i+1] - 128;
      int C2= ptuc_imageDataIn[i+2] - 16;
      int E = ptuc_imageDataIn[i+3] - 128;

      register int valC1 = 298 * C;
      register int valC2 = 298 * C2;
      register int valB  = 517 * D;
      register int valG  = - 208 * D - 100 * E;
      register int valR  = 409 * E;

      *ptuc_imageDataOut++ = klip(( valC1 + valB ) >> 8);
      *ptuc_imageDataOut++ = klip(( valC1 + valG ) >> 8);
      *ptuc_imageDataOut++ = klip(( valC1 + valR ) >> 8);
      *ptuc_imageDataOut++ = klip(( valC2 + valB ) >> 8);
      *ptuc_imageDataOut++ = klip(( valC2 + valG ) >> 8);
      *ptuc_imageDataOut++ = klip(( valC2 + valR ) >> 8);
    }
    ptuc_imageDataIn += widthMax*_nScaleFactor;
  }
}



void removeFileExtension(char* _file, const char* _extension)
{
  if( strlen(_file) > 4 )
    if( !strcmp( _file+strlen(_file)-4 , _extension) )
      _file[strlen(_file)-4] = '\0';
}



void writeExtensionOnce(char* _file, const char* _extension)
{
  if( strlen(_file) > 4 )
    if( !strcmp( _file+strlen(_file)-4 , _extension) )
      return;

  sprintf(_file, "%s%s", _file, _extension);
}



bool checkFileExistance(char* _file)
{
  fs::path full_path( fs::initial_path<fs::path>() );
  full_path = fs::system_complete( fs::path( _file ) );
  if ( !fs::exists( full_path ) )
  {
    std::cout << "\nNot found: " << full_path.string() << std::endl;
    return false;
  }

  if ( fs::is_directory( full_path ) )
  {
    sprintf(_file, "%s\\%s", full_path.string().c_str(), _file );
  }
  return true;
}



int main(int argc, char** argv) {

  char fourcc[] = "MJPG";
  int streamNumber = 0;

  if (argc < 3)
  {
    printUsage();
    return -1;
  }

  // parse arguments
  for(int i=1; i<argc-2; ++i)
  {
    if( !strcmp(argv[i],"-f") )
    {
      if( strlen(argv[i+1]) == 4 )
      {
        memcpy(fourcc, argv[i+1], 5);
        i++;
      }
    }
    else if( !strcmp(argv[i],"-s") )
    {
      streamNumber = (int)(argv[i+1][0] - '0');
      i++;
    }
  }

  char* arvFile = argv[argc-2];
  if( checkFileExistance(arvFile)==false )
    return 0;

  char* aviFile = argv[argc-1];
  writeExtensionOnce(aviFile, ".avi");


  // open the arv file
  ALVideo videoFile;
  if( !videoFile.readVideo( arvFile ) )
  { std::cout<<"Error reading "<< arvFile <<" file."<<std::endl;
    return -2;
  }

  // retrieve arv properties
  printf("arv file info : number of frames = %d  number of streams = %d \n",
         videoFile.getNumberOfFrames(),
         videoFile.getNumberOfStreams() );

  if(streamNumber >= (int)videoFile.getNumberOfStreams() )
  { std::cout<<"Error : maximum stream # is "<< videoFile.getNumberOfStreams() - 1 <<std::endl;
    return -3;
  }

  // retrieve stream properties
  int fileNbrOfFrames = videoFile.getNumberOfFrames();
  int colorSpace      = videoFile.getStreamColorSpace(streamNumber);
  int resolution      = videoFile.getStreamResolution(streamNumber);
  int width, height;
  if(resolution == kVGA)
  { width = 640; height = 480; }
  else if(resolution == kQVGA)
  { width = 320; height = 240; }
  else if(resolution == kQQVGA)
  { width = 160; height = 120; }
  else
  { std::cout<<"Error : stream "<< streamNumber <<" resolution not supported"<<std::endl;
    return -4;
  }

  // place frames into an ALImage, convert them to BGR and place them in the avi file
  const double fps = 33.0;
  const unsigned long long frameDelay = static_cast<unsigned long long>(floor((1.0 / fps) * 1e6 + 0.5));

  ALImage arvImg(width, height, colorSpace);
  cv::Mat cvImg = cv::Mat(cv::Size(width, height), CV_8UC3);
  cv::VideoWriter writer = cv::VideoWriter(aviFile,
                                           CV_FOURCC(fourcc[0], fourcc[1],
                                                     fourcc[2], fourcc[3]),
                                           fps, cv::Size(width, height), 1);
  if (!writer.isOpened())
  { std::cout<<"Error when creating writer."<<std::endl;
    return -5;
  }

  unsigned long long currentTimeStamp, oldTimeStamp = 0ULL;
  bool ret = videoFile.getFrame( arvImg, 0, streamNumber, true );
  if (!ret) {
    std::cout<<"error grabbing first frame"<<std::endl;
    return -6;
  }
  oldTimeStamp = arvImg.getTimeStamp();
  unsigned long long startTimeStamp = oldTimeStamp;
  unsigned long long endTimeStamp = startTimeStamp;  //for computing the average fps

  int counter = 0;
  unsigned long long runningStart = startTimeStamp;  //for computing the fps for 10 imgs
  for(int i=0; i<fileNbrOfFrames; ++i)
  {
    ret = videoFile.getFrame( arvImg, i, streamNumber, true );
    if (!ret) {
      std::cout<<"error grabbing frame "<< i <<std::endl;
      return -7;
    }
    currentTimeStamp = arvImg.getTimeStamp();

    //***** compute framerate *****//
    counter++;
    if(counter == 10)
    { unsigned long long diff = currentTimeStamp - runningStart;
      runningStart = currentTimeStamp;
      std::cout<<"Current fps: "<< (10.0 / (diff / 1000000.0)) <<std::endl;
      counter = 0;
    }

    while( currentTimeStamp >= oldTimeStamp + frameDelay ) // copy again old image by using timestamps in order to obtain 33fps
    {
      writer << cvImg;
      oldTimeStamp += frameDelay;
    }

    if (currentTimeStamp >= oldTimeStamp)
    {
      convertYUV422ToBGR(width, height, 1, arvImg.getData(),
                         cvImg.data);
      writer << cvImg;
      oldTimeStamp += frameDelay;
    }

    endTimeStamp = currentTimeStamp;
  }

  std::cout << "Average fps: " << (fileNbrOfFrames / ((endTimeStamp - startTimeStamp) / 1000000.0)) << std::endl;

  // release data

  return 0;
}
