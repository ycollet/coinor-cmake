cmake_minimum_required(VERSION 2.8)

project(Cbc_Thirdparty)

# CMakeLists.txt designed for 
# downloading/configuring/building/installing
# Thirdparty dependencies

option(COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32   "Enable the download / compilation of PThreads for Windows" OFF)
option(COIN_ENABLE_DOWNLOAD_LAPACK          "Enable the download / compilation of Blas / Lapack" OFF)
option(COIN_ENABLE_DOWNLOAD_GLPK            "Enable the download / compilation of GLPK" OFF)
option(COIN_ENABLE_DOWNLOAD_MUMPS           "Enable the download / compilation of Mumps" OFF)
option(COIN_ENABLE_DOWNLOAD_ASL             "Enable the download / compilation of Ampl Solver Library" OFF)
option(COIN_ENABLE_DOWNLOAD_DATA_TEST       "Enable the download / run of Data tests" OFF)
option(COIN_ENABLE_DOWNLOAD_ZLIB            "Enable the download / compilation of Zlib" OFF)

# Prevent the "make clean" from cleaning this directory
set_directory_properties(PROPERTIES CLEAN_NO_CUSTOM TRUE)

include(ExternalProject)

set(EP_InstallDir ${CMAKE_BINARY_DIR}/Dependencies)

if (NOT EXISTS ${CMAKE_BINARY_DIR}/Dependencies)
  make_directory(${CMAKE_BINARY_DIR}/Dependencies)
endif ()
if (NOT EXISTS ${CMAKE_BINARY_DIR}/Dependencies/lib)
  make_directory(${CMAKE_BINARY_DIR}/Dependencies/lib)
endif ()
if (NOT EXISTS ${CMAKE_BINARY_DIR}/Dependencies/include)
  make_directory(${CMAKE_BINARY_DIR}/Dependencies/include)
endif ()

# #################################################
# ===>    Macros
# #################################################

# add_regex: allow to concat several regex into one for using it with cmake
macro(add_regex VARIABLE REGEX)
  set(${VARIABLE} "${${VARIABLE}}${REGEX}.*")
endmacro()

# Example of use:
#
# set(TEST_REGEX "")
# add_regex(TEST_REGEX "INFO  : Overall capacity cost : 7.54846e[+]09")
# add_regex(TEST_REGEX "INFO  : Overall simulation cost : 3.40945e[+]09")
# add_regex(TEST_REGEX "INFO  : Overall reward : -1.09579e[+]10")
# set_tests_properties(Test_Name PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

# #################################################
# <===    Macros
# #################################################

# #################################################
# ===>    Lapack
# #################################################

if (COIN_ENABLE_DOWNLOAD_LAPACK)
  if (UNIX)
    if (NOT CMAKE_SIZEOF_VOID_P EQUAL 4)
      set(LAPACK_C_FLAGS "-fPIC")
      set(LAPACK_LINKER_FLAGS "-fPIC")
    endif()
  endif ()
  
  ExternalProject_Add(EP_Lapack
                      PREFIX ${EP_InstallDir}/Lapack
		      URL http://www.coin-or.org/BuildTools/Lapack/lapack-3.4.2.tgz
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Lapack/src/EP_Lapack/build
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack/src/EP_Lapack/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir}/install -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${LAPACK_LINKER_FLAGS} ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Lapack/src/EP_Lapack/build make
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/lib/liblapack.a ${EP_InstallDir}/install/lib
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/lib/libblas.a   ${EP_InstallDir}/install/lib
                                     && ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/Lapack/src/EP_Lapack/build/lib/libtmglib.a ${EP_InstallDir}/install/lib
                      )
endif()

# #################################################
# <===    Lapack
# #################################################

# #################################################
# ===>    Zlib
# #################################################

if (COIN_ENABLE_DOWNLOAD_ZLIB)
  set(ZLIB_VERSION "1.2.8")

  if (WIN32)
    set(ZLIB_NAME "${EP_InstallDir}/lib/libz.lib" CACHE STRING "The Zlib library name" FORCE)
    
    ExternalProject_Add(EP_Zlib
                        PREFIX ${EP_InstallDir}/Zlib
  			URL http://zlib.net/zlib-1.2.8.tar.gz
			CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Zlib/src/EP_Zlib/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${LAPACK_LINKER_FLAGS} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build nmake
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build nmake install
                        )
  else ()
    set(ZLIB_NAME "${EP_InstallDir}/lib/libz.a" CACHE STRING "The Zlib library name" FORCE)
    
    ExternalProject_Add(EP_Zlib
                        PREFIX ${EP_InstallDir}/Zlib
  			URL http://zlib.net/zlib-1.2.8.tar.gz
			CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Zlib/src/EP_Zlib/build
                                       && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir} -DCMAKE_C_FLAGS:String=${CLAPACK_C_FLAGS} -DCMAKE_EXE_LINKER_FLAGS:String=${LAPACK_LINKER_FLAGS} ..
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build make
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Zlib/src/EP_Zlib/build make install
                        )
  endif()
