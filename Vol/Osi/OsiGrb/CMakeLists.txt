#
# pkg-config file generation
#

set(prefix           "${CMAKE_INSTALL_PREFIX}")
set(exec_prefix      "\${prefix}")
set(libdir           "${CMAKE_INSTALL_PREFIX}/lib")
set(includedir       "${CMAKE_INSTALL_PREFIX}/include")
set(PACKAGE_VERSION  "${OSI_VERSION}")
set(GRBLIB           "-lgurobi")
set(GRBINCDIR        "/usr/include/gurobi")

configure_file(${CMAKE_SOURCE_DIR}/Osi/Osi/src/OsiGrb/osi-gurobi.pc.in ${CMAKE_BINARY_DIR}/Osi/osi-gurobi.pc @ONLY)

set(libdir            "${Osi_DIR}")
set(abs_source_dir    "${CMAKE_BINARY_DIR}/bin")

configure_file(${CMAKE_SOURCE_DIR}/Osi/Osi/src/OsiGrb/osi-gurobi-uninstalled.pc.in ${CMAKE_BINARY_DIR}/Osi/osi-gurobi-uninstalled.pc @ONLY)

install(FILES ${CMAKE_BINARY_DIR}/Cbc/osi-gurobi.pc
        DESTINATION lib/pkg-config/)

install(FILES ${CMAKE_BINARY_DIR}/Cbc/osi-gurobi-uninstalled.pc
        DESTINATION lib/pkg-config/)

#
# Build
#

include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiGrb)
include_directories(${MY_GUROBI_DIR}/include)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro ()

if (NOT COIN_GUROBI_DIR STREQUAL "None")
  include_directories(${COIN_GUROBI_DIR}/include)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiGrb SHARED ${Osi_DIR}/src/OsiGrb/OsiGrbSolverInterface.cpp)
else ()
  add_library(libOsiGrb STATIC ${Osi_DIR}/src/OsiGrb/OsiGrbSolverInterface.cpp)
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libOsiGrb PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libOsiGrb PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsiGrb)

install(TARGETS libOsiGrb
        DESTINATION lib)

install(FILES ${Osi_DIR}/src/OsiGrb/OsiGrbSolverInterface.hpp
        DESTINATION include/coin)
