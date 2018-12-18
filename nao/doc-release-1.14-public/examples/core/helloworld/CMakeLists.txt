# Copyright (C) 2011 Aldebaran Robotics
cmake_minimum_required(VERSION 2.6.4 FATAL_ERROR)

# Define the name of the project
project(helloworld)

# This include enable you to use qibuild framework
find_package(qibuild)


# Create an option to make is possible compiling the module
# as a remote executable, or as a local shared library
option(HELLOWORLD_IS_REMOTE
  "module is compiled as a remote module (ON or OFF)"
  ON)

# Create a list of source files
set(_srcs
  helloworld.cpp
  helloworld.h
  main.cpp
)

if(HELLOWORLD_IS_REMOTE)
  # Add a compile flag because code changes a little bit
  # when we are compiling an executable
  # This will let you use #ifdef HELLOWORLD_IS_REMOTE
  # in the C++ code
  add_definitions( " -DHELLOWORLD_IS_REMOTE ")

  # Create an executable
  qi_create_bin(helloworld ${_srcs})
else()
  # Create a plugin, that is a shared library, and make
  # sure it is built in lib/naoqi, so that the naoqi executable
  # can find it later
  qi_create_lib(helloworld SHARED ${_srcs} SUBFOLDER naoqi)
endif()

# Tell CMake that sayhelloworld depends on ALCOMMON.
# This will set the libraries to link sayhelloworld with,
# the include paths, and so on
qi_use_lib(helloworld ALCOMMON)



# Also create a simple executable capable of creating
# a proxy to the helloworld module
qi_create_bin(testhelloworld testhelloworld.cpp)
qi_use_lib(testhelloworld ALCOMMON)


