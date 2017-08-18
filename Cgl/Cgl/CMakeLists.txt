get_ac_init_version(${CMAKE_SOURCE_DIR}/Cgl/configure.ac CGL)

option(CGL_BUILD_EXAMPLES "Enable the building of examples" OFF)

set(CGL_VERSION_MAJOR   "${CGL_MAJOR_VERSION}"  CACHE STRING "The CGL major version number")
set(CGL_VERSION_MINOR   "${CGL_MINOR_VERSION}"  CACHE STRING "The CGL minor version number")
set(CGL_VERSION_RELEASE "${CGL_PATCH_VERSION}"  CACHE STRING "The CGL patch version number")
set(CGL_VERSION         "${CGL_VERSION_STRING}" CACHE STRING "The CGL version")

find_package(Subversion)
if (Subversion_FOUND)
  if (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/../.svn")
    Subversion_WC_INFO(${CMAKE_CURRENT_SOURCE_DIR} CGL)
  else ()
    set(CGL_WC_REVISION "0")
  endif ()
else ()
  set(CGL_WC_REVISION "0")
endif ()
message(STATUS "Current CGL revision is ${CGL_WC_REVISION}")
set(CGL_SVN_REV "${CGL_WC_REVISION}" CACHE STRING "The CGL subversion revision")

mark_as_advanced(CGL_VERSION_MAJOR
                 CGL_VERSION_MINOR
                 CGL_VERSION_RELEASE
                 CGL_VERSION
                 CGL_SVN_REV)

add_definitions(-DCGL_BUILD)

configure_file(${CMAKE_SOURCE_DIR}/Cgl/include/config_cgl.h.in ${CMAKE_BINARY_DIR}/Cgl/include/config_cgl.h)
configure_file(${CMAKE_SOURCE_DIR}/Cgl/include/config.h.in     ${CMAKE_BINARY_DIR}/Cgl/include/config.h)

set(Cgl_SRC_LIST ${Cgl_DIR}/src/CglMixedIntegerRounding/CglMixedIntegerRoundingTest.cpp
                 ${Cgl_DIR}/src/CglMixedIntegerRounding/CglMixedIntegerRounding.cpp
                 ${Cgl_DIR}/src/CglDuplicateRow/CglDuplicateRow.cpp
                 ${Cgl_DIR}/src/CglCutGenerator.cpp
                 ${Cgl_DIR}/src/CglPreProcess/CglPreProcess.cpp
                 ${Cgl_DIR}/src/CglProbing/CglProbing.cpp
                 ${Cgl_DIR}/src/CglProbing/CglProbingTest.cpp
                 ${Cgl_DIR}/src/CglMixedIntegerRounding2/CglMixedIntegerRounding2.cpp
                 ${Cgl_DIR}/src/CglMixedIntegerRounding2/CglMixedIntegerRounding2Test.cpp
                 ${Cgl_DIR}/src/CglLandP/CglLandPUtils.cpp
                 ${Cgl_DIR}/src/CglLandP/CglLandPTest.cpp
                 ${Cgl_DIR}/src/CglLandP/CglLandPTabRow.cpp
                 ${Cgl_DIR}/src/CglLandP/CglLandPSimplex.cpp
                 ${Cgl_DIR}/src/CglLandP/CglLandPValidator.cpp
                 ${Cgl_DIR}/src/CglLandP/CglLandPMessages.cpp
                 ${Cgl_DIR}/src/CglLandP/CglLandP.cpp
                 ${Cgl_DIR}/src/CglOddHole/CglOddHoleTest.cpp
                 ${Cgl_DIR}/src/CglOddHole/CglOddHole.cpp
                 ${Cgl_DIR}/src/CglRedSplit/CglRedSplitParam.cpp
                 ${Cgl_DIR}/src/CglRedSplit/CglRedSplit.cpp
                 ${Cgl_DIR}/src/CglRedSplit/CglRedSplitTest.cpp
                 ${Cgl_DIR}/src/CglAllDifferent/CglAllDifferent.cpp
                 ${Cgl_DIR}/src/CglKnapsackCover/CglKnapsackCoverTest.cpp
                 ${Cgl_DIR}/src/CglKnapsackCover/CglKnapsackCover.cpp
                 ${Cgl_DIR}/src/CglSimpleRounding/CglSimpleRoundingTest.cpp
                 ${Cgl_DIR}/src/CglSimpleRounding/CglSimpleRounding.cpp
                 ${Cgl_DIR}/src/CglZeroHalf/CglZeroHalfTest.cpp
                 ${Cgl_DIR}/src/CglZeroHalf/Cgl012cut.cpp
                 ${Cgl_DIR}/src/CglZeroHalf/CglZeroHalf.cpp
                 ${Cgl_DIR}/src/CglRedSplit2/CglRedSplit2Test.cpp
                 ${Cgl_DIR}/src/CglRedSplit2/CglRedSplit2Param.cpp
                 ${Cgl_DIR}/src/CglRedSplit2/CglRedSplit2.cpp
                 ${Cgl_DIR}/src/CglMessage.cpp
                 ${Cgl_DIR}/src/CglStored.cpp
                 ${Cgl_DIR}/src/CglParam.cpp
                 ${Cgl_DIR}/src/CglResidualCapacity/CglResidualCapacity.cpp
                 ${Cgl_DIR}/src/CglResidualCapacity/CglResidualCapacityTest.cpp
                 ${Cgl_DIR}/src/CglTwomir/CglTwomirTest.cpp
                 ${Cgl_DIR}/src/CglTwomir/CglTwomir.cpp
                 ${Cgl_DIR}/src/CglFlowCover/CglFlowCoverTest.cpp
                 ${Cgl_DIR}/src/CglFlowCover/CglFlowCover.cpp
                 ${Cgl_DIR}/src/CglClique/CglCliqueHelper.cpp
                 ${Cgl_DIR}/src/CglClique/CglCliqueTest.cpp
                 ${Cgl_DIR}/src/CglClique/CglClique.cpp
                 ${Cgl_DIR}/src/CglTreeInfo.cpp
                 ${Cgl_DIR}/src/CglLiftAndProject/CglLiftAndProject.cpp
                 ${Cgl_DIR}/src/CglGomory/CglGomoryTest.cpp
                 ${Cgl_DIR}/src/CglGomory/CglGomory.cpp
                 ${Cgl_DIR}/src/CglGMI/CglGMI.cpp
                 ${Cgl_DIR}/src/CglGMI/CglGMIParam.cpp)

set(Cgl_SRC_LIST_Headers ${Cgl_DIR}/src/CglMixedIntegerRounding/CglMixedIntegerRounding.hpp
                         ${Cgl_DIR}/src/CglDuplicateRow/CglDuplicateRow.hpp
                         ${Cgl_DIR}/src/CglStored.hpp
                         ${Cgl_DIR}/src/CglPreProcess/CglPreProcess.hpp
                         ${Cgl_DIR}/src/CglProbing/CglProbing.hpp
                         ${Cgl_DIR}/src/CglMixedIntegerRounding2/CglMixedIntegerRounding2.hpp
                         ${Cgl_DIR}/src/CglLandP/CglLandP.hpp
                         ${Cgl_DIR}/src/CglLandP/CglLandPUtils.hpp
                         ${Cgl_DIR}/src/CglLandP/CglLandPValidator.hpp
                         ${Cgl_DIR}/src/CglLandP/CglLandPTabRow.hpp
                         ${Cgl_DIR}/src/CglLandP/CglLandPMessages.hpp
                         ${Cgl_DIR}/src/CglLandP/CglLandPSimplex.hpp
                         ${Cgl_DIR}/src/CglOddHole/CglOddHole.hpp
                         ${Cgl_DIR}/src/CglRedSplit/CglRedSplitParam.hpp
                         ${Cgl_DIR}/src/CglRedSplit/CglRedSplit.hpp
                         ${Cgl_DIR}/src/CglAllDifferent/CglAllDifferent.hpp
                         ${Cgl_DIR}/src/CglKnapsackCover/CglKnapsackCover.hpp
                         ${Cgl_DIR}/src/CglSimpleRounding/CglSimpleRounding.hpp
                         ${Cgl_DIR}/src/CglMessage.hpp
                         ${Cgl_DIR}/src/CglZeroHalf/CglZeroHalf.hpp
                         ${Cgl_DIR}/src/CglZeroHalf/Cgl012cut.hpp
                         ${Cgl_DIR}/src/CglRedSplit2/CglRedSplit2Param.hpp
                         ${Cgl_DIR}/src/CglRedSplit2/CglRedSplit2.hpp
                         ${Cgl_DIR}/src/CglCutGenerator.hpp
                         ${Cgl_DIR}/src/CglResidualCapacity/CglResidualCapacity.hpp
                         ${Cgl_DIR}/src/CglTwomir/CglTwomir.hpp
                         ${Cgl_DIR}/src/CglFlowCover/CglFlowCover.hpp
                         ${Cgl_DIR}/src/CglClique/CglClique.hpp
                         ${Cgl_DIR}/src/CglLiftAndProject/CglLiftAndProject.hpp
                         ${Cgl_DIR}/src/CglGomory/CglGomory.hpp
                         ${Cgl_DIR}/src/CglGMI/CglGMIParam.hpp
                         ${Cgl_DIR}/src/CglGMI/CglGMI.hpp
                         ${Cgl_DIR}/src/CglParam.hpp
                         ${Cgl_DIR}/src/CglTreeInfo.hpp)

include_directories(${Cgl_DIR}/src)
include_directories(${Cgl_DIR}/src/CglClique)
include_directories(${Cgl_DIR}/src/CglDuplicateRow)
include_directories(${Cgl_DIR}/src/CglFlowCover)
include_directories(${Cgl_DIR}/src/CglGomory)
include_directories(${Cgl_DIR}/src/CglKnapsackCover)
include_directories(${Cgl_DIR}/src/CglLandP)
include_directories(${Cgl_DIR}/src/CglMixedIntegerRounding)
include_directories(${Cgl_DIR}/src/CglMixedIntegerRounding2)
include_directories(${Cgl_DIR}/src/CglOddHole)
include_directories(${Cgl_DIR}/src/CglPreProcess)
include_directories(${Cgl_DIR}/src/CglProbing)
include_directories(${Cgl_DIR}/src/CglRedSplit)
include_directories(${Cgl_DIR}/src/CglRedSplit2)
include_directories(${Cgl_DIR}/src/CglResidualCapacity)
include_directories(${Cgl_DIR}/src/CglSimpleRounding)
include_directories(${Cgl_DIR}/src/CglTwomir)
include_directories(${Cgl_DIR}/src/CglZeroHalf)

include_directories(${CoinUtils_DIR}/src)
include_directories(${Clp_DIR}/src)
include_directories(${Clp_DIR}/src/OsiClp)
include_directories(${Osi_DIR}/src)
include_directories(${Osi_DIR}/src/Osi)

macro(set_include_directories TARGET)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/CoinUtils/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Clp/include)
  target_include_directories(${TARGET} BEFORE PRIVATE ${CMAKE_BINARY_DIR}/Cgl/include)
