cmake_minimum_required(VERSION 2.6.4 FATAL_ERROR)

project(custommain)

find_package(qibuild)

qi_create_bin(custommain "main.cpp")

qi_use_lib(custommain ALCOMMON)

