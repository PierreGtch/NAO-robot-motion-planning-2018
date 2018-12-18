cmake_minimum_required(VERSION 2.6.4 FATAL_ERROR)
project(audiovideocapture)
find_package(qibuild)

option(AVCAPTURE_IS_REMOTE
  "module is compiled as a remote module (ON or OFF)"
  ON)

set(_srcs
  main.cpp
  avcaptureremote.h
  avcaptureremote.cpp
)

if(AVCAPTURE_IS_REMOTE)
  add_definitions(" -DAVCAPTURE_IS_REMOTE ")
  qi_create_bin(avcapture ${_srcs})
else()
  qi_create_lib(avcapture SHARED ${_srcs} SUBFOLDER naoqi)
endif()

qi_use_lib(avcapture ALCOMMON ALAUDIO ALVISION)
