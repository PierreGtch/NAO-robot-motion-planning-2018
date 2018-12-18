cmake_minimum_required(VERSION 2.8)
project(bumper)
find_package(qibuild)

option(BUMPER_IS_REMOTE
  "module is compiled as a remote module (ON or OFF)"
  ON)

set(_srcs
  main.cpp
  bumper.h
  bumper.cpp
)

if(BUMPER_IS_REMOTE)
  add_definitions(" -DBUMPER_IS_REMOTE ")
  qi_create_bin(bumper ${_srcs})
else()
  qi_create_lib(bumper SHARED ${_srcs} SUBFOLDER naoqi)
endif()

qi_use_lib(bumper ALCOMMON)
