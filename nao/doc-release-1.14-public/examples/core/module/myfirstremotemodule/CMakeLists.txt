cmake_minimum_required(VERSION 2.8)

# Give a name to the project.
project(mymodule)

# You need this to find the qiBuild CMake framework
find_package(qibuild)

# Create a list of source files
set(_srcs
    mymodule.cpp
    mymodule.h
    main.cpp)

# Create a executable named mybroker
# with the source file: main.cpp
qi_create_bin(mybroker ${_srcs})

# Tell CMake that mybroker depends on ALCOMMON.
# This will set the libraries to link mybroker with,
# the include paths, and so on
qi_use_lib(mybroker ALCOMMON)

