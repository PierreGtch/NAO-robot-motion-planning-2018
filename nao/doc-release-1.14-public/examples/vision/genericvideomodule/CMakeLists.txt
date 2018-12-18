##
## Copyright (C) 2011 Aldebaran Robotics
##
cmake_minimum_required(VERSION 2.8)
project(genericvideomodule)
find_package(qibuild)

option(GENERICVIDEOMODULE_IS_REMOTE
  "module is compiled as a remote module (ON or OFF)"
  ON)

set(_srcs
  main.cpp
  genericvideomodule.cpp
  genericvideomodule.h
)


if(GENERICVIDEOMODULE_IS_REMOTE)
  add_definitions(" -DGENERICVIDEOMODULE_IS_REMOTE ")
  qi_create_bin(genericvideomodule ${_srcs})
else()
  qi_create_lib(genericvideomodule SHARED ${_srcs} SUBFOLDER naoqi)
endif()


qi_use_lib(genericvideomodule ALCOMMON ALVISION OPENCV2_CORE OPENCV2_HIGHGUI)
