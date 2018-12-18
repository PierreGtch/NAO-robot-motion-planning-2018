#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <string>
#include <vector>
#include <boost/filesystem.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <alvision/alvisiondefinitions.h>
#include <alvision/alvideo.h>


namespace fs = boost::filesystem;

using namespace AL;

void printUsage()
{
  printf("Usage: imgFiles2arv DIRECTORY ARV_FILE\n"
         "Parse all image files in DIRECTORY and place them into an ARV_FILE.\n"
         "Note that only color images with the same resolution than the first one"
         " found in the folder will be processed.\n\n" );
}



int main(int argc, char** argv) {

  //int streamNumber = 0;

  if (argc < 3) {
    printUsage();
    return -1;
  }

  //const char* imgFolder = argv[1];
  char* arvFile   = argv[2];

  if( strlen(arvFile) > 4 ) //remove arv extension if writen by the user
    if( !strcmp( arvFile+strlen(arvFile)-4 ,".arv") )
      arvFile[strlen(arvFile)-4] = '\0';

  fs::path full_path( fs::initial_path<fs::path>() );
  full_path = fs::system_complete( fs::path( argv[1] ) );
  if ( !fs::exists( full_path ) )
  {
    std::cout << "\nNot found: " << full_path.string() << std::endl;
    return -2;
  }

  if ( fs::is_directory( full_path ) )
  {
    //*********** initialisation using the first image file ***********//
    char fileName[2048];
    long long timestamp = 0;
    cv::Mat pImg = cv::Mat();
    streamHeader tmpStreamHeader;
    std::vector<streamHeader> streamHeaderVector;
    ALVideo videoFile;
    bool isInitialized = false;


    fs::directory_iterator end_iter;
    for ( fs::directory_iterator dir_itr( full_path ); dir_itr != end_iter; ++dir_itr )
    {
      std::string fileName = ( full_path / dir_itr->path().filename() ).string();
      if ( fs::is_regular_file( dir_itr->status() ) )
      {
        try {
          pImg = cv::imread(fileName, 1);
        }
        catch ( const std::exception & ex ) {
          std::cout << dir_itr->path().filename() << " " << ex.what() << std::endl;
        }

        if(!pImg.empty())
        {
          std::cout<< "File : " << fileName << std::endl;

          if( isInitialized == false )
          {
            tmpStreamHeader.width      = pImg.cols;
            tmpStreamHeader.height     = pImg.rows;
            tmpStreamHeader.colorSpace = kYUV422ColorSpace;
            tmpStreamHeader.pixelDepth = 8;

            streamHeaderVector.push_back(tmpStreamHeader);

            std::cout<<"Output arv file properties: "<< streamHeaderVector[0].width <<"x"<< streamHeaderVector[0].height
              <<" Colorspace id:"<< streamHeaderVector[0].colorSpace <<" Pixel depth:"<< streamHeaderVector[0].pixelDepth
              <<std::endl;

            if( !videoFile.recordVideo( arvFile, 0, streamHeaderVector ) )
            { std::cout<<"Error writing "<< arvFile <<" file."<<std::endl;
              return -3;
            }
            isInitialized = true;
          }

          if(  (pImg.cols == tmpStreamHeader.width)
            && (pImg.rows == tmpStreamHeader.height)
            && (pImg.channels() == 3) )
          {
            videoFile.write(pImg.rows, pImg.cols, (char*) pImg.data, timestamp, 0,
                            0.0f, 0.0f, 0.0f, 0.0f);
            timestamp += 66000;
          }
        }
      }
    }

    if( isInitialized )
      videoFile.closeVideo();
  }

  return 0;
}

