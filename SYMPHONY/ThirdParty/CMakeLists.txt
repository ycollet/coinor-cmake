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

  add_test(NAME infeas_chemcom_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/chemcom.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_chemcom.out)
  set_tests_properties(infeas_chemcom_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_chemcom_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_pilot4i_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pilot4i.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i.out)
  set_tests_properties(infeas_pilot4i_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_pilot4i_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_reactor_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/reactor.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_reactor.out)
  set_tests_properties(infeas_reactor_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_reactor_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_bgetam_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgetam.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_bgetam.out)
  set_tests_properties(infeas_bgetam_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgetam_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_refinery_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/refinery.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_refinery.out)
  set_tests_properties(infeas_refinery_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_refinery_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_cplex2_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex2.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_cplex2.out)
  set_tests_properties(infeas_cplex2_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_cplex2_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_forest6_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/forest6.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_forest6.out)
  set_tests_properties(infeas_forest6_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_forest6_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_cplex1_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex1.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_cplex1.out)
  set_tests_properties(infeas_cplex1_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_cplex1_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_box1_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/box1.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_box1.out)
  set_tests_properties(infeas_box1_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_box1_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_itest6_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest6.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_itest6.out)
  set_tests_properties(infeas_itest6_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_itest6_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_bgindy_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgindy.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_bgindy.out)
  set_tests_properties(infeas_bgindy_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgindy_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_klein2_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein2.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_klein2.out)
  set_tests_properties(infeas_klein2_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein2_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_ceria3d_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ceria3d.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d.out)
  set_tests_properties(infeas_ceria3d_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ceria3d_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_ex72a_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex72a.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_ex72a.out)
  set_tests_properties(infeas_ex72a_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ex72a_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_greenbea_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/greenbea.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_greenbea.out)
  set_tests_properties(infeas_greenbea_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_greenbea_mps_symphony_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME infeas_klein3_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein3.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_klein3.out)
  set_tests_properties(infeas_klein3_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein3_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_itest2_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest2.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_itest2.out)
  set_tests_properties(infeas_itest2_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_itest2_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_ex73a_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex73a.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_ex73a.out)
  set_tests_properties(infeas_ex73a_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ex73a_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_klein1_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein1.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_klein1.out)
  set_tests_properties(infeas_klein1_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein1_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_woodinfe_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/woodinfe.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe.out)
  set_tests_properties(infeas_woodinfe_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_woodinfe_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_bgprtr_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgprtr.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr.out)
  set_tests_properties(infeas_bgprtr_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgprtr_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_galenet_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/galenet.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_galenet.out)
  set_tests_properties(infeas_galenet_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_galenet_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_gran_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gran.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_gran.out)
  set_tests_properties(infeas_gran_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_gran_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_mondou2_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/mondou2.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_mondou2.out)
  set_tests_properties(infeas_mondou2_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_mondou2_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_qual_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/qual.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_qual.out)
  set_tests_properties(infeas_qual_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_qual_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_vol1_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/vol1.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_vol1.out)
  set_tests_properties(infeas_vol1_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_vol1_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_pang_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pang.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_pang.out)
  set_tests_properties(infeas_pang_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_pang_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_bgdbg1_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgdbg1.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1.out)
  set_tests_properties(infeas_bgdbg1_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgdbg1_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME infeas_gosh_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gosh.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_gosh.out)
  set_tests_properties(infeas_gosh_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_gosh_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME big_mkc7_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Big/mkc7.mps.gz -o ${CMAKE_BINARY_DIR}/tests/big_mkc7.out)
  set_tests_properties(big_mkc7_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(big_mkc7_mps_symphony_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME sample_scOneInt_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/scOneInt.mps -o ${CMAKE_BINARY_DIR}/tests/sample_scOneInt.out)
  set_tests_properties(sample_scOneInt_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_scOneInt_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_p0201_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0201.mps -o ${CMAKE_BINARY_DIR}/tests/sample_p0201.out)
  set_tests_properties(sample_p0201_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0201_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_p0548_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0548.mps -o ${CMAKE_BINARY_DIR}/tests/sample_p0548.out)
  set_tests_properties(sample_p0548_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0548_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_hello_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/hello.mps -o ${CMAKE_BINARY_DIR}/tests/sample_hello.out)
  set_tests_properties(sample_hello_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_hello_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_e226_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/e226.mps -o ${CMAKE_BINARY_DIR}/tests/sample_e226.out)
  set_tests_properties(sample_e226_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_e226_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_tp3_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp3.mps -o ${CMAKE_BINARY_DIR}/tests/sample_tp3.out)
  set_tests_properties(sample_tp3_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp3_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_tp4_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp4.mps -o ${CMAKE_BINARY_DIR}/tests/sample_tp4.out)
  set_tests_properties(sample_tp4_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp4_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_finnis_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/finnis.mps -o ${CMAKE_BINARY_DIR}/tests/sample_finnis.out)
  set_tests_properties(sample_finnis_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_finnis_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_5_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.5.mps -o ${CMAKE_BINARY_DIR}/tests/sample_5.out)
  set_tests_properties(sample_5_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_5_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_exmip1_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.mps -o ${CMAKE_BINARY_DIR}/tests/sample_exmip1.out)
  set_tests_properties(sample_exmip1_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_exmip1_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_share2qp_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/share2qp.mps -o ${CMAKE_BINARY_DIR}/tests/sample_share2qp.out)
  set_tests_properties(sample_share2qp_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_share2qp_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_afiro_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/afiro.mps -o ${CMAKE_BINARY_DIR}/tests/sample_afiro.out)
  set_tests_properties(sample_afiro_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_afiro_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_nw460_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/nw460.mps -o ${CMAKE_BINARY_DIR}/tests/sample_nw460.out)
  set_tests_properties(sample_nw460_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_nw460_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_brandy_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/brandy.mps -o ${CMAKE_BINARY_DIR}/tests/sample_brandy.out)
  set_tests_properties(sample_brandy_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_brandy_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_tp5_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp5.mps -o ${CMAKE_BINARY_DIR}/tests/sample_tp5.out)
  set_tests_properties(sample_tp5_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp5_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_pack1_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/pack1.mps -o ${CMAKE_BINARY_DIR}/tests/sample_pack1.out)
  set_tests_properties(sample_pack1_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_pack1_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME sample_p0033_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0033.mps -o ${CMAKE_BINARY_DIR}/tests/sample_p0033.out)
  set_tests_properties(sample_p0033_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0033_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_fit2d_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2d.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_fit2d.out)
  set_tests_properties(netlib_fit2d_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit2d_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_forplan_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/forplan.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_forplan.out)
  set_tests_properties(netlib_forplan_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_forplan_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_ship08s_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08s.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_ship08s.out)
  set_tests_properties(netlib_ship08s_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship08s_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_fit1d_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1d.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_fit1d.out)
  set_tests_properties(netlib_fit1d_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit1d_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_brandy_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/brandy.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_brandy.out)
  set_tests_properties(netlib_brandy_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_brandy_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_scfxm1_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm1.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1.out)
  set_tests_properties(netlib_scfxm1_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm1_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_grow22_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow22.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_grow22.out)
  set_tests_properties(netlib_grow22_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow22_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_bandm_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bandm.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_bandm.out)
  set_tests_properties(netlib_bandm_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bandm_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_fit1p_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1p.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_fit1p.out)
  set_tests_properties(netlib_fit1p_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit1p_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_standata_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standata.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_standata.out)
  set_tests_properties(netlib_standata_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standata_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_pilot4_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot4.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_pilot4.out)
  set_tests_properties(netlib_pilot4_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot4_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_stocfor2_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2.out)
  set_tests_properties(netlib_stocfor2_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stocfor2_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_sctap1_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap1.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sctap1.out)
  set_tests_properties(netlib_sctap1_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap1_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_scrs8_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scrs8.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scrs8.out)
  set_tests_properties(netlib_scrs8_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scrs8_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_sctap2_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sctap2.out)
  set_tests_properties(netlib_sctap2_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap2_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_pilot87_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot87.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_pilot87.out)
  set_tests_properties(netlib_pilot87_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot87_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_greenbea_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbea.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_greenbea.out)
  set_tests_properties(netlib_greenbea_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_greenbea_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_woodw_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/woodw.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_woodw.out)
  set_tests_properties(netlib_woodw_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_woodw_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_recipe_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/recipe.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_recipe.out)
  set_tests_properties(netlib_recipe_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_recipe_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_share1b_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share1b.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_share1b.out)
  set_tests_properties(netlib_share1b_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_share1b_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_tuff_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/tuff.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_tuff.out)
  set_tests_properties(netlib_tuff_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_tuff_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_share2b_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share2b.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_share2b.out)
  set_tests_properties(netlib_share2b_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_share2b_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_bore3d_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bore3d.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_bore3d.out)
  set_tests_properties(netlib_bore3d_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bore3d_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_d2q06c_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d2q06c.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c.out)
  set_tests_properties(netlib_d2q06c_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_d2q06c_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_sc50b_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50b.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sc50b.out)
  set_tests_properties(netlib_sc50b_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc50b_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_pilot_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_pilot.out)
  set_tests_properties(netlib_pilot_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_bnl1_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl1.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_bnl1.out)
  set_tests_properties(netlib_bnl1_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bnl1_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_ship04l_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04l.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_ship04l.out)
  set_tests_properties(netlib_ship04l_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship04l_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_sc105_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc105.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sc105.out)
  set_tests_properties(netlib_sc105_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc105_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_boeing2_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_boeing2.out)
  set_tests_properties(netlib_boeing2_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_boeing2_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_nesm_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/nesm.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_nesm.out)
  set_tests_properties(netlib_nesm_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_nesm_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_sc205_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc205.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sc205.out)
  set_tests_properties(netlib_sc205_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc205_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_finnis_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/finnis.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_finnis.out)
  set_tests_properties(netlib_finnis_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_finnis_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_degen2_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_degen2.out)
  set_tests_properties(netlib_degen2_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_degen2_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_maros-r7_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros-r7.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7.out)
  set_tests_properties(netlib_maros-r7_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_maros-r7_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_ship04s_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04s.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_ship04s.out)
  set_tests_properties(netlib_ship04s_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship04s_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_wood1p_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/wood1p.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_wood1p.out)
  set_tests_properties(netlib_wood1p_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_wood1p_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_lotfi_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/lotfi.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_lotfi.out)
  set_tests_properties(netlib_lotfi_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_lotfi_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_gfrd_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/gfrd-pnc.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_pnc.out)
  set_tests_properties(netlib_gfrd_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_gfrd_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_etamacro_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/etamacro.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_etamacro.out)
  set_tests_properties(netlib_etamacro_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_etamacro_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_grow7_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow7.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_grow7.out)
  set_tests_properties(netlib_grow7_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow7_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_dfl001_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/dfl001.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_dfl001.out)
  set_tests_properties(netlib_dfl001_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_dfl001_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_agg_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_agg.out)
  set_tests_properties(netlib_agg_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_standgub_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standgub.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_standgub.out)
  set_tests_properties(netlib_standgub_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standgub_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_ship12l_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12l.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_ship12l.out)
  set_tests_properties(netlib_ship12l_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship12l_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_standmps_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standmps.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_standmps.out)
  set_tests_properties(netlib_standmps_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standmps_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_scagr25_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr25.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scagr25.out)
  set_tests_properties(netlib_scagr25_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scagr25_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_capri_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/capri.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_capri.out)
  set_tests_properties(netlib_capri_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_capri_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_cycle_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/cycle.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_cycle.out)
  set_tests_properties(netlib_cycle_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_cycle_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_greenbeb_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbeb.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb.out)
  set_tests_properties(netlib_greenbeb_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_greenbeb_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_agg2_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_agg2.out)
  set_tests_properties(netlib_agg2_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg2_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_stair_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stair.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_stair.out)
  set_tests_properties(netlib_stair_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stair_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_shell_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/shell.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_shell.out)
  set_tests_properties(netlib_shell_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_shell_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_sierra_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sierra.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sierra.out)
  set_tests_properties(netlib_sierra_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sierra_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_afiro_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/afiro.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_afiro.out)
  set_tests_properties(netlib_afiro_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_afiro_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_scsd1_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd1.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scsd1.out)
  set_tests_properties(netlib_scsd1_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd1_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_scsd8_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd8.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scsd8.out)
  set_tests_properties(netlib_scsd8_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd8_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_ship08l_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08l.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_ship08l.out)
  set_tests_properties(netlib_ship08l_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship08l_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_25fv47_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/25fv47.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_25fv47.out)
  set_tests_properties(netlib_25fv47_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_25fv47_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_czprob_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/czprob.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_czprob.out)
  set_tests_properties(netlib_czprob_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_czprob_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_adlittle_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/adlittle.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_adlittle.out)
  set_tests_properties(netlib_adlittle_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_adlittle_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_d6cube_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d6cube.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_d6cube.out)
  set_tests_properties(netlib_d6cube_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_d6cube_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_scorpion_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scorpion.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scorpion.out)
  set_tests_properties(netlib_scorpion_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scorpion_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_sctap3_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap3.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sctap3.out)
  set_tests_properties(netlib_sctap3_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap3_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_seba_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/seba.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_seba.out)
  set_tests_properties(netlib_seba_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_seba_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_modszk1_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/modszk1.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_modszk1.out)
  set_tests_properties(netlib_modszk1_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_modszk1_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_pilotnov_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilotnov.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov.out)
  set_tests_properties(netlib_pilotnov_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilotnov_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_beaconfd_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/beaconfd.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd.out)
  set_tests_properties(netlib_beaconfd_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_beaconfd_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_e226_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/e226.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_e226.out)
  set_tests_properties(netlib_e226_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_e226_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_degen3_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen3.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_degen3.out)
  set_tests_properties(netlib_degen3_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_degen3_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_scfxm2_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2.out)
  set_tests_properties(netlib_scfxm2_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm2_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_fffff800_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fffff800.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_fffff800.out)
  set_tests_properties(netlib_fffff800_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fffff800_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_kb2_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/kb2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_kb2.out)
  set_tests_properties(netlib_kb2_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_kb2_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_ganges_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ganges.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_ganges.out)
  set_tests_properties(netlib_ganges_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ganges_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_stocfor1_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor1.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1.out)
  set_tests_properties(netlib_stocfor1_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stocfor1_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_scsd6_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd6.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scsd6.out)
  set_tests_properties(netlib_scsd6_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd6_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_80bau3b_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/80bau3b.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b.out)
  set_tests_properties(netlib_80bau3b_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_80bau3b_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_ship12s_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12s.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_ship12s.out)
  set_tests_properties(netlib_ship12s_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship12s_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_agg3_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg3.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_agg3.out)
  set_tests_properties(netlib_agg3_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg3_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_maros_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_maros.out)
  set_tests_properties(netlib_maros_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_maros_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_perold_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/perold.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_perold.out)
  set_tests_properties(netlib_perold_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_perold_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_scagr7_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr7.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scagr7.out)
  set_tests_properties(netlib_scagr7_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scagr7_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_scfxm3_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm3.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3.out)
  set_tests_properties(netlib_scfxm3_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm3_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_grow15_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow15.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_grow15.out)
  set_tests_properties(netlib_grow15_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow15_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_fit2p_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2p.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_fit2p.out)
  set_tests_properties(netlib_fit2p_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit2p_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_boeing1_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing1.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_boeing1.out)
  set_tests_properties(netlib_boeing1_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_boeing1_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_sc50a_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50a.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sc50a.out)
  set_tests_properties(netlib_sc50a_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc50a_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_vtpbase_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/vtpbase.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase.out)
  set_tests_properties(netlib_vtpbase_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_vtpbase_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_blend_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/blend.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_blend.out)
  set_tests_properties(netlib_blend_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_blend_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_bnl2_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_bnl2.out)
  set_tests_properties(netlib_bnl2_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bnl2_mps_symphony_standard PROPERTIES LABELS "MPS")

  add_test(NAME netlib_israel_mps_symphony_standard 
           COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/israel.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_israel.out)
  set_tests_properties(netlib_israel_mps_symphony_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_israel_mps_symphony_standard PROPERTIES LABELS "MPS")
endif ()
 

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
