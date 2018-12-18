# Copyright (C) 2010 Aldebaran Robotics

cmake_minimum_required(VERSION 2.6.4 FATAL_ERROR)
project(soundplayback)
find_package(qibuild)


option(SOUNDPLAYBACK_IS_REMOTE
  "module is compiled as a remote module (ON or OFF)"
  ON)


set(_srcs
    main.cpp
    alsoundplayback.h
    alsoundplayback.cpp
)

if(SOUNDPLAYBACK_IS_REMOTE)
  add_definitions("-DSOUNDPLAYBACK_IS_REMOTE")
  qi_create_bin(soundplayback ${_srcs})
else()
  qi_create_lib(soundplayback SHARED ${_srcs} SUBFOLDER naoqi)
endif()

qi_use_lib(soundplayback ALCOMMON ALAUDIO)
