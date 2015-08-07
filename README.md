coinor-cmake
============

# CMake files for compiling CoinOr projects
## Introduction

Up to now, only the following projects are supported:
- Cbc
- Clp
- Cgl
- CoinMP
- CoinUtils
- SYMPHONY

How to use these cmake files ?

- Clone the repository
- Copy all the files from Cbc-git to Cbc-2.8.9 (for example)
- In Cbc-2.8.9 create a build directory (mkdir build)
- In Cbc-2.8.9/build, launch 'cmake -DCMAKE_INSTALL_PREFIX=/opt/cbc-2.8.9 -DCMAKE_BUILD_TYPE=RELEASE ..'
- In Cbc-2.8.9/buil, launch 'cmake-gui .' to fine tune the configuration
- Make the libraries: make
- Install the libraries: sudo make install

Under Windows, with Visual Studio:

- Clone the repository
- Copy all the files from Cbc-git to Cbc-2.8.9 (for example)
- In Cbc-2.8.9 create a build directory (mkdir build)
- In Cbc-2.8.9/build, launch 'cmake -DCMAKE_INSTALL_PREFIX=/opt/cbc-2.8.9 -DCMAKE_BUILD_TYPE=RELEASE -G "NMake Makefiles" ..'
- In Cbc-2.8.9/buil, launch 'cmake-gui .' to fine tune the configuration
- Make the libraries: nmake
- Install the libraries: nmake install

## Compilation using llvm

LLVM / Clang doesn't support OpenMP yet. So, be careful with the OpenMP option (like with Symphony).

To use clang c++-analyzer, follow these steps (from http://garykramlich.blogspot.fr/2011/10/using-scan-build-from-clang-with-cmake.html):
```
$ mkdir build
$ cd build
$ cmake -DCMAKE_C_COMPILER=/usr/share/clang/scan-build/ccc-analyzer -DCMAKE_CXX_COMPILER=/usr/share/clang/scan-build/c++-analyzer ..
$ scan-build make
```

To use a custom version of clang:
```
$ scan-build --use-analyzer=/opt/llvm-devel/bin/clang make
```

When you're build is finished you will see two lines, like the ones shown below.
```
scan-build: 6 bugs found.
scan-build: Run 'scan-view /tmp/scan-build-2011-10-19-1' to examine bug reports.
```

As you can see, it found 6 bugs in my code.  To view the bugs, the easiest way is to run:
```
$ scan-view /tmp/scan-build-2011-10-19-1
```

Under Fedora, these tools are installed here:

- `/usr/libexec/clang-analyzer/scan-build/c++-analyzer`
- `/usr/libexec/clang-analyzer/scan-build/ccc-analyzer`
- `/usr/libexec/clang-analyzer/scan-build/scan-build`

```
$ mkdir build
$ cd build
$ cmake -DCMAKE_INSTALL_PREFIX=~/coinor-bin -DCMAKE_BUILD_TYPE=DEBUG -DCMAKE_CXX_COMPILER=/usr/bin/clang -DCMAKE_CXX_FLAGS="-fsanitize=memory" ..
# or
$ cmake -DCMAKE_INSTALL_PREFIX=~/coinor-bin -DCMAKE_BUILD_TYPE=DEBUG -DCMAKE_CXX_COMPILER=/usr/bin/clang++ -DCMAKE_C_COMPILER=/usr/bin/clang \ 
                                                                     -DCMAKE_CXX_FLAGS="-fsanitize=address,memory" -DCMAKE_C_FLAGS="-fsanitize=address,memory" ..
$ make
```
All the sanitize options for clang are detailled here: http://clang.llvm.org/docs/UsersManual.html#controlling-code-generation

## Compilation using intel compiler

```
$ mkdir build
$ cd buile
$ cmake -DCMAKE_INSTALL_PREFIX=~/coinor-bin -DCMAKE_BUILD_TYPE=DEBUG -DCMAKE_CXX_COMPILER=/opt/intel/bin/icpc -DCMAKE_C_COMPILER=/opt/intel/bin/icc ..
$ make
```

## Compilation using Visual studio compiler

First, start the Visual Studio console. Now, launch cmake
```
$ mkdir build
$ cd build
$ cmake -DCMAKE_INSTALL_PREFIX=d:/coinor-bin -DCMAKE_BUILD_TYPE=DEBUG -G "NMake Makefiles" ..
$ nmake
```

# Starting tests
To enable a more complete list of tests:
```
$ cd build
$ cmake -DCOIN_ENABLE_DOWNLOAD_ZLIB=ON -DCOIN_ENABLE_DOWNLOAD_DATA_TEST=ON .
$ make
```

The option COIN_ENABLE_DOWNLOAD_DATA_TEST allows to download a set of tests from the coin-or website and it will install these files in the build directory. The COIN_ENABLE_DOWNLOAD_ZLIB activate the support of zlib in the CoinUtils library. With this support, we are now able to read compressed test files.

You can some basic tests for cbc, clp and symphony:
```
$ ctest -R exmip1 # To run all tests containing exmip1 in their names
$ ctest -L MPS # To run all tests which have the MPS label (available labels are MPS, LP, LONG)
$ ctest -LE LONG # To run all tests which doesn't have the LONG label
```

# Performing coverage
Using lcov for code coverage (Linux only) - gcov and lcov must be installed on the system.
The following steps are performed:
 - first, activate COIN_COMPILE_COVERAGE
 - activate all the solvers
 - compile: `make`
 - run the tests: `make test or ctest ...`
 - generate the coverage report: `make coverage`

You can trigger a code coverage analysis by issuing the following commande: `make coverage`

Be careful to activate the right set of tests (not the long one).

# To do

The next project to be added will be Ipopt.

Tasks:

- [ ] Fine tune check of headers and add missing check from original configure.ac files
- [ ] use add_test to test various combination of flags
- [ ] Use External_Project to compile Thirdparty libraries of each project:
  - [ ] disable mumps compilation if a fortran compiler is not available (Windows / Linux)
  - [ ] download and compile metis with mumps.

