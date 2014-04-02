coinor-cmake
============

CMake files for compiling CoinOr projects

Up to now, only the following projects are supported:
- Cbc
- Clp
- Cgl
- CoinUtils
- SYMPHONY

How to use these cmake files ?

- Clone the repository
- Copy all the files from Cbc-git to Cbc-2.8.9 (for example)
- In Cbc-2.8.9 create a build directory (mkdir build)
- In Cbc-2.8.9/build, launch cmake (cmake -DCMAKE_INSTALL_PREFIX=/opt/cbc-2.8.9 -DCMAKE_BUILD_TYPE=RELEASE ..)
- In Cbc-2.8.9/buil, launch 'cmake-gui .' to fine tune the configuration
- Make the libraries: make
- Install the libraries: sudo make install

To compile using llvm:

LLVM / Clang doesn't support OpenMP yet. So, be careful with the OpenMP option (like with Symphony).

To use clang c++-analyzer, follow these steps (from http://garykramlich.blogspot.fr/2011/10/using-scan-build-from-clang-with-cmake.html):

$ cmake -DCMAKE_C_COMPILER=/usr/share/clang/scan-build/ccc-analyzer -DCMAKE_CXX_COMPILER=/usr/share/clang/scan-build/c++-analyzer ..
$ scan-build make

To use a custom version of clang:

$ scan-build --use-analyzer=/opt/llvm-devel/bin/clang make

When you're build is finished you will see two lines, like the ones shown below.

scan-build: 6 bugs found.
scan-build: Run 'scan-view /tmp/scan-build-2011-10-19-1' to examine bug reports.

As you can see, it found 6 bugs in my code.  To view the bugs, the easiest way is to run:
$ scan-view /tmp/scan-build-2011-10-19-1

Under Fedora, these tools are installed here:
$ /usr/libexec/clang-analyzer/scan-build/c++-analyzer
$ /usr/libexec/clang-analyzer/scan-build/ccc-analyzer
$ /usr/libexec/clang-analyzer/scan-build/scan-build

$ cmake -DCMAKE_INSTALL_PREFIX=~/coinor-bin -DCMAKE_BUILD_TYPE=DEBUG -DCMAKE_CXX_COMPILER=/usr/bin/clang -DCMAKE_CXX_FLAGS="-fsanitize=memory" ..
$ cmake -DCMAKE_INSTALL_PREFIX=~/coinor-bin -DCMAKE_BUILD_TYPE=DEBUG -DCMAKE_CXX_COMPILER=/usr/bin/clang++ -DCMAKE_C_COMPILER=/usr/bin/clang \ 
                                                                     -DCMAKE_CXX_FLAGS="-fsanitize=address,memory" -DCMAKE_C_FLAGS="-fsanitize=address,memory" ..
All the sanitize options for clang are detailled here: http://clang.llvm.org/docs/UsersManual.html#controlling-code-generation

To compile using intel compiler:
$ cmake -DCMAKE_INSTALL_PREFIX=~/coinor-bin -DCMAKE_BUILD_TYPE=DEBUG -DCMAKE_CXX_COMPILER=/opt/intel/bin/icpc -DCMAKE_C_COMPILER=/opt/intel/bin/icc .. 

To do:

Some limitations: only the library of these projects are compiled. The Clp, Cbc and SYMPHONY executable are not yet compiled.
The next project to be added will be Ipopt.
- Allow compilation of executables (SYMPHONY remaining)
- Check for Lapack and pthreads (for Cbc)
- Fine tune check of headers and add missing check from original configure.ac files
- Use CTest to launch non regression tests for each packages:
  - download data sets if user enable tests: Data-1.0.7.tgz  miplib3-1.2.6.tgz  Netlib-1.2.6.tgz  Sample-1.2.9.tgz  Stochastic-1.1.5.tgz
  - use add_test to test various combination of flags

- Use External_Project to compile Thirdparty libraries of each project:
  - a first version has been submitted but need to be tested.
  - use clapack under windows to avoid fortran compiler dependencies
  - see if metis compiles out of the box under windows, add a CMakeLists.txt file for metis ?
  - disable mumps compilation if a fortran compiler is not available (Windows / Linux)
