cmake_minimum_required(VERSION 2.6)

project(metis)

file(GLOB SRCS "*.c")

#need to add this directory to the includes since metis uses #include<...> for some reason.
include_directories(${CMAKE_SOURCE_DIR})

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /NODEFAULTLIB}")

add_library(metis ${SRCS})

set_target_properties(metis PROPERTIES DEBUG_POSTFIX -d)

set_property(TARGET metis
             PROPERTY COMPILE_DEFINITIONS __VC__)

install(TARGETS metis 
        DESTINATION bin)