endmacro ()

if (WIN32)
  add_definitions(-D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE)
endif ()

if (ENABLE_SHARED_LIBRARIES)
  add_library(libCgl SHARED ${Cgl_SRC_LIST})
else ()
  add_library(libCgl STATIC ${Cgl_SRC_LIST})
endif ()
if (NOT WIN32 OR MINGW)
  set_target_properties(libCgl PROPERTIES PREFIX "")
endif ()
set_include_directories(libCgl)

if (CGL_BUILD_EXAMPLES)
  macro(add_example Name Srcs)
    add_executable(${Name} ${Srcs})
    target_link_libraries(${Name} libCgl libOsiClp libOsi libClp libCoinUtils)
    set_include_directories(${Name})
    if (MKL_FOUND)
      target_link_libraries(${Name} ${COIN_MKL_LIBS})
    else ()
      if (COIN_HAS_LAPACK OR COIN_USE_LAPACK)
        target_link_libraries(${Name} lapack)
      endif ()
      if (COIN_HAS_BLAS OR COIN_USE_BLAS)
        target_link_libraries(${Name} blas)
      endif ()
      if (COIN_ENABLE_DOWNLOAD_CLAPACK)
        target_link_libraries(${Name} f2c)
      endif ()
      if ((COIN_HAS_BLAS OR COIN_HAS_LAPACK) AND (UNIX OR MINGW) AND NOT COIN_USE_LAPACK AND NOT (CMAKE_Fortran_COMPILER_ID STREQUAL "Intel"))
        target_link_libraries(${Name} gfortran)
      endif ()
    endif ()
    if (COINUTILS_HAS_ZLIB OR COIN_USE_ZLIB)
      target_link_libraries(${Name} ${ZLIB_NAME})
    endif ()
    if (COINUTILS_HAS_BZLIB OR COIN_USE_BZLIB)
      target_link_libraries(${Name} ${BZLIB_NAME})
    endif ()
    if (COIN_HAS_GLPK OR COIN_USE_GLPK)
      target_link_libraries(${Name} libOsi libOsiGlpk glpk)
    endif ()
    if (COIN_HAS_AMD)
      target_link_libraries(${Name} amd)
    endif ()
    if (COIN_HAS_CHOLMOD)
      target_link_libraries(${Name} cholmod)
    endif () 
    if (COINUTILS_USE_THREADS OR COIN_USE_PTHREAD_WIN32 OR CBC_USE_THREADS)
      if (MINGW)
        target_link_libraries(${Name} winpthread)
      elseif (NOT WIN32)
        target_link_libraries(${Name} pthread)
      else ()
        target_link_libraries(${Name} pthreadVC2)
      endif ()
    endif ()
    if (COIN_HAS_MUMPS)
      if (CMAKE_Fortran_COMPILER_ID STREQUAL "Intel")
        target_link_libraries(${Name} dmumps mumps_common seq blas lapack ifort pthread)
      else ()
        target_link_libraries(${Name} dmumps mumps_common seq blas lapack gfortran pthread)
      endif ()
    endif ()  
    if (COIN_ENABLE_DOWNLOAD_METIS OR COIN_USE_METIS)
      target_link_libraries(${Name} metis)
    endif () 
  endmacro ()
  
  add_example(cgl1 ${Cgl_DIR}/examples/cgl1.cpp)
  #add_example(cgl_data_test ${Cgl_DIR}/examples/cgl_data_test.cpp) # Compilation error ....
