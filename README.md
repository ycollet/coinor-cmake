coinor-cmake
============

CMake files for compiling CoinOr projects

Up to now, only the following projects are supported:
- Cbc
- Clp
- Cgl
- CoinUtils
- SYMPHONY

Some limitations: only the library of these projects are compiled. The Clp, Cbc and SYMPHONY executable are not yet compiled.
The next project to be added will be Ipopt.

How to use these cmake files ?

- Clone the repository
- Copy all the files from Cbc-git to Cbc-2.8.9 (for example)
- In Cbc-2.8.9 create a build directory (mkdir build)
- In Cbc-2.8.9/build, launch cmake (cmake -DCMAKE_INSTALL_PREFIX=/opt/cbc-2.8.9 -DCMAKE_BUILD_TYPE=RELEASE ..)
- In Cbc-2.8.9/buil, launch 'cmake-gui .' to fine tune the configuration
- Make the libraries: make
- Install the libraries: sudo make install
