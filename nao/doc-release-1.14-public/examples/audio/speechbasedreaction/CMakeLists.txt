# Copyright (C) 2010 Aldebaran Robotics

cmake_minimum_required(VERSION 2.6.4 FATAL_ERROR)
project(speechbasedreaction)
find_package(qibuild)

option(SPEECHBASEDREACTION_IS_REMOTE
  "module is compiled as a remote module (ON or OFF)"
  ON)

set(_srcs
    main.cpp
    alspeechbasedreaction.h
    alspeechbasedreaction.cpp
)

if(SPEECHBASEDREACTION_IS_REMOTE)
  add_definitions(" -DSPEECHBASEDREACTION_IS_REMOTE ")
  qi_create_bin(speechbasedreaction ${_srcs})
else()
  qi_create_lib(speechbasedreaction SHARED ${_srcs} SUBFOLDER naoqi)
endif()

qi_use_lib(speechbasedreaction ALCOMMON ALAUDIO)
