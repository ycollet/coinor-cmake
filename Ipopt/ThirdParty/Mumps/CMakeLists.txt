project (MUMPS C CXX Fortran)

cmake_minimum_required (VERSION 2.8)

option(PROJECT_REVISION "Set the project revision version (if you don't compile in a svn repo)" OFF)
option(USE_MUMPS_LIBSEQ "Use the MUMPS sequential MPI stub" OFF)

#------------------------------------------------------------
# End of user config part
#------------------------------------------------------------

set (CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
set (EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR})

#------------------------------------------------------------
# Detect 64 bits
#------------------------------------------------------------

if( CMAKE_SIZEOF_VOID_P EQUAL 4 )
  set( HAVE_64_BIT 0 )
else( CMAKE_SIZEOF_VOID_P EQUAL 4 )
  set( HAVE_64_BIT 1 )
endif( CMAKE_SIZEOF_VOID_P EQUAL 4 )

#------------------------------------------------------------
# MPI
#------------------------------------------------------------

if (NOT USE_MUMPS_LIBSEQ AND NOT MPI_FOUND)
  # Use MPI_EXTRA_LIBNAMES to specify required libraries under MPI
  set(MPI_EXTRA_LIBNAMES fmpich mpich)
  find_package(MPI)
endif (NOT USE_MUMPS_LIBSEQ AND NOT MPI_FOUND)

if (NOT USE_MUMPS_LIBSEQ)
  if (WIN32)
    add_definitions("/Dpord")
    add_definitions("/DOMPI_IMPORTS /DOPAL_IMPORTS /DORTEIMPORTS")
  else (WIN32)
    add_definitions("-Dpord")
  endif (WIN32)
endif (NOT USE_MUMPS_LIBSEQ)

#------------------------------------------------------------
# ATLAS / MKL
#------------------------------------------------------------

# Use MKL_LIBS to specify the required libs under MKL
if (WIN32)
  if (HAVE_64_BIT)
    set(MKL_LIBS mkl_lapack95_lp64 
                 mkl_blas95_lp64 
                 mkl_solver_lp64
                 mkl_intel_lp64
                 mkl_intel_thread
                 mkl_core
                 mkl_blacs_lp64_dll)
  else (HAVE_64_BIT)
    set(MKL_LIBS mkl_lapack95
                 mkl_blas95
                 mkl_solver
                 mkl_intel_c
                 mkl_intel_thread
                 mkl_core
                 mkl_blacs_dll)
  endif (HAVE_64_BIT)
else (WIN32)
  set(MKL_LIBS mkl_lapack95_lp64
               mkl_blas95_lp64
               mkl_solver_lp64
               mkl_intel_lp64
               mkl_intel_thread
               mkl_core
               mkl_blacs_openmpi_lp64)
endif (WIN32)

#include(UseAtlas)

if (NOT MKL_FOUND)
  message(STATUS "Searching for BLAS and LAPACK")
  find_package(BLAS)
  find_package(LAPACK)
endif (NOT MKL_FOUND)

#------------------------------------------------------------
# Subversion
#------------------------------------------------------------

find_package(Subversion)

if (NOT PROJECT_REVISION)
  if (Subversion_FOUND)
    Subversion_WC_INFO(${PROJECT_SOURCE_DIR} Project)
  else (Subversion_FOUND)
    message(WARNING "Subversion must be installed. Check http://subversion.apach.org")
    set(Project_WC_REVISION 0)
  endif (Subversion_FOUND)
else (NOT PROJECT_REVISION)
  set(Project_WC_REVISION ${PROJECT_REVISION})
endif (NOT PROJECT_REVISION)

#------------------------------------------------------------
# configure config*.h
#------------------------------------------------------------

# if MPI found, then do not compile libseq ...

set(INCLUDE_DIRS "${CMAKE_CURRENT_SOURCE_DIR}/include"
                 "${CMAKE_CURRENT_SOURCE_DIR}/PORD/include"
                 "${CMAKE_CURRENT_SOURCE_DIR}/src")

if (MPI_FOUND)
  set(INCLUDE_DIRS ${INCLUDE_DIRS}
                   "${MPI_INCLUDE_PATH}")
endif (MPI_FOUND)

