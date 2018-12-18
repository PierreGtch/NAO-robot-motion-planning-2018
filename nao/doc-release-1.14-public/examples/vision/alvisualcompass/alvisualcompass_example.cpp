/**
 *
 * This example demonstrates how to use ALVisualCompass.
 *
 * Copyright Aldebaran Robotics
 */

#include <iostream>

#include <alerror/alerror.h>
#include <alproxies/alvisualcompassproxy.h>
#include <alproxies/almemoryproxy.h>

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>


using namespace AL;

int main(int argc, char* argv[]) {
  if (argc != 2) {
    std::cerr << "Usage: alvisualcompass_example robotIp" << std::endl;
    return 1;
  }
  boost::shared_ptr<ALVisualCompassProxy> compassProxy;
  boost::shared_ptr<ALMemoryProxy> memoryProxy;
  try {
    // Creating proxy to ALVisualCompass.
    compassProxy = boost::shared_ptr<ALVisualCompassProxy>(new ALVisualCompassProxy(argv[1]));
    memoryProxy = boost::shared_ptr<ALMemoryProxy>(new ALMemoryProxy(argv[1], 9559));
  }
  catch (const ALError& e) {
    std::cerr << "Could not create proxies: " << e.what() << std::endl;
    return 2;
  }

  // Reference will be set each time the module is subscribed.
  compassProxy->enableReferenceRefresh(false);
  // Image resolution is QVGA (320x240).
  compassProxy->setResolution(1);

  // Initialize image containers for display.
  cv::Mat referenceImage = cv::Mat::zeros(240, 320, CV_8UC1);
  ALValue refImage, curImage;
  cv::Mat currentImage = cv::Mat::zeros(240, 320, CV_8UC1);
  cv::Mat matchImage = cv::Mat::zeros(480, 320, CV_8UC1);

  ALValue deviation;
  ALValue matchInfo;
  bool running=false;
  bool pauseStatus = false;
  cv::Mat roi;
  // Loop displaying the images.
  while(true) {
    char key = cv::waitKey(50);
    // Esc key to exit.
    if (key == 27) {
      break;
    }

    switch (key) {
    // 'p' key to toggle pause status.
    case 'p':
      // Set the reference.
      pauseStatus = !pauseStatus;
      compassProxy->pause(pauseStatus);
      break;

    // Enter to launch the processing.
    case 'r':
      // Subscribe to launch the processing.
      // Get the reference image for display.
      compassProxy->subscribe("VisualCompassTest");
      refImage = compassProxy->getReferenceImage();
      referenceImage.data = (uchar*) refImage[6].GetBinary();
      running = true;
      break;

    // 's' key to stop the processing.
    case 's':
      // Unsubscribe if the module is running.
      if (running) {
        compassProxy->unsubscribe("VisualCompassTest");
        running = false;
      }
      break;

    default:
      break;
    }
    if (running) {
      // Retrieve the current image for display.
      curImage = compassProxy->getCurrentImage();
      currentImage.data = (uchar*) curImage[6].GetBinary();

      // Get the deviation information from the ALMemory event.
      try {
        deviation = memoryProxy->getData("VisualCompass/Deviation");
        matchInfo = memoryProxy->getData("VisualCompass/Match");
      }
      catch (const ALError&) {
        continue;
      }

      float wy = deviation[0][0], wz = deviation[0][1];
      // Convert it to degrees.
      wz = wz * 180.0f / 3.14f;
      wy = wy * 180.0f / 3.14f;
      // Display it on the image.
      char buffer [100];
      sprintf(buffer, "Wz: %.2f deg, Wy: %.2f deg", wz, wy);
      cv::putText(currentImage, buffer, cv::Point(10,30), CV_FONT_HERSHEY_PLAIN,
                  1.0f, cv::Scalar(255), 2);

      roi = matchImage(cv::Rect(0,0, 320, 240));
      referenceImage.copyTo(roi);
      roi = matchImage(cv::Rect(0, 240, 320, 240));
      currentImage.copyTo(roi);

      for (int i = 0; i < static_cast<int>(matchInfo[3][1].getSize()); ++i) {
        ALValue match = matchInfo[2][matchInfo[3][1][i]];
        ALValue refKp = matchInfo[0][match[0]];
        cv::Point ref = cv::Point((float) refKp[0][0], (float) refKp[0][1]);
        ALValue curKp = matchInfo[1][match[1]];
        cv::Point cur = cv::Point((float) curKp[0][0], (float) curKp[0][1]);
        cur.y += 240;
        cv::line(matchImage, cur, ref, cv::Scalar(255));
        cv::circle(matchImage, ref, (float) refKp[1], cv::Scalar(255));
        cv::circle(matchImage, cur, (float) curKp[1], cv::Scalar(255));
      }
    }
    cv::imshow("Reference image", referenceImage);
    cv::imshow("Current image", currentImage);
    cv::imshow("Match", matchImage);
  }
  // Unsubscribe if the module is running.
  if (running)
    compassProxy->unsubscribe("VisualCompassTest");
  return 0;
}
