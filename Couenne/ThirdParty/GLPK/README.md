Download Glpk from gnu server:
$ wget https://ftp.gnu.org/gnu/glpk/glpk-4.65.tar.gz
$ tar xvfz glpk-4.65.tar.gz

Get this repo:
$ git clone https://github.com/ycollet/glpk-cmake

Copy files CMakeLists.txt and config.h.cmake to the root of the glpk distribution.
$ cp -r glpk-cmake/* glpk-4.65/

Then configure your glpk project the following way:
$ cd glpk-4.65
$ mkdir build
$ cd build
$ cmake -DCMAKE_INSTALL_PREFIX=/opt/glpk-4.61 -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
$ make
$ sudo make install

Under Windows, it's the same thing. The only difference is in the cmake command line:
$ cmake -DCMAKE_INSTALL_PREFIX=d:/glpk-4.61 -DCMAKE_BUILD_TYPE=RelWithDebInfo -G "NMake Makefiles" ..
$ nmake
$ nmake install

You can select other cmake generators under Windows (Visual studio one for example).

To launch the tests:
$ ctest

Available options:

- GLPK_WITH_DL    "enable shared library support" OFF)
- GLPK_WITH_OBDC  "enable MathProg ODBC support"  OFF)
- GLPK_WITH_MYSQL "enable MathProg MySQL support" OFF)
- GLPK_WITH_GMP   "use GNU MP bignum library"     OFF)

Compilation options:
- ENABLE_SHARED_LIBRARIES       Build libraries as shared libraries
- GLPK_COMPILE_STATIC           Activate the static linking
- GLPK_COMPILE_COVERAGE         Activate the code coverage compilation
- GLPK_COMPILE_PROFILE          Activate the code profiling compilation
- GLPK_COMPILE_PROFILE_VALGRIND Activate the code profiling compilation for valgrind
- GLPK_COMPILE_LTO              Activate the whole program optimization (using LTO)
- GLPK_COMPILE_WHOPR            Activate the whole program optimization (using WHOPR)
- GLPK_COMPILE_WARNINGS         Activate a set of warning options

Options can be activated on command line using the following syntax:

-Doption={ON/OFF}

