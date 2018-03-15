include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiSpx)
include_directories(${MY_SOPLEX_DIR}/include)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro ()

if (NOT COIN_SOPLEX_DIR STREQUAL "None")
  include_directories(${COIN_SOPLEX_DIR}/include)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiSpx SHARED ${Osi_DIR}/src/OsiSpx/OsiSpxSolverInterface.cpp)
else ()
  add_library(libOsiSpx STATIC ${Osi_DIR}/src/OsiSpx/OsiSpxSolverInterface.cpp)
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libOsiSpx PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libOsiSpx PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsiSpx)

install(TARGETS libOsiSpx
        DESTINATION lib)

install(FILES ${Osi_DIR}/src/OsiSpx/OsiSpxSolverInterface.hpp
        DESTINATION include/coin)
