include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiXpr)
include_directories(${MY_XPRESS_DIR}/include)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro ()

if (NOT COIN_XPRESS_DIR STREQUAL "None")
  include_directories(${COIN_XPRESS_DIR}/include)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiXpr SHARED ${Osi_DIR}/src/OsiXpr/OsiXprSolverInterface.cpp)
else ()
  add_library(libOsiXpr STATIC ${Osi_DIR}/src/OsiXpr/OsiXprSolverInterface.cpp)
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libOsiXpr PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libOsiXpr PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsiXpr)

install(TARGETS libOsiXpr 
        DESTINATION lib)

install(FILES ${Osi_DIR}/src/OsiXpr/OsiXprSolverInterface.hpp
        DESTINATION include/coin)
