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
- Vol
- DyLP

How to use these cmake files ?

- Clone the repository
- Copy all the files from Cbc-git to Cbc-2.9.8 (for example)
- In Cbc-2.9.8 create a build directory (mkdir build)
- In Cbc-2.9.8/build, launch 'cmake -DCMAKE_INSTALL_PREFIX=/opt/cbc-2.9.8 -DCMAKE_BUILD_TYPE=RELEASE ..'
- In Cbc-2.9.8/buil, launch 'cmake-gui .' to fine tune the configuration
- Make the libraries: make
- Install the libraries: sudo make install

An example:
```
$ wget https://www.coin-or.org/download/source/Cbc/Cbc-2.9.8.tgz
$ tar xvfz Cbc-2.9.8.tgz
$ git clone https://github.com/ycollet/coinor-cmake.git
$ cp -r coinor-cmake/Cbc/* Cbc-2.9.8/
$ cd Cbc-2.9.8
$ mkdir build
$ cd build
$ cmake -DCMAKE_INSTALL_PREFIX=/opt/cbc-2.9.8 -DCMAKE_BUILD_TYPE=RELEASE ..
# Now activate all the options you want ... and click on  configure + generate and exit
$ cmake-gui .
$ make
$ sudo make install
```

Under Windows, with Visual Studio:

- Clone the repository
- Copy all the files from Cbc-git to Cbc-2.9.8 (for example)
- In Cbc-2.9.8 create a build directory (mkdir build)
- In Cbc-2.9.8/build, launch 'cmake -DCMAKE_INSTALL_PREFIX=/opt/cbc-2.9.8 -DCMAKE_BUILD_TYPE=RELEASE -G "NMake Makefiles" ..'
- In Cbc-2.9.8/buil, launch 'cmake-gui .' to fine tune the configuration
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

## Compilation using mingw under Linux

First, you will need to install the mingw (32 or 64 bits) packages from the repositories of your Linux distribution.
Then, edit the file cmake/mingw64-toolchain.cmake to fine tune wrt your mingw install.
You can add another root directory where mingw will look for installed libraries by adding these lines:
```
# here is the target environment located
SET(USER_ROOT_PATH /home/me/me-win32-dev)
SET(CMAKE_FIND_ROOT_PATH  /usr/${COMPILER_PREFIX} ${USER_ROOT_PATH})
```

Now, run cmake:
```
$ mkdir build
$ cd build
$ cmake -DCMAKE_INSTALL_PREFIX=/home/me/coinor-bin -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_TOOLCHAIN_FILE=cmake/mingw64-toolchain.cmake ..
$ make
```

This command should produce a Windows executable.

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
$ ctest --print-labels # Display all available labels
$ ctest -N # Display all available tests name (you can use the -R, -L, -LE flags with -N)
$ ctest -R exmip1 # To run all tests containing exmip1 in their names
$ ctest -L MPS # To run all tests which have the MPS label (available labels are MPS, LP, LONG)
$ ctest -LE LONG # To run all tests which doesn't have the LONG label
$ ctest -LE (LONG|FAIL) # To run all tests which doesn't have the LONG or FAIL labels
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

# Compiling Lapack under Windows with MinGW:

 - download lapack-3.7.0.tgz from http://www.netlib.org/lapack/lapack-3.7.0.tgz
 - start a CMD windows
 - set PATH=c:\Mingw64\MinGW64\bin;%PATH% (on a similar path)

```
 cmake -DCMAKE_INSTALL_PREFIX=c:/lapack-3.7.0 -DCMAKE_BUILD_TYPE_RELEASE -DBUILD_SHARED_LIBS=ON \
       -DCMAKE_GNUtoMS=ON -DCMAKE_GNUtoMS_VCVARS=c:/Program Files (x86)/Microsoft Visual Studio 11/VC/vcvarsall.bat \
       -G "Unix Makefiles" ..
 c:/MinGW64/MinGW64/bin/mingw32-make.exe
 c:/MinGW64/MinGW64/bin/mingw32-make.exe install
```

