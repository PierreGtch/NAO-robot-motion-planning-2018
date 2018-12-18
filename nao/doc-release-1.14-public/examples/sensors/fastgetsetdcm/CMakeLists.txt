##
## Copyright (C) 2009 Aldebaran Robotics
##

cmake_minimum_required(VERSION 2.6.4 FATAL_ERROR)
project(fastgetsetdcm)
find_package(qibuild)

set(_srcs
    main.cpp
    fastgetsetdcm.h
    fastgetsetdcm.cpp
)

qi_create_lib(fastgetsetdcm SHARED ${_srcs} SUBFOLDER naoqi)

qi_use_lib(fastgetsetdcm ALCOMMON ALMEMORYFASTACCESS)

