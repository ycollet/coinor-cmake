cmake_minimum_required(VERSION 2.6)

project(metis C)

set(METIS_SRCS Lib/coarsen.c
               Lib/fm.c
	       Lib/initpart.c
	       Lib/match.c
	       Lib/ccgraph.c
	       Lib/memory.c
	       Lib/pmetis.c
	       Lib/pqueue.c
	       Lib/refine.c
	       Lib/util.c
	       Lib/timing.c
	       Lib/debug.c
	       Lib/bucketsort.c
	       Lib/graph.c
	       Lib/stat.c
	       Lib/kmetis.c
	       Lib/kwayrefine.c
	       Lib/kwayfm.c
	       Lib/balance.c
	       Lib/ometis.c
	       Lib/srefine.c
	       Lib/sfm.c
	       Lib/separator.c
	       Lib/mincover.c
	       Lib/mmd.c
	       Lib/mesh.c
	       Lib/meshpart.c
	       Lib/frename.c
	       Lib/fortran.c
	       Lib/myqsort.c
	       Lib/compress.c
	       Lib/parmetis.c
	       Lib/estmem.c
	       Lib/mpmetis.c
	       Lib/mcoarsen.c
	       Lib/mmatch.c
	       Lib/minitpart.c
	       Lib/mbalance.c
	       Lib/mrefine.c
	       Lib/mutil.c
	       Lib/mfm.c
	       Lib/mkmetis.c
	       Lib/mkwayrefine.c
	       Lib/mkwayfmh.c
	       Lib/mrefine2.c
	       Lib/minitpart2.c
	       Lib/mbalance2.c
	       Lib/mfm2.c
	       Lib/kvmetis.c
	       Lib/kwayvolrefine.c
	       Lib/kwayvolfm.c
	       Lib/subdomains.c)

#need to add this directory to the includes since metis uses #include<...> for some reason.
include_directories(${CMAKE_SOURCE_DIR}/Lib)

if (WIN32)
  set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /NODEFAULTLIB}")
endif ()

add_library(metis ${METIS_SRCS})

set_target_properties(metis PROPERTIES DEBUG_POSTFIX -d)

#set_property(TARGET metis
#             PROPERTY COMPILE_DEFINITIONS __VC__)

install(TARGETS metis 
        DESTINATION bin)