- copy libgfortran-3.dll libquadmath-0.dll libgcc_s_seh-1.dll libwinpthread.dll from c:\MinGW64\MinGW64\bin to
   c:/lapack-3.7.0/bin
 - zip c:/lapack-3.7.0 to lapack-3.7.0.zip

 Now, you can use this zip for the compilation of Coin:
 
 Set COIN_MINGW_LAPACK_ZIP_FILE to c:/lapack-3.7.0.zip
 Check COIN_ENABLE_DOWNLOAD_MINGW_LAPACK
 Configure
 Generate
 make

# Notes

The f2c.h file included in each ThirdParty directory is copied from the Fedora f2c package.
This header is used to fix compilation of clapack ...

# To do

Tasks:

- [ ] Finish tests for DyLP
- [ ] Check missing functions and missing headers in Vol and DyLP
- [ ] Fine tune check of headers and add missing check from original configure.ac files
- [ ] use add_test to test various combination of flags

# Benchmark

This benchmark uses the tests from netlib and miplib2000.
 - COIN_ENABLE_DOWNLOAD_DATA_TEST
 - COIN_ENABLE_DOWNLOAD_ZLIB

The options tested are the following ones:
 - COIN_ENABLE_DOWNLOAD_LAPACK
 - COIN_ENABLE_DOWNLOAD_MUMPS
 - COIN_ENABLE_DOWNLOAD_SUITESPARSE
 - COIN_ENABLE_DOWNLOAD_CLAPACK

The command used to launch the tests:
```
$ ctest -LE LONG
```

With Lapack fortran and Mumps (using mumps / libseq and not MPI):

88% tests passed, 82 tests failed out of 680

Label Time Summary:
CBC        = 1690.32 sec (329 tests)
CLP        = 133.33 sec (329 tests)
INFEAS     =  33.03 sec (56 tests)
LP         =   0.01 sec (1 test)
MIPLIB     = 1593.88 sec (204 tests)
MPS        = 1837.59 sec (677 tests)
NETLIB     = 158.89 sec (360 tests)
SAMPLE     =   9.54 sec (34 tests)
WARNING    =  56.65 sec (8 tests)

Total Test time (real) = 1838.46 sec

Without options:

88% tests passed, 80 tests failed out of 680

Label Time Summary:
CBC        = 1004.88 sec (329 tests)
CLP        =  52.22 sec (329 tests)
INFEAS     =  12.52 sec (56 tests)
LP         =   0.00 sec (1 test)
MIPLIB     = 967.56 sec (204 tests)
MPS        = 1062.23 sec (677 tests)
NETLIB     =  62.45 sec (360 tests)
SAMPLE     =   3.80 sec (34 tests)
WARNING    =  21.92 sec (8 tests)

Total Test time (real) = 1062.97 sec

With lapack fortran:

88% tests passed, 79 tests failed out of 680

Label Time Summary:
CBC        = 995.23 sec (329 tests)
CLP        =  50.12 sec (329 tests)
INFEAS     =  12.92 sec (56 tests)
LP         =   0.01 sec (1 test)
MIPLIB     = 954.95 sec (204 tests)
MPS        = 1050.36 sec (677 tests)
NETLIB     =  63.19 sec (360 tests)
SAMPLE     =   3.82 sec (34 tests)
WARNING    =  22.82 sec (8 tests)

Total Test time (real) = 1051.04 sec

With Lapack fortran and SuiteSparse:

88% tests passed, 79 tests failed out of 680

Label Time Summary:
CBC        = 1014.70 sec (329 tests)
CLP        =  54.28 sec (329 tests)
INFEAS     =  12.29 sec (56 tests)
LP         =   0.01 sec (1 test)
MIPLIB     = 980.29 sec (204 tests)
MPS        = 1074.20 sec (677 tests)
NETLIB     =  61.76 sec (360 tests)
SAMPLE     =   3.80 sec (34 tests)
WARNING    =  21.88 sec (8 tests)

Total Test time (real) = 1074.91 sec

With CLapack:

88% tests passed, 79 tests failed out of 680

Label Time Summary:
CBC        = 957.43 sec (329 tests)
CLP        =  47.56 sec (329 tests)
INFEAS     =  11.75 sec (56 tests)
LP         =   0.01 sec (1 test)
MIPLIB     = 921.59 sec (204 tests)
MPS        = 1009.95 sec (677 tests)
NETLIB     =  58.09 sec (360 tests)
SAMPLE     =   3.59 sec (34 tests)
WARNING    =  22.01 sec (8 tests)

Total Test time (real) = 1010.68 sec

