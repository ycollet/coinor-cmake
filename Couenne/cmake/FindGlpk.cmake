#
#  This file is part of CoinOr-CMake
#
#  This library is free software; you can redistribute it and/or
#  modify it under the terms of the GNU Lesser General Public
#  License as published by the Free Software Foundation; either
#  version 3.0 of the License, or (at your option) any later version.
#
#  This library is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#  Lesser General Public License for more details.
#
#  You should have received a copy of the GNU Lesser General Public
#  License along with this library; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
#
# User input variable:
#  - GLPK_ROOT_DIR: where glpk has been installed (/usr by default)
#  - GLPK_REQUESTED_VERSION: version found must be above GLPK_REQUESTED_VERSION
#
# this files defines
#  - GLPK_INCLUDE_DIR
#  - GLPK_BIN_DIR
#  - GLPK_LIBRARIES
#  - GLPK_FOUND
#  - GLPK_VERSION

set(GLPK_ROOT_DIR "/usr" CACHE PATH "GLPK root directory")
set(GLPK_REQUESTED_VERSION "0.0" CACHE PATH "Version found must be above this version number")

set(GLPK_REGKEY "[HKEY_LOCAL_MACHINE\\SOFTWARE\\GnuWin32\\Glpk;InstallPath]")
get_filename_component(GLPK_ROOT_PATH ${GLPK_REGKEY} ABSOLUTE)

find_path(GLPK_INCLUDE_DIR
          glpk.h
          PATHS ${GLPK_REGKEY}/include
          HINTS ${GLPK_ROOT_DIR}/include)

find_library(GLPK_LIBRARY
             glpk
             PATHS ${GLPK_REGKEY}/lib ${GLPK_REGKEY}/lib64
             HINTS ${GLPK_ROOT_DIR}/lib ${GLPK_ROOT_DIR}/lib64)

if (GLPK_INCLUDE_DIR AND GLPK_LIBRARY)
  file(READ ${GLPK_INCLUDE_DIR}/glpk.h GLPK_GLPK_H)
  
  string(REGEX MATCH   "define[ ]+GLP_MAJOR_VERSION[ ]+[0-9]+" GLPK_MAJOR_VERSION_LINE "${GLPK_GLPK_H}")
  string(REGEX REPLACE "define[ ]+GLP_MAJOR_VERSION[ ]+([0-9]+)" "\\1" GLPK_VERSION_MAJOR "${GLPK_MAJOR_VERSION_LINE}")
  
  string(REGEX MATCH   "define[ ]+GLP_MINOR_VERSION[ ]+[0-9]+" GLPK_MINOR_VERSION_LINE "${GLPK_GLPK_H}")
  string(REGEX REPLACE "define[ ]+GLP_MINOR_VERSION[ ]+([0-9]+)" "\\1" GLPK_VERSION_MINOR "${GLPK_MINOR_VERSION_LINE}")
  
  set(GLPK_FOUND_VERSION  "${GLPK_VERSION_MAJOR}.${GLPK_VERSION_MINOR}")
    
  if (GLPK_FOUND_VERSION VERSION_LESS GLPK_REQUESTED_VERSION)
    set(GLPK_PROPER_VERSION_FOUND FALSE)
  else ()
    set(GLPK_PROPER_VERSION_FOUND TRUE)
  endif ()
endif()

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(GLPK DEFAULT_MSG GLPK_LIBRARY GLPK_INCLUDE_DIR GLPK_FOUND_VERSION)

if (GLPK_FOUND)
  set(GLPK_INCLUDE_DIRS ${GLPK_INCLUDE_DIR})
  set(GLPK_LIBRARIES    ${GLPK_LIBRARY})
  set(GLPK_BIN_DIR      ${GLPK_ROOT_PATH}/bin)
  set(GLPK_VERSION      ${GLPK_FOUND_VERSION})
endif ()

mark_as_advanced(GLPK_LIBRARY GLPK_INCLUDE_DIR GLPK_BIN_DIR GLPK_VERSION)
