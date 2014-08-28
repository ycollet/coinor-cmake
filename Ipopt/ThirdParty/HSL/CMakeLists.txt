cmake_minimum_required(VERSION 2.6)
#include base etk functionality

project(hsl Fortran)
FILE(GLOB SRCS "*.f")

ADD_LIBRARY (hsl ${SRCS} )
#Need to get it to use the rigth runtime library

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /NODEFAULTLIB}")
SET_TARGET_PROPERTIES( hsl PROPERTIES DEBUG_POSTFIX -d )
install(TARGETS hsl DESTINATION $ENV{ETK_BINARIES})