cmake_minimum_required(VERSION 2.6.4 FATAL_ERROR)
project(Img2Arv)
find_package(qibuild)

qi_create_bin(img2arv img2arv.cpp)
qi_use_lib(img2arv ALVISION OPENCV2_CORE OPENCV2_HIGHGUI BOOST_FILESYSTEM)
