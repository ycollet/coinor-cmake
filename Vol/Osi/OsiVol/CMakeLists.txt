#
# pkg-config file generation
#

set(prefix               "${CMAKE_INSTALL_PREFIX}")
set(exec_prefix          "\${prefix}")
set(libdir               "${CMAKE_INSTALL_PREFIX}/lib")
set(includedir           "${CMAKE_INSTALL_PREFIX}/include")
set(OSIVOLLIB_PCLIBS     "")
set(OSIVOLLIB_PCREQUIRES "vol osi")
set(PACKAGE_VERSION      "${OSI_VERSION}")

configure_file(${CMAKE_SOURCE_DIR}/Osi/Osi/src/OsiVol/osi-vol.pc.in ${CMAKE_BINARY_DIR}/Osi/osi-vol.pc @ONLY)

set(libdir            "${Osi_DIR}")
set(abs_source_dir    "${CMAKE_BINARY_DIR}/bin")

configure_file(${CMAKE_SOURCE_DIR}/Osi/Osi/src/OsiVol/osi-vol-uninstalled.pc.in ${CMAKE_BINARY_DIR}/Osi/osi-vol-uninstalled.pc @ONLY)

install(FILES ${CMAKE_BINARY_DIR}/Osi/osi-vol.pc
        DESTINATION lib/pkg-config/)

install(FILES ${CMAKE_BINARY_DIR}/Osi/osi-vol-uninstalled.pc
        DESTINATION lib/pkg-config/)

#
# Build
#

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Vol_DIR}/src)
include_directories(${Vol_DIR}/src/OsiVol)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Vol/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro ()

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

set(OsiVol_SRC_LIST ${Vol_DIR}/src/OsiVol/OsiVolSolverInterface.cpp
                    ${Vol_DIR}/src/OsiVol/OsiVolSolverInterfaceIO.cpp)


if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiVol SHARED ${OsiVol_SRC_LIST})
else ()
  add_library(libOsiVol STATIC ${OsiVol_SRC_LIST})
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libOsiVol PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsiVol)

install(TARGETS libOsiVol 
        DESTINATION lib)

install(FILES ${Vol_DIR}/src/OsiVol/OsiVolSolverInterface.hpp
        DESTINATION include/coin)
