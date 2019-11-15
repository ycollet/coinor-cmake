include_directories(${BuildTools_DIR}/headers)
include_directories(${CoinUtils_DIR}/src)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)
include_directories(${Osi_DIR}/src/OsiMsk)
include_directories(${MY_MOSEK_DIR}/include)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Osi/include)
endmacro ()

if (NOT COIN_MOSEK_DIR STREQUAL "None")
  include_directories(${COIN_MOSEK_DIR}/include)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libOsiMsk SHARED ${Osi_DIR}/src/OsiMsk/OsiMskSolverInterface.cpp)
else ()
  add_library(libOsiMsk STATIC ${Osi_DIR}/src/OsiMsk/OsiMskSolverInterface.cpp)
endif ()
if (COIN_COMPILE_LTO)
  set_target_properties(libOsiMsk PROPERTIES INTERPROCEDURAL_OPTIMIZATION true)
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libOsiMsk PROPERTIES PREFIX "")
endif ()
set_include_directories(libOsiMsk)

install(TARGETS libOsiMsk
        DESTINATION lib)

install(FILES ${Osi_DIR}/src/OsiMsk/OsiMskSolverInterface.hpp
        DESTINATION include/coin)
