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
        DESTINATION lib)

install(FILES ${Osi_DIR}/src/OsiCpx/OsiCpxSolverInterface.hpp
        DESTINATION include/coin)