endif()

# #################################################
# <===    Zlib
# #################################################

# #################################################
# ===>   GLPK 
# #################################################

if (COIN_ENABLE_DOWNLOAD_GLPK)
  set(GLPK_VERSION "4.52")
  
  if (UNIX)
    ExternalProject_Add(EP_glpk
                        PREFIX ${EP_InstallDir}/glpk
                        URL http://ftp.gnu.org/gnu/glpk/glpk-${GLPK_VERSION}.tar.gz
                        CONFIGURE_COMMAND ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk ./configure --prefix=${EP_InstallDir}/install --enable-static --disable-shared --with-pic
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk make
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk make install &&
		                          ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glplpx.h ${EP_InstallDir}/install/include
                        )
  elseif (WIN32)
    if (CMAKE_SIZEOF_VOID_P EQUAL 4)
      ExternalProject_Add(EP_glpk
                          PREFIX ${EP_InstallDir}/glpk
                          URL http://ftp.gnu.org/gnu/glpk/glpk-${GLPK_VERSION}.tar.gz
                          CONFIGURE_COMMAND ""
                          BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk/w32 nmake -f Makefile_VC
                          INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/w32/glpk.lib ${EP_InstallDir}/install/lib &&
			                    ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glpk.h   ${EP_InstallDir}/install/include &&
			                    ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glplpx.h ${EP_InstallDir}/install/include
                          )
    else()
      ExternalProject_Add(EP_glpk
                          PREFIX ${EP_InstallDir}/glpk
                          URL http://ftp.gnu.org/gnu/glpk/glpk-${GLPK_VERSION}.tar.gz
                          CONFIGURE_COMMAND ""
                          BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/glpk/src/EP_glpk/w64 nmake -f Makefile_VC
                          INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/w64/glpk.lib ${EP_InstallDir}/install/lib &&
			                    ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glpk.h   ${EP_InstallDir}/install/include &&
			                    ${CMAKE_COMMAND} -E copy ${EP_InstallDir}/glpk/src/EP_glpk/src/glplpx.h ${EP_InstallDir}/install/include
                          )
    endif()
  endif()
endif()

# #################################################
# <===    glpk
# #################################################

# #################################################
# ===> PThreads compilation
# #################################################

if (COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32)
  if (WIN32)
    ExternalProject_Add(EP_PThreads
                        PREFIX ${EP_InstallDir}/PThreads
                        URL ftp://sourceware.org/pub/pthreads-win32/pthreads-w32-2-9-1-release.tar.gz
                        CONFIGURE_COMMAND ""
                        BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/PThreads/src/EP_PThreads nmake clean VC
                        INSTALL_COMMAND   ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthreadVC2.lib ${CMAKE_BINARY_DIR}/Dependencies/install/lib/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthreadVC2.dll ${CMAKE_BINARY_DIR}/Dependencies/install/bin/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/pthread.h      ${CMAKE_BINARY_DIR}/Dependencies/install/include/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/sched.h        ${CMAKE_BINARY_DIR}/Dependencies/install/include/
                                       && ${CMAKE_COMMAND} -E copy  ${EP_InstallDir}/PThreads/src/EP_PThreads/semaphore.h    ${CMAKE_BINARY_DIR}/Dependencies/install/include/
                        )
  endif (WIN32)
endif ()

# #################################################
# <=== PThreads compilation
# #################################################

# #################################################
# ===> Mumps compilation
# #################################################

if (COIN_ENABLE_DOWNLOAD_MUMPS)
  ExternalProject_Add(EP_Mumps
                      PREFIX ${EP_InstallDir}/Mumps
		      URL http://mumps.enseeiht.fr/MUMPS_4.10.0.tar.gz
                      PATCH_COMMAND     ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/ThirdParty/CMakeLists_mumps.txt ${EP_InstallDir}/Mumps/src/EP_Mumps/CMakeLists.txt
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/Mumps/src/EP_Mumps/build
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Mumps/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir}/install ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Lapack/build make
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/Mumps/src/EP_Lapack/build make install
                      )
