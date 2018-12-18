cmake_minimum_required(VERSION 2.8)
project(optimizedimage)
find_package(qibuild)

option(OPTIMIZEDIMAGE_IS_REMOTE
  "Module is compiled as a remote module (ON or OFF)"
  ON)

set(_srcs
  main.cpp
  optimizedimage.h
  optimizedimage.cpp
)


if(OPTIMIZEDIMAGE_IS_REMOTE)
  add_definitions(" -DOPTIMIZEDIMAGE_IS_REMOTE")
  qi_create_bin(optimizedimage ${_srcs})
else()
  qi_create_lib(optimizedimage SHARED ${_srcs} SUBFOLDER naoqi)
endif()


qi_use_lib(optimizedimage ALCOMMON ALVISION)
