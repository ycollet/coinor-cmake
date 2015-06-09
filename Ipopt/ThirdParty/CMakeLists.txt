cmake_minimum_required(VERSION 2.8)

project(Ipopt_Thirdparty)

# CMakeLists.txt designed for 
# downloading/configuring/building/installing
# Thirdparty dependencies

option(COIN_ENABLE_DOWNLOAD_MUMPS "Enable the download / compilation of Mumps" OFF)
option(COIN_ENABLE_DOWNLOAD_METIS "Enable the download / compilation of Metis" OFF)

# Prevent the "make clean" from cleaning this directory
set_directory_properties(PROPERTIES CLEAN_NO_CUSTOM TRUE)

include(ExternalProject)

set(EP_InstallDir ${CMAKE_BINARY_DIR}/Dependencies)

if (NOT EXISTS ${EP_InstallDir})
  make_directory(${EP_InstallDir})
endif ()
if (NOT EXISTS ${EP_InstallDir}/bin)
  make_directory(${EP_InstallDir}/bin)
endif ()
if (NOT EXISTS ${EP_InstallDir}/lib)
  make_directory(${EP_InstallDir}/lib)
endif ()
if (NOT EXISTS ${EP_InstallDir}/include)
  make_directory(${EP_InstallDir}/include)
endif ()

# #################################################
# ===>    Mumps
# #################################################

if (COIN_ENABLE_DOWNLOAD_MUMPS)
  set(MUMPS_VERSION "4.10.0")

  if (WIN32)
    ExternalProject_Add(EP_Mumps
                        PREFIX ${EP_InstallDir}/Mumps
  			URL http://mumps.enseeiht.fr/MUMPS_${MUMPS_VERSION}.tar.gz
			PATCH_COMMAND     ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/ThirdParty/Mumps/CMakeLists.txt ${EP_InstallDir}/Mumps/src/EP_Mumps
			CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Mumps/src/EP_Mumps/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Mumps/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DPROJECT_REVISION=10 -DUSE_MUMPS_LIBSEQ=ON -G "NMake Makefiles" ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Mumps/build ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Mumps/build ${CMAKE_MAKE_PROGRAM} install
                        )
  else ()
    ExternalProject_Add(EP_Mumps
                        PREFIX ${EP_InstallDir}/Mumps
  			URL http://mumps.enseeiht.fr/MUMPS_${MUMPS_VERSION}.tar.gz
			PATCH_COMMAND     ${CMAKE_COMMAND} -E copy  ${CMAKE_SOURCE_DIR}/ThirdParty/Mumps/CMakeLists.txt ${EP_InstallDir}/Mumps/src/EP_Mumps
			CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Mumps/src/EP_Mumps/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Mumps/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DPROJECT_REVISION=10 -DUSE_MUMPS_LIBSEQ=ON ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Mumps/build ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Mumps/build ${CMAKE_MAKE_PROGRAM} install
                        )
  endif()
endif()

# #################################################
# <===    Mumps
# #################################################

# #################################################
# ===>    Metis
# #################################################

if (COIN_ENABLE_DOWNLOAD_METIS)
  set(METIS_VERSION "4.0.3")

  if (WIN32)
    ExternalProject_Add(EP_Metis
                        PREFIX ${EP_InstallDir}/Metis
  			URL http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/OLD/metis-${METIS_VERSION}.tar.gz
			PATCH_COMMAND     ${CMAKE_COMMAND} -E copy  ${CMAKE_SOURCE_DIR}/ThirdParty/Metis/CMakeLists.txt ${EP_InstallDir}/Metis/src/EP_Metis
			CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Metis/src/EP_Metis/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Metis/src/EP_Metis/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -G "NMake Makefiles" ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Metis/src/EP_Metis/build ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Metis/src/EP_Metis/build ${CMAKE_MAKE_PROGRAM} install
                        )
  else ()
    ExternalProject_Add(EP_Metis
                        PREFIX ${EP_InstallDir}/Metis
  			URL http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/OLD/metis-${METIS_VERSION}.tar.gz
			PATCH_COMMAND     ${CMAKE_COMMAND} -E copy  ${CMAKE_SOURCE_DIR}/ThirdParty/Metis/CMakeLists.txt ${EP_InstallDir}/Metis/src/EP_Metis
			CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Metis/src/EP_Metis/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Metis/src/EP_Metis/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Metis/src/EP_Metis/build ${CMAKE_MAKE_PROGRAM}
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Metis/src/EP_Metis/build ${CMAKE_MAKE_PROGRAM} install
                        )
  endif()
endif()

# #################################################
# <===    Metis
# #################################################

# #################################################
# ===>   Restart cmake
# #################################################

## Overload some CMake command to avoid modif all sub-projects CMakLists.txt file
## The original built-in commands are prefixed with an underscore if overriding any of them
## Prevent the modification of all sub-project

macro(add_library _target)
  _add_library (${_target} ${ARGN})
  
  if (COIN_ENABLE_DOWNLOAD_MUMPS)
    add_dependencies(${_target} EP_Mumps)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_METIS)
    add_dependencies(${_target} EP_Metis)
  endif ()
endmacro()

macro(add_executable _target)
  _add_executable (${_target} ${ARGN})
  
  if (COIN_ENABLE_DOWNLOAD_MUMPS)
    add_dependencies(${_target} EP_Mump)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_METIS)
    add_dependencies(${_target} EP_Metis)
  endif ()
endmacro()

# #################################################
# <===   Restart cmake 
# #################################################