endif()

# #################################################
# <=== Mumps compilation
# #################################################

# #################################################
# ===> ASL compilation
# #################################################

if (COIN_ENABLE_DOWNLOAD_ASL)
  ExternalProject_Add(EP_ASL
                      PREFIX ${EP_InstallDir}/ASL
		      URL http://www.coin-or.org/BuildTools/ASL/solvers-20130815.tgz
                      PATCH_COMMAND     ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/ThirdParty/ASL ${EP_InstallDir}/Mumps/src/EP_ASL
                      CONFIGURE_COMMAND ${CMAKE_COMMAND} -E make_directory ${EP_InstallDir}/ASL/src/EP_ASL/build
                                     && ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/ASL/src/EP_ASL/build ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} -DCMAKE_INSTALL_PREFIX=${EP_InstallDir}/install ..
                      BUILD_COMMAND     ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/ASL/src/EP_ASL/build make
                      INSTALL_COMMAND   ${CMAKE_COMMAND} -E chdir ${EP_InstallDir}/ASL/src/EP_ASL/build make install
                      )
endif()

# #################################################
# <=== ASL compilation
# #################################################

# #################################################
# ===> Tests
# #################################################

if (COIN_ENABLE_DOWNLOAD_DATA_TEST)
  set(DATA_TEST_VERSION "1.0.7")
  
  ExternalProject_Add(EP_DATA_TEST
                      PREFIX ${EP_InstallDir}/DATA_TEST
		      URL http://www.coin-or.org/download/source/Data/Data-${DATA_TEST_VERSION}.tgz
                      PATCH_COMMAND     ""
                      CONFIGURE_COMMAND ""
                      BUILD_COMMAND     ""
                      INSTALL_COMMAND   ""
                      )

  add_test(NAME infeas_chemcom_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/chemcom.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_chemcom.out -solve)
  set_tests_properties(infeas_chemcom_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_chemcom_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_pilot4i_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pilot4i.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i.out -solve)
  set_tests_properties(infeas_pilot4i_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_pilot4i_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_reactor_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/reactor.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_reactor.out -solve)
  set_tests_properties(infeas_reactor_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_reactor_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_bgetam_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgetam.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgetam.out -solve)
  set_tests_properties(infeas_bgetam_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgetam_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_refinery_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/refinery.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_refinery.out -solve)
  set_tests_properties(infeas_refinery_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_refinery_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_cplex2_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_cplex2.out -solve)
  set_tests_properties(infeas_cplex2_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_cplex2_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_forest6_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/forest6.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_forest6.out -solve)
  set_tests_properties(infeas_forest6_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_forest6_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_cplex1_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_cplex1.out -solve)
  set_tests_properties(infeas_cplex1_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_cplex1_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_box1_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/box1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_box1.out -solve)
  set_tests_properties(infeas_box1_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_box1_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_itest6_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest6.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_itest6.out -solve)
  set_tests_properties(infeas_itest6_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_itest6_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_bgindy_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgindy.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgindy.out -solve)
  set_tests_properties(infeas_bgindy_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgindy_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_klein2_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein2.out -solve)
  set_tests_properties(infeas_klein2_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein2_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_ceria3d_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ceria3d.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d.out -solve)
  set_tests_properties(infeas_ceria3d_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ceria3d_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_ex72a_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex72a.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ex72a.out -solve)
  set_tests_properties(infeas_ex72a_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ex72a_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_greenbea_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/greenbea.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_greenbea.out -solve)
  set_tests_properties(infeas_greenbea_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_greenbea_mps_clp_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME infeas_klein3_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein3.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein3.out -solve)
  set_tests_properties(infeas_klein3_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein3_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_itest2_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_itest2.out -solve)
  set_tests_properties(infeas_itest2_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_itest2_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_ex73a_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex73a.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ex73a.out -solve)
  set_tests_properties(infeas_ex73a_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ex73a_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_klein1_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein1.out -solve)
  set_tests_properties(infeas_klein1_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein1_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_woodinfe_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/woodinfe.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe.out -solve)
  set_tests_properties(infeas_woodinfe_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_woodinfe_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_bgprtr_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgprtr.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr.out -solve)
  set_tests_properties(infeas_bgprtr_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgprtr_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_galenet_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/galenet.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_galenet.out -solve)
  set_tests_properties(infeas_galenet_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_galenet_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_gran_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gran.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_gran.out -solve)
  set_tests_properties(infeas_gran_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_gran_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_mondou2_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/mondou2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_mondou2.out -solve)
  set_tests_properties(infeas_mondou2_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_mondou2_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_qual_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/qual.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_qual.out -solve)
  set_tests_properties(infeas_qual_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_qual_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_vol1_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/vol1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_vol1.out -solve)
  set_tests_properties(infeas_vol1_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_vol1_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_pang_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pang.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_pang.out -solve)
  set_tests_properties(infeas_pang_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_pang_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_bgdbg1_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgdbg1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1.out -solve)
  set_tests_properties(infeas_bgdbg1_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgdbg1_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_gosh_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gosh.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_gosh.out -solve)
  set_tests_properties(infeas_gosh_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_gosh_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME big_mkc7_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Big/mkc7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/big_mkc7.out -solve)
  set_tests_properties(big_mkc7_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(big_mkc7_mps_clp_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME sample_scOneInt_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/scOneInt.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_scOneInt.out -solve)
  set_tests_properties(sample_scOneInt_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_scOneInt_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_p0201_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0201.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0201.out -solve)
  set_tests_properties(sample_p0201_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0201_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_p0548_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0548.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0548.out -solve)
  set_tests_properties(sample_p0548_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0548_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_hello_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/hello.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_hello.out -solve)
  set_tests_properties(sample_hello_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_hello_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_e226_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/e226.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_e226.out -solve)
  set_tests_properties(sample_e226_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_e226_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_tp3_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp3.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp3.out -solve)
  set_tests_properties(sample_tp3_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp3_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_tp4_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp4.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp4.out -solve)
  set_tests_properties(sample_tp4_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp4_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_finnis_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/finnis.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_finnis.out -solve)
  set_tests_properties(sample_finnis_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_finnis_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_5_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.5.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_5.out -solve)
  set_tests_properties(sample_5_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_5_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_exmip1_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_exmip1.out -solve)
  set_tests_properties(sample_exmip1_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_exmip1_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_share2qp_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/share2qp.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_share2qp.out -solve)
  set_tests_properties(sample_share2qp_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_share2qp_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_afiro_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/afiro.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_afiro.out -solve)
  set_tests_properties(sample_afiro_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_afiro_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_nw460_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/nw460.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_nw460.out -solve)
  set_tests_properties(sample_nw460_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_nw460_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_brandy_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/brandy.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_brandy.out -solve)
  set_tests_properties(sample_brandy_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_brandy_mps_clp_standard PROPERTIES LABELS "MPS")
  # Test from Netlib
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.5185098965e[+]03")
  set_tests_properties(sample_brandy_mps_clp PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME sample_tp5_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp5.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp5.out -solve)
  set_tests_properties(sample_tp5_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp5_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_pack1_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/pack1.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_pack1.out -solve)
  set_tests_properties(sample_pack1_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_pack1_mps_clp_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_p0033_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0033.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0033.out -solve)
  set_tests_properties(sample_p0033_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0033_mps_clp_standard PROPERTIES LABELS "MPS")

  # Netlib tests.
  # Optimal values for objective function can be found at: http://www.netlib.org/lp/data/readme
    
  add_test(NAME netlib_fit2d_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit2d.out -solve)
  set_tests_properties(netlib_fit2d_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit2d_mps_clp_standard PROPERTIES LABELS "MPS")
  
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-6.8464293294e[+]04")
  set_tests_properties(netlib_fit2d_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_forplan_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/forplan.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_forplan.out -solve)
  set_tests_properties(netlib_forplan_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_forplan_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-6.6421873953e[+]02")
  set_tests_properties(netlib_forplan_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  add_test(NAME netlib_ship08s_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship08s.out -solve)
  set_tests_properties(netlib_ship08s_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship08s_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.9200982105e[+]06")
  set_tests_properties(netlib_ship08s_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit1d_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit1d.out -solve)
  set_tests_properties(netlib_fit1d_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit1d_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-9.1463780924e[+]03")
  set_tests_properties(netlib_fit1d_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_brandy_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/brandy.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_brandy.out -solve)
  set_tests_properties(netlib_brandy_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_brandy_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.5185098965e[+]03")
  set_tests_properties(netlib_brandy_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm1_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1.out -solve)
  set_tests_properties(netlib_scfxm1_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm1_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.8416759028e[+]04")
  set_tests_properties(netlib_scfxm1_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow22_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow22.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow22.out -solve)
  set_tests_properties(netlib_grow22_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow22_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.6083433648e[+]08")
  set_tests_properties(netlib_grow22_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bandm_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bandm.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bandm.out -solve)
  set_tests_properties(netlib_bandm_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bandm_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.5862801845e[+]02")
  set_tests_properties(netlib_bandm_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit1p_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit1p.out -solve)
  set_tests_properties(netlib_fit1p_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit1p_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "9.1463780924e[+]03")
  set_tests_properties(netlib_fit1p_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standata_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standata.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standata.out -solve)
  set_tests_properties(netlib_standata_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standata_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.2576995000e[+]03")
  set_tests_properties(netlib_standata_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot4_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot4.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot4.out -solve)
  set_tests_properties(netlib_pilot4_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot4_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.5811392641e[+]03")
  set_tests_properties(netlib_pilot4_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stocfor2_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2.out -solve)
  set_tests_properties(netlib_stocfor2_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stocfor2_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.9024408538e[+]04")
  set_tests_properties(netlib_stocfor2_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap1_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap1.out -solve)
  set_tests_properties(netlib_sctap1_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap1_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4122500000e[+]03")
  set_tests_properties(netlib_sctap1_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scrs8_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scrs8.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scrs8.out -solve)
  set_tests_properties(netlib_scrs8_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scrs8_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "9.0429998619e[+]02")
  set_tests_properties(netlib_scrs8_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap2_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap2.out -solve)
  set_tests_properties(netlib_sctap2_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap2_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.7248071429e[+]03")
  set_tests_properties(netlib_sctap2_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot87_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot87.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot87.out -solve)
  set_tests_properties(netlib_pilot87_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot87_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.0171072827e[+]02")
  set_tests_properties(netlib_pilot87_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_greenbea_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbea.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_greenbea.out -solve)
  set_tests_properties(netlib_greenbea_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_greenbea_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-7.2462405908e[+]07")
  set_tests_properties(netlib_greenbea_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_woodw_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/woodw.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_woodw.out -solve)
  set_tests_properties(netlib_woodw_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_woodw_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.3044763331e[+]00")
  set_tests_properties(netlib_woodw_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_recipe_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/recipe.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_recipe.out -solve)
  set_tests_properties(netlib_recipe_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_recipe_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.6661600000e[+]02")
  set_tests_properties(netlib_recipe_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_share1b_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share1b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_share1b.out -solve)
  set_tests_properties(netlib_share1b_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_share1b_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-7.6589318579e[+]04")
  set_tests_properties(netlib_share1b_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_tuff_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/tuff.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_tuff.out -solve)
  set_tests_properties(netlib_tuff_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_tuff_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "2.9214776509e-01")
  set_tests_properties(netlib_tuff_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_share2b_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share2b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_share2b.out -solve)
  set_tests_properties(netlib_share2b_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_share2b_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.1573224074e[+]02")
  set_tests_properties(netlib_share2b_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bore3d_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bore3d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bore3d.out -solve)
  set_tests_properties(netlib_bore3d_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bore3d_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.3730803942e[+]03")
  set_tests_properties(netlib_bore3d_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_d2q06c_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d2q06c.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c.out -solve)
  set_tests_properties(netlib_d2q06c_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_d2q06c_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.2278423615e[+]05")
  set_tests_properties(netlib_d2q06c_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc50b_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc50b.out -solve)
  set_tests_properties(netlib_sc50b_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc50b_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-7.0000000000e[+]01")
  set_tests_properties(netlib_sc50b_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot.out -solve)
  set_tests_properties(netlib_pilot_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.5740430007e[+]02")
  set_tests_properties(netlib_pilot_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bnl1_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bnl1.out -solve)
  set_tests_properties(netlib_bnl1_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bnl1_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.9776292856e[+]03")
  set_tests_properties(netlib_bnl1_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship04l_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship04l.out -solve)
  set_tests_properties(netlib_ship04l_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship04l_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.7933245380e[+]06")
  set_tests_properties(netlib_ship04l_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc105_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc105.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc105.out -solve)
  set_tests_properties(netlib_sc105_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc105_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.2202061212e[+]01")
  set_tests_properties(netlib_sc105_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_boeing2_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_boeing2.out -solve)
  set_tests_properties(netlib_boeing2_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_boeing2_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.1501872802e[+]02")
  set_tests_properties(netlib_boeing2_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_nesm_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/nesm.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_nesm.out -solve)
  set_tests_properties(netlib_nesm_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_nesm_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4076073035e[+]07")
  set_tests_properties(netlib_nesm_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc205_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc205.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc205.out -solve)
  set_tests_properties(netlib_sc205_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc205_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.2202061212e[+]01")
  set_tests_properties(netlib_sc205_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_finnis_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/finnis.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_finnis.out -solve)
  set_tests_properties(netlib_finnis_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_finnis_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.7279096547e[+]05")
  set_tests_properties(netlib_finnis_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_degen2_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_degen2.out -solve)
  set_tests_properties(netlib_degen2_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_degen2_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.4351780000e[+]03")
  set_tests_properties(netlib_degen2_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_maros-r7_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros-r7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7.out -solve)
  set_tests_properties(netlib_maros-r7_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_maros-r7_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4971851665e[+]06")
  set_tests_properties(netlib_maros-r7_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship04s_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship04s.out -solve)
  set_tests_properties(netlib_ship04s_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship04s_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.7987147004e[+]06")
  set_tests_properties(netlib_ship04s_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_wood1p_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/wood1p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_wood1p.out -solve)
  set_tests_properties(netlib_wood1p_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_wood1p_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4429024116e[+]00")
  set_tests_properties(netlib_wood1p_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_lotfi_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/lotfi.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_lotfi.out -solve)
  set_tests_properties(netlib_lotfi_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_lotfi_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.5264706062e[+]01")
  set_tests_properties(netlib_lotfi_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_gfrd_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/gfrd-pnc.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pnc.out -solve)
  set_tests_properties(netlib_gfrd_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_gfrd_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "6.9022359995e[+]06")
  set_tests_properties(netlib_gfrd_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_etamacro_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/etamacro.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_etamacro.out -solve)
  set_tests_properties(netlib_etamacro_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_etamacro_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-7.5571521774e[+]02")
  set_tests_properties(netlib_etamacro_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow7_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow7.out -solve)
  set_tests_properties(netlib_grow7_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow7_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.7787811815e[+]07")
  set_tests_properties(netlib_grow7_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_dfl001_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/dfl001.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_dfl001.out -solve)
  set_tests_properties(netlib_dfl001_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_dfl001_mps_clp_standard PROPERTIES LABELS "MPS")
  # (there's a ** in the readme file in the netlib website)
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.12664e[+]07")
  set_tests_properties(netlib_dfl001_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg.out -solve)
  set_tests_properties(netlib_agg_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.5991767287e[+]07")
  set_tests_properties(netlib_agg_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standgub_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standgub.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standgub.out -solve)
  set_tests_properties(netlib_standgub_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standgub_mps_clp_standard PROPERTIES LABELS "MPS")
  # Nothing in the readme
  
  add_test(NAME netlib_ship12l_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship12l.out -solve)
  set_tests_properties(netlib_ship12l_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship12l_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4701879193e[+]06")
  set_tests_properties(netlib_ship12l_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standmps_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standmps.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standmps.out -solve)
  set_tests_properties(netlib_standmps_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standmps_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4060175000e[+]03")
  set_tests_properties(netlib_standmps_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scagr25_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr25.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scagr25.out -solve)
  set_tests_properties(netlib_scagr25_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scagr25_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.4753433061e[+]07")
  set_tests_properties(netlib_scagr25_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_capri_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/capri.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_capri.out -solve)
  set_tests_properties(netlib_capri_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_capri_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "2.6900129138e[+]03")
  set_tests_properties(netlib_capri_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_cycle_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/cycle.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_cycle.out -solve)
  set_tests_properties(netlib_cycle_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_cycle_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.2263930249e[+]00")
  set_tests_properties(netlib_cycle_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_greenbeb_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbeb.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb.out -solve)
  set_tests_properties(netlib_greenbeb_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_greenbeb_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.3021476065e[+]06")
  set_tests_properties(netlib_greenbeb_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg2_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg2.out -solve)
  set_tests_properties(netlib_agg2_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg2_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.0239252356e[+]07")
  set_tests_properties(netlib_agg2_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stair_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stair.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stair.out -solve)
  set_tests_properties(netlib_stair_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stair_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.5126695119e[+]02")
  set_tests_properties(netlib_stair_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_shell_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/shell.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_shell.out -solve)
  set_tests_properties(netlib_shell_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_shell_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.2088253460e[+]09")
  set_tests_properties(netlib_shell_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sierra_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sierra.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sierra.out -solve)
  set_tests_properties(netlib_sierra_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sierra_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.5394362184e[+]07")
  set_tests_properties(netlib_sierra_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_afiro_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/afiro.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_afiro.out -solve)
  set_tests_properties(netlib_afiro_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_afiro_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.6475314286e[+]02")
  set_tests_properties(netlib_afiro_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd1_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd1.out -solve)
  set_tests_properties(netlib_scsd1_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd1_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "8.6666666743e[+]00")
  set_tests_properties(netlib_scsd1_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd8_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd8.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd8.out -solve)
  set_tests_properties(netlib_scsd8_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd8_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "9.0499999993e[+]02")
  set_tests_properties(netlib_scsd8_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship08l_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship08l.out -solve)
  set_tests_properties(netlib_ship08l_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship08l_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.9090552114e[+]06")
  set_tests_properties(netlib_ship08l_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_25fv47_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/25fv47.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_25fv47.out -solve)
  set_tests_properties(netlib_25fv47_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_25fv47_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "5.5018458883e[+]03")
  set_tests_properties(netlib_25fv47_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_czprob_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/czprob.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_czprob.out -solve)
  set_tests_properties(netlib_czprob_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_czprob_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "2.1851966989e[+]06")
  set_tests_properties(netlib_czprob_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_adlittle_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/adlittle.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_adlittle.out -solve)
  set_tests_properties(netlib_adlittle_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_adlittle_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "2.2549496316e[+]05")
  set_tests_properties(netlib_adlittle_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_d6cube_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d6cube.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_d6cube.out -solve)
  set_tests_properties(netlib_d6cube_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_d6cube_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.1549166667e[+]02")
  set_tests_properties(netlib_d6cube_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scorpion_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scorpion.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scorpion.out -solve)
  set_tests_properties(netlib_scorpion_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scorpion_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.8781248227e[+]03")
  set_tests_properties(netlib_scorpion_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap3_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap3.out -solve)
  set_tests_properties(netlib_sctap3_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap3_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4240000000e[+]03")
  set_tests_properties(netlib_sctap3_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_seba_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/seba.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_seba.out -solve)
  set_tests_properties(netlib_seba_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_seba_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.5711600000e[+]04")
  set_tests_properties(netlib_seba_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_modszk1_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/modszk1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_modszk1.out -solve)
  set_tests_properties(netlib_modszk1_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_modszk1_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.2061972906e[+]02")
  set_tests_properties(netlib_modszk1_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilotnov_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilotnov.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov.out -solve)
  set_tests_properties(netlib_pilotnov_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilotnov_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.4972761882e[+]03")
  set_tests_properties(netlib_pilotnov_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_beaconfd_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/beaconfd.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd.out -solve)
  set_tests_properties(netlib_beaconfd_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_beaconfd_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.3592485807e[+]04")
  set_tests_properties(netlib_beaconfd_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_e226_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/e226.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_e226.out -solve)
  set_tests_properties(netlib_e226_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_e226_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.8751929066e[+]01")
  set_tests_properties(netlib_e226_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_degen3_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_degen3.out -solve)
  set_tests_properties(netlib_degen3_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_degen3_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-9.8729400000e[+]02")
  set_tests_properties(netlib_degen3_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm2_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2.out -solve)
  set_tests_properties(netlib_scfxm2_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm2_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.6660261565e[+]04")
  set_tests_properties(netlib_scfxm2_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fffff800_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fffff800.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fffff800.out -solve)
  set_tests_properties(netlib_fffff800_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fffff800_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "5.5567961165e[+]05")
  set_tests_properties(netlib_fffff800_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_kb2_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/kb2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_kb2.out -solve)
  set_tests_properties(netlib_kb2_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_kb2_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.7499001299e[+]03")
  set_tests_properties(netlib_kb2_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ganges_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ganges.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ganges.out -solve)
  set_tests_properties(netlib_ganges_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ganges_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.0958636356e[+]05")
  set_tests_properties(netlib_ganges_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stocfor1_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1.out -solve)
  set_tests_properties(netlib_stocfor1_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stocfor1_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.1131976219e[+]04")
  set_tests_properties(netlib_stocfor1_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd6_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd6.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd6.out -solve)
  set_tests_properties(netlib_scsd6_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd6_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "5.0500000078e[+]01")
  set_tests_properties(netlib_scsd6_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_80bau3b_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/80bau3b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b.out -solve)
  set_tests_properties(netlib_80bau3b_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_80bau3b_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "9.8723216072e[+]05")
  set_tests_properties(netlib_80bau3b_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship12s_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship12s.out -solve)
  set_tests_properties(netlib_ship12s_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship12s_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4892361344e[+]06")
  set_tests_properties(netlib_ship12s_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg3_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg3.out -solve)
  set_tests_properties(netlib_agg3_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg3_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.0312115935e[+]07")
  set_tests_properties(netlib_agg3_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_maros_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_maros.out -solve)
  set_tests_properties(netlib_maros_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_maros_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.8063743701e[+]04")
  set_tests_properties(netlib_maros_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_perold_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/perold.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_perold.out -solve)
  set_tests_properties(netlib_perold_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_perold_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-9.3807580773e[+]03")
  set_tests_properties(netlib_perold_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scagr7_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scagr7.out -solve)
  set_tests_properties(netlib_scagr7_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scagr7_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.3313892548e[+]06")
  set_tests_properties(netlib_scagr7_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm3_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3.out -solve)
  set_tests_properties(netlib_scfxm3_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm3_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "5.4901254550e[+]04")
  set_tests_properties(netlib_scfxm3_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow15_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow15.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow15.out -solve)
  set_tests_properties(netlib_grow15_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow15_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.0687094129e[+]08")
  set_tests_properties(netlib_grow15_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit2p_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit2p.out -solve)
  set_tests_properties(netlib_fit2p_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit2p_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "6.8464293232e[+]04")
  set_tests_properties(netlib_fit2p_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_boeing1_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_boeing1.out -solve)
  set_tests_properties(netlib_boeing1_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_boeing1_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.3521356751e[+]02")
  set_tests_properties(netlib_boeing1_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc50a_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50a.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc50a.out -solve)
  set_tests_properties(netlib_sc50a_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc50a_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-6.4575077059e[+]01")
  set_tests_properties(netlib_sc50a_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_vtpbase_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/vtpbase.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase.out -solve)
  set_tests_properties(netlib_vtpbase_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_vtpbase_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.2983146246e[+]05")
  set_tests_properties(netlib_vtpbase_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_blend_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/blend.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_blend.out -solve)
  set_tests_properties(netlib_blend_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_blend_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.0812149846e[+]01")
  set_tests_properties(netlib_blend_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bnl2_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bnl2.out -solve)
  set_tests_properties(netlib_bnl2_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bnl2_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.8112365404e[+]03")
  set_tests_properties(netlib_bnl2_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_israel_mps_clp_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/israel.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_israel.out -solve)
  set_tests_properties(netlib_israel_mps_clp_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_israel_mps_clp_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-8.9664482186e[+]05")
  set_tests_properties(netlib_israel_mps_clp_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
endif()

# #################################################
# <=== Tests
# #################################################

# #################################################
# ===>   Restart cmake
# #################################################

## Overload some CMake command to avoid modif all sub-projects CMakLists.txt file
## The original built-in commands are prefixed with an underscore if overriding any of them
## Prevent the modification of all sub-project

macro(add_library _target)
  _add_library (${_target} ${ARGN})
  
  if (COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32)
    add_dependencies(${_target} EP_PThreads)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_LAPACK)
    add_dependencies(${_target} EP_Lapack)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_GLPK)
    add_dependencies(${_target} EP_glpk)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_MUMPS)
    add_dependencies(${_target} EP_Mumps)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_ASL)
    add_dependencies(${_target} EP_ASL)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_ZLIB)
    add_dependencies(${_target} EP_Zlib)
  endif ()
endmacro()

macro(add_executable _target)
  _add_executable (${_target} ${ARGN})
  
  if (COIN_ENABLE_DOWNLOAD_PTHREAD_WIN32)
    add_dependencies(${_target} EP_PThreads)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_LAPACK)
    add_dependencies(${_target} EP_Lapack)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_GLPK)
    add_dependencies(${_target} EP_glpk)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_MUMPS)
    add_dependencies(${_target} EP_Mumps)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_ASL)
    add_dependencies(${_target} EP_ASL)
  endif ()
  if (COIN_ENABLE_DOWNLOAD_ZLIB)
    add_dependencies(${_target} EP_Zlib)
  endif ()
endmacro()

# #################################################
# <===   Restart cmake 
# #################################################