if (USE_MUMPS_LIBSEQ)
  set(INCLUDE_DIRS ${INCLUDE_DIRS}
                   "${CMAKE_CURRENT_SOURCE_DIR}/libseq")
endif (USE_MUMPS_LIBSEQ)

include_directories(${INCLUDE_DIRS})

if (MKL_FOUND)
  set(LINK_PATHS ${LINK_PATHS} 
                 ${MKL_PATH})
endif (MKL_FOUND)

if (MPI_FOUND)
  set(LINK_PATHS ${LINK_PATHS} 
                 ${MPI_LIBRARY_PATH})
endif (MPI_FOUND)

link_directories(${LINK_PATHS})

set(MUMPS_PORD_SRCS PORD/lib/graph.c PORD/lib/gbipart.c PORD/lib/gbisect.c PORD/lib/ddcreate.c PORD/lib/ddbisect.c PORD/lib/nestdiss.c 
                    PORD/lib/multisector.c PORD/lib/gelim.c PORD/lib/bucket.c PORD/lib/tree.c PORD/lib/symbfac.c PORD/lib/interface.c 
                    PORD/lib/sort.c PORD/lib/minpriority.c)
       
set(MUMPS_LIBSEQ_SRCS libseq/mpi.f libseq/mpic.c libseq/elapse.c)
    
set(MUMPS_COMMON_SRCS src/mumps_part9.F src/mumps_common.c src/mumps_ooc_common.F src/mumps_orderings.c src/mumps_size.c
                      src/mumps_io.c src/mumps_io_basic.c src/mumps_io_thread.c src/mumps_io_err.c src/mumps_static_mapping.F
                      src/tools_common_mod.F src/mumps_sol_es.F)

set(MUMPS_C_SRCS src/cmumps_part1.F src/cmumps_part2.F src/cmumps_part3.F src/cmumps_part4.F src/cmumps_part5.F src/cmumps_part6.F
                 src/cmumps_part7.F src/cmumps_part8.F src/cmumps_comm_buffer.F src/cmumps_load.F src/mumps_c.c src/cmumps_ooc_buffer.F
                 src/cmumps_ooc.F src/cmumps_struc_def.F)

set(MUMPS_D_SRCS src/dmumps_part1.F src/dmumps_part2.F src/dmumps_part3.F src/dmumps_part4.F src/dmumps_part5.F src/dmumps_part6.F
                 src/dmumps_part7.F src/dmumps_part8.F src/dmumps_comm_buffer.F src/dmumps_load.F src/mumps_c.c src/dmumps_ooc_buffer.F
                 src/dmumps_ooc.F src/dmumps_struc_def.F)

set(MUMPS_S_SRCS src/smumps_part1.F src/smumps_part2.F src/smumps_part3.F src/smumps_part4.F src/smumps_part5.F src/smumps_part6.F
                 src/smumps_part7.F src/smumps_part8.F src/smumps_comm_buffer.F src/smumps_load.F src/mumps_c.c src/smumps_ooc_buffer.F
                 src/smumps_ooc.F src/smumps_struc_def.F)

set(MUMPS_Z_SRCS src/zmumps_part1.F src/zmumps_part2.F src/zmumps_part3.F src/zmumps_part4.F src/zmumps_part5.F src/zmumps_part6.F
                 src/zmumps_part7.F src/zmumps_part8.F src/zmumps_comm_buffer.F src/zmumps_load.F src/mumps_c.c src/zmumps_ooc_buffer.F
                 src/zmumps_ooc.F src/zmumps_struc_def.F)

if (WIN32)
  # Remove /STACK:10000000 set by CMake. This value for stack size
  # is very high, limiting the number of threads we can spawn.
  # Default value used by Windows is 1MB which is good enough.
  
  STRING(REGEX REPLACE "/STACK:[0-9]+" "/STACK:${STACK_SIZE}"
         CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS}")
  
  if (${MSVC_VERSION} MATCHES "1400") # Visual 2005
    message(STATUS "Visual 2005")
    set(CMAKE_EXE_LINKER_FLAGS_RELEASE "${CMAKE_EXE_LINKER_FLAGS} /MANIFEST:NO /LARGEADDRESSAWARE /NODEFAULTLIB:MSVCRT")
    set(CMAKE_EXE_LINKER_FLAGS_DEBUG   "${CMAKE_EXE_LINKER_FLAGS} /MANIFEST:NO /LARGEADDRESSAWARE /NODEFAULTLIB:MSVCRTD")
  else (${MSVC_VERSION} MATCHES "1400")
    message(STATUS "Visual other")
    set(CMAKE_EXE_LINKER_FLAGS_RELEASE "${CMAKE_EXE_LINKER_FLAGS} /MANIFEST:NO /LARGEADDRESSAWARE /NODEFAULTLIB:LIBCMT")
    set(CMAKE_EXE_LINKER_FLAGS_DEBUG   "${CMAKE_EXE_LINKER_FLAGS} /MANIFEST:NO /LARGEADDRESSAWARE /NODEFAULTLIB:LIBCMTD")
  endif (${MSVC_VERSION} MATCHES "1400")