endif ()

add_executable(unitTest-cgl ${Cgl_DIR}/test/unitTest.cpp)
target_link_libraries(unitTest-cgl libCgl libOsi libOsiClp libClp libCoinUtils)
set_include_directories(unitTest-cgl)
if (MKL_FOUND)
  target_link_libraries(unitTest-cgl ${COIN_MKL_LIBS})
else ()
  if (COIN_HAS_LAPACK OR COIN_USE_LAPACK)
    target_link_libraries(unitTest-cgl lapack)
  endif ()
  if (COIN_HAS_BLAS OR COIN_USE_BLAS)
    target_link_libraries(unitTest-cgl blas)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_CLAPACK)
    target_link_libraries(unitTest-cgl f2c)
  endif ()
  if ((COIN_HAS_BLAS OR COIN_HAS_LAPACK) AND (UNIX OR MINGW) OR COIN_ENABLE_DOWNLOAD_LAPACK AND NOT (CMAKE_Fortran_COMPILER_ID STREQUAL "Intel"))
    target_link_libraries(unitTest-cgl gfortran)
  endif ()
endif ()
if (COINUTILS_HAS_ZLIB OR COIN_USE_ZLIB)
  target_link_libraries(unitTest-cgl ${ZLIB_NAME})
endif ()
if (COINUTILS_HAS_BZLIB OR COIN_USE_BZLIB)
  target_link_libraries(unitTest-cgl ${BZLIB_NAME})
endif ()
if (COIN_HAS_GLPK OR COIN_USE_GLPK)
  target_link_libraries(unitTest-cgl libOsi libOsiGlpk glpk)
endif ()
if (COIN_HAS_AMD)
  target_link_libraries(unitTest-cgl amd)
endif ()
if (COIN_HAS_CHOLMOD)
  target_link_libraries(unitTest-cgl cholmod)
endif () 
if (COINUTILS_USE_THREADS OR COIN_USE_PTHREAD_WIN32 OR CBC_USE_THREADS)
  if (MINGW)
    target_link_libraries(unitTest-cgl winpthread)
  elseif (NOT WIN32)
    target_link_libraries(unitTest-cgl pthread)
  else ()
    target_link_libraries(unitTest-cgl pthreadVC2)
  endif ()
endif ()

install(TARGETS libCgl 
        DESTINATION lib)

install(FILES ${Cgl_SRC_LIST_Headers} 
        DESTINATION include/coin)

install(FILES ${CMAKE_BINARY_DIR}/Cgl/include/config_cgl.h
        DESTINATION include/coin
        RENAME CglConfig.h)

install(FILES ${CMAKE_BINARY_DIR}/Cgl/include/config_cgl.h
        DESTINATION include/coin)
