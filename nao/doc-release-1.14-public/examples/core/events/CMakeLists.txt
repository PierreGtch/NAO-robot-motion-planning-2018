cmake_minimum_required(VERSION 2.8)
project(events)
find_package(qibuild)

option(EVENTS_IS_REMOTE
  "module is compiled as a remote module (ON or OFF)"
  ON)

set(_srcs
  main.cpp
  events.h
  events.cpp
)


if(EVENTS_IS_REMOTE)
  add_definitions(" -DEVENTS_IS_REMOTE")
  qi_create_bin(events ${_srcs})
else()
  qi_create_lib(events SHARED ${_srcs} SUBFOLDER naoqi)
endif()


qi_use_lib(events ALCOMMON)