else (WIN32)
  set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS}")
endif (WIN32)

if (WIN32)
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} /fpp /nologo /reentrancy /fixed /warn:noalignments /Qsave /Qzero /libs:static /threads /traceback /D_CRT_SECURE_NO_WARNINGS /DALLOW_NON_INIT /Dintel_ ${COMPILER_FLAGS}")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /nologo /D_CRT_SECURE_NO_WARNINGS /DAdd_ ")
else (WIN32)
  if (COMPILE_ON_CLUSTER)
    set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -fpp -save -zero -nologo -fixed -traceback -DALLOW_NON_INIT -Dintel_ ${COMPILER_FLAGS}")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DAdd_ ")
  else (COMPILE_ON_CLUSTER)
    set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -cpp -Wall -fcray-pointer -fall-intrinsics -finit-local-zero -DALLOW_NON_INIT -Dintel_ ${COMPILER_FLAGS}")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DAdd_ ")
  endif (COMPILE_ON_CLUSTER)
endif (WIN32)
  
if (WIN32)
  if (USE_MUMPS_LIBSEQ)
    set(LINK_LIBS ${LINK_LIBS} 
                  libseq)
  else (USE_MUMPS_LIBSEQ)
    set(LINK_LIBS ${LINK_LIBS} 
                  ${MPI_LIB_NAME})
  endif (USE_MUMPS_LIBSEQ)
  
  if (MKL_FOUND)
    set(LINK_LIBS ${LINK_LIBS} 
                  ${ATLAS_LIBRARIES}
                  libiomp5mt)
  endif (MKL_FOUND)
else (WIN32)
  if (MKL_FOUND)
    set(LINK_LIBS ${LINK_LIBS} 
	              ${ATLAS_LIBRARIES}
                  iomp5)
  endif (MKL_FOUND)
  
  if (USE_MUMPS_LIBSEQ)
    set(LINK_LIBS ${LINK_LIBS} 
                  libseq)
  else (USE_MUMPS_LIBSEQ)
    set(LINK_LIBS ${LINK_LIBS} 
                  ${MPI_LIB_NAME})
  endif (USE_MUMPS_LIBSEQ)
  
  if (BLAS_FOUND)
    set(LINK_LIBS ${LINK_LIBS} 
	              blas)
  endif (BLAS_FOUND)
  
  if (LAPACK_FOUND)
    set(LINK_LIBS ${LINK_LIBS} 
	              lapack)
  endif (LAPACK_FOUND)
  set(LINK_LIBS ${LINK_LIBS} 
                pthread)
  
endif (WIN32)

if (USE_MUMPS_LIBSEQ)
  add_library(libseq STATIC ${MUMPS_LIBSEQ_SRCS})
endif (USE_MUMPS_LIBSEQ)

add_library(libpord STATIC ${MUMPS_PORD_SRCS})

add_library(libmumps_common STATIC ${MUMPS_COMMON_SRCS})

add_library(libcmumps STATIC ${MUMPS_C_SRCS})
target_link_libraries(libcmumps libmumps_common)

add_library(libdmumps STATIC ${MUMPS_D_SRCS})
target_link_libraries(libdmumps libmumps_common)

add_library(libsmumps STATIC ${MUMPS_S_SRCS})
target_link_libraries(libsmumps libmumps_common)

add_library(libzmumps STATIC ${MUMPS_Z_SRCS})
target_link_libraries(libzmumps libmumps_common)

