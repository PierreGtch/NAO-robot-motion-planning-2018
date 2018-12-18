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

# Create a plugin, that is a shared library, and make
# sure it is built in lib/naoqi
qi_create_lib(mymodule SHARED ${_srcs} SUBFOLDER naoqi)

# Tell CMake that mymodule depends on ALCOMMON.
# This will set the libraries to link mymodule with,
# the include paths, and so on
qi_use_lib(mymodule ALCOMMON BOOST)
