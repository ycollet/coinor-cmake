#
# pkg-config file generation
#

set(prefix           "${CMAKE_INSTALL_PREFIX}")
set(exec_prefix      "\${prefix}")
set(libdir           "${CMAKE_INSTALL_PREFIX}/lib")
set(includedir       "${CMAKE_INSTALL_PREFIX}/include")
set(PACKAGE_VERSION  "${OSI_VERSION}")
set(CPXLIB           "-lcplex")
set(CPXINCDIR        "/usr/include/cplex")

configure_file(${CMAKE_SOURCE_DIR}/Osi/Osi/src/OsiCpx/osi-cplex.pc.in ${CMAKE_BINARY_DIR}/Osi/osi-cplex.pc @ONLY)

set(libdir            "${Osi_DIR}")
set(abs_source_dir    "${CMAKE_BINARY_DIR}/bin")

configure_file(${CMAKE_SOURCE_DIR}/Osi/Osi/src/OsiCpx/osi-cplex-uninstalled.pc.in ${CMAKE_BINARY_DIR}/Osi/osi-cplex-uninstalled.pc @ONLY)

install(FILES ${CMAKE_BINARY_DIR}/Osi/osi-cplex.pc
        DESTINATION ${LIBDIR}/pkg-config/)

install(FILES ${CMAKE_BINARY_DIR}/Osi/osi-cplex-uninstalled.pc
        DESTINATION ${LIBDIR}/pkg-config/)

#
# Build
#

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiCpx)
include_directories(${MY_CPLEX_DIR}/include)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro ()

if (NOT COIN_CPLEX_DIR STREQUAL "None")
  include_directories(${COIN_CPLEX_DIR}/include)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiCpx SHARED ${Osi_DIR}/src/OsiCpx/OsiCpxSolverInterface.cpp)
else ()
  add_library(libOsiCpx STATIC ${Osi_DIR}/src/OsiCpx/OsiCpxSolverInterface.cpp)
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libOsiCpx PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libOsiCpx PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsiCpx)

install(TARGETS libOsiCpx
        DESTINATION ${LIBDIR})

install(FILES ${Osi_DIR}/src/OsiCpx/OsiCpxSolverInterface.hpp
        DESTINATION ${INCLUDEDIR}/coin)
