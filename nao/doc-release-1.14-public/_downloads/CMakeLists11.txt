##
# Copyright (c) 2011 Aldebaran Robotics. All Rights Reserved.

cmake_minimum_required(VERSION 2.6.4 FATAL_ERROR)
# Give a name to the project.
project(ledsexample)
# This include enable you to use qibuild CMake framework
find_package(qibuild)

# Create an executable named ledsexample,
# with the source file : ledsexample.cpp
qi_create_bin(ledsexample ledsexample.cpp)

# Tell CMake that movehead depends on ALCOMMON.
# This will set the libraries to link movehead with,
# the include paths, and so on
qi_use_lib(ledsexample ALCOMMON)
