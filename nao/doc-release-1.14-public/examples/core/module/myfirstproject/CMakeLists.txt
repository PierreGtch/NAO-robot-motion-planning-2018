cmake_minimum_required(VERSION 2.8)

# Give a name to the project.
project(mymodule)

# You need this to find the qiBuild CMake framework
find_package(qibuild)

# Create a executable named myproject
# with the source file: main.cpp
qi_create_bin(myproject "main.cpp")

# Tell CMake that myproject depends on ALCOMMON.
# This will set the libraries to link myproject with,
# the include paths, and so on
qi_use_lib(myproject ALCOMMON)
