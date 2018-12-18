cmake_minimum_required(VERSION 2.6.4 FATAL_ERROR)
project(motionexample)
find_package(qibuild)

option(MOTIONEXAMPLE_IS_REMOTE
  "module is compiled as a remote module (ON or OFF)"
  ON)

set(_srcs
  main.cpp
  almotionexample.h
  almotionexample.cpp
)

if(MOTIONEXAMPLE_IS_REMOTE)
  add_definitions(" -DMOTIONEXAMPLE_IS_REMOTE ")
  qi_create_bin(motionexample ${_srcs})
else()
  qi_create_lib(motionexample SHARED ${_srcs} SUBFOLDER naoqi)
endif()

qi_use_lib(motionexample ALCOMMON ALMATH)