if (WIN32)
  # if on windows, we can enable interprocedural optimization (use intel linker)
  set_property(TARGET libmumps_common PROPERTY INTERPROCEDURAL_OPTIMIZATION TRUE)
  set_property(TARGET libcmumps PROPERTY INTERPROCEDURAL_OPTIMIZATION TRUE)
  set_property(TARGET libdmumps PROPERTY INTERPROCEDURAL_OPTIMIZATION TRUE)
  set_property(TARGET libsmumps PROPERTY INTERPROCEDURAL_OPTIMIZATION TRUE)
  set_property(TARGET libzmumps PROPERTY INTERPROCEDURAL_OPTIMIZATION TRUE)
  set_property(TARGET libpord PROPERTY INTERPROCEDURAL_OPTIMIZATION TRUE)

  set_property(TARGET libsmumps PROPERTY COMPILE_FLAGS "/DMUMPS_ARITH=MUMPS_ARITH_s")
  set_property(TARGET libdmumps PROPERTY COMPILE_FLAGS "/DMUMPS_ARITH=MUMPS_ARITH_d")
  set_property(TARGET libcmumps PROPERTY COMPILE_FLAGS "/DMUMPS_ARITH=MUMPS_ARITH_c")
  set_property(TARGET libzmumps PROPERTY COMPILE_FLAGS "/DMUMPS_ARITH=MUMPS_ARITH_z")

  if (NOT MPI_FOUND)
    set_property(TARGET libseq PROPERTY INTERPROCEDURAL_OPTIMIZATION TRUE)
  endif (NOT MPI_FOUND)
else (WIN32)
  set_property(TARGET libsmumps PROPERTY COMPILE_FLAGS "-DMUMPS_ARITH=MUMPS_ARITH_s")
  set_property(TARGET libdmumps PROPERTY COMPILE_FLAGS "-DMUMPS_ARITH=MUMPS_ARITH_d")
  set_property(TARGET libcmumps PROPERTY COMPILE_FLAGS "-DMUMPS_ARITH=MUMPS_ARITH_c")
  set_property(TARGET libzmumps PROPERTY COMPILE_FLAGS "-DMUMPS_ARITH=MUMPS_ARITH_z")
endif (WIN32)

## To allow the link of examples on the cluster
#if (NOT WIN32)
#  set(LINK_LIBS ${LINK_LIBS}
#                ifcore)
# endif (NOT WIN32)

add_executable(ssimple_test examples/ssimpletest.F)
target_link_libraries(ssimple_test libsmumps libmumps_common libpord ${LINK_LIBS})
set_target_properties(ssimple_test PROPERTIES LINKER_LANGUAGE Fortran)

add_executable(dsimple_test examples/dsimpletest.F)
target_link_libraries(dsimple_test libdmumps libmumps_common libpord ${LINK_LIBS})
set_target_properties(dsimple_test PROPERTIES LINKER_LANGUAGE Fortran)

add_executable(csimple_test examples/csimpletest.F)
target_link_libraries(csimple_test libcmumps libmumps_common libpord ${LINK_LIBS})
set_target_properties(csimple_test PROPERTIES LINKER_LANGUAGE Fortran)

add_executable(zsimple_test examples/zsimpletest.F)
target_link_libraries(zsimple_test libzmumps libmumps_common libpord ${LINK_LIBS})
set_target_properties(zsimple_test PROPERTIES LINKER_LANGUAGE Fortran)

add_executable(c_example examples/c_example.c)
target_link_libraries(c_example libdmumps libmumps_common libpord ${LINK_LIBS})
if (WIN32)
  # Under windows, this line is required to allow compilation of the MUMPS C example.
  # Under Linux, this line makes the link phase hangs because of multiply defined main symbol
  set_target_properties(c_example PROPERTIES LINKER_LANGUAGE Fortran)
endif (WIN32)

if (USE_MUMPS_LIBSEQ)
  install(TARGETS libseq 
          DESTINATION lib)
	
  install(FILES libseq/elapse.h libseq/mpi.h libseq/mpif.h
          DESTINATION include)
  
endif (USE_MUMPS_LIBSEQ)

install(DIRECTORY include/
        DESTINATION include/
        PATTERN "*.h")

install(TARGETS libpord libmumps_common libcmumps libdmumps libsmumps libzmumps
        DESTINATION lib)

