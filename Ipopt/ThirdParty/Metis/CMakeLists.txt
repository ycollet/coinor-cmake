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
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/Lib)

if (WIN32)
  set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /NODEFAULTLIB}")
endif ()

add_library(metis ${METIS_SRCS})

set_target_properties(metis PROPERTIES DEBUG_POSTFIX -d)

add_executable(pmetis Programs/pmetis.c Programs/io.c)
target_link_libraries(pmetis metis)
if (UNIX)
  target_link_libraries(pmetis m)
endif ()

add_executable(kmetis Programs/kmetis.c Programs/io.c)
target_link_libraries(kmetis metis)
if (UNIX)
  target_link_libraries(kmetis m)
endif ()

add_executable(oemetis Programs/oemetis.c Programs/io.c Programs/smbfactor.c)
target_link_libraries(oemetis metis)
if (UNIX)
  target_link_libraries(oemetis m)
endif ()

add_executable(onmetis Programs/onmetis.c Programs/io.c Programs/smbfactor.c)
target_link_libraries(onmetis metis)
if (UNIX)
  target_link_libraries(onmetis m)
endif ()

add_executable(mesh2dual Programs/mesh2dual.c Programs/io.c)
target_link_libraries(mesh2dual metis)
if (UNIX)
  target_link_libraries(mesh2dual m)
endif ()

add_executable(mesh2nodal Programs/mesh2nodal.c Programs/io.c)
target_link_libraries(mesh2nodal metis)
if (UNIX)
  target_link_libraries(mesh2nodal m)
endif ()

add_executable(partdmesh Programs/partdmesh.c Programs/io.c)
target_link_libraries(partdmesh metis)
if (UNIX)
  target_link_libraries(partdmesh m)
endif ()

add_executable(partnmesh Programs/partnmesh.c Programs/io.c)
target_link_libraries(partnmesh metis)
if (UNIX)
  target_link_libraries(partnmesh m)
endif ()

add_executable(graphchk Programs/graphchk.c Programs/io.c)
target_link_libraries(graphchk metis)
if (UNIX)
  target_link_libraries(graphchk m)
endif ()

add_executable(mtest Test/mtest.c Programs/io.c)
target_link_libraries(mtest metis)
if (UNIX)
  target_link_libraries(mtest m)
endif ()

install(TARGETS metis 
        DESTINATION lib)

install(TARGETS pmetis kmetis oemetis onmetis mesh2dual mesh2nodal partdmesh partnmesh graphchk
        DESTINATION bin)
