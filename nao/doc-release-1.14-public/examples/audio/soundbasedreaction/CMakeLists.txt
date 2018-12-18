# Copyright (C) 2010 Aldebaran Robotics

cmake_minimum_required(VERSION 2.6.4 FATAL_ERROR)
project(soundbasedreaction)
find_package(qibuild)

option(SOUNDBASEDREACTION_IS_REMOTE
  "module is compiled as a remote module (ON or OFF)"
  ON)

set(_srcs
    main.cpp
    alsoundbasedreaction.h
    alsoundbasedreaction.cpp
)

if(SOUNDBASEDREACTION_IS_REMOTE)
  add_definitions(" -DSOUNDBASEDREACTION_IS_REMOTE ")
  qi_create_bin(soundbasedreaction ${_srcs})
else()
  qi_create_lib(soundbasedreaction SHARED ${_srcs} SUBFOLDER naoqi)
endif()


qi_use_lib(soundbasedreaction ALCOMMON ALAUDIO)
