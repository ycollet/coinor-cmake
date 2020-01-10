#!/bin/bash

rm -rf Bonmin
rm -rf Cbc
rm -rf Cgl
rm -rf Clp
rm -rf CoinMP
rm -rf CoinUtils
rm -rf Couenne
rm -rf DyLP
rm -rf Ipopt
rm -rf Osi
rm -rf SYMPHONY
rm -rf Vol

git clone https://github.com/coin-or/Bonmin.git
git clone https://github.com/coin-or/Cbc.git
git clone https://github.com/coin-or/Cgl.git
git clone https://github.com/coin-or/Clp.git
git clone https://github.com/coin-or/CoinMP.git
git clone https://github.com/coin-or/CoinUtils.git
git clone https://github.com/coin-or/Couenne.git
git clone https://github.com/coin-or/DyLP.git
git clone https://github.com/coin-or/Ipopt.git
git clone https://github.com/coin-or/Osi.git
git clone https://github.com/coin-or/SYMPHONY.git
git clone https://github.com/coin-or/Vol.git

add_tag () {
    TAGID=`git log | tail | grep commit | sed -e "s/commit\(.*\)/\1/"`
    echo "add tag 'initial_import' to commit ID $TAGID in `pwd`"
    git tag initial_import $TAGID
}

cd Bonmin
../coinbrew/coinbrew fetch --git --main-proj=. --skip="Bonmin"
cp -r ~/repositories/github/coinor-cmake/Bonmin/* .

add_tag

cd Cgl; add_tag; cd ..
cd CoinUtils; add_tag; cd ..
cd Cbc; add_tag; cd ..
cd Clp; add_tag; cd ..
cd Ipopt; add_tag; cd ..
cd Osi; add_tag; cd ..

cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/opt/couenne-devel -DCOIN_USE_SYSTEM_LAPACK=ON -DIPOPT_ENABLE_INEXACT=OFF ..
cd ..

cd ..

cd Cbc
../coinbrew/coinbrew fetch --git --main-proj=. --skip="Cbc"
cp -r ~/repositories/github/coinor-cmake/Cbc/* .

add_tag

cd Clp; add_tag; cd ..
cd Osi; add_tag; cd ..
cd Cgl; add_tag; cd ..
cd CoinUtils; add_tag; cd ..

cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/opt/couenne-devel -DCOIN_USE_SYSTEM_LAPACK=ON ..
cd ..

cd ..

cd Cgl
../coinbrew/coinbrew fetch --git --main-proj=. --skip="Cgl"
cp -r ~/repositories/github/coinor-cmake/Cgl/* .

add_tag

cd Clp; add_tag; cd ..
cd CoinUtils; add_tag; cd ..
cd Osi; add_tag; cd ..

cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/opt/couenne-devel -DCOIN_USE_SYSTEM_LAPACK=ON ..
cd ..

cd ..

cd Clp
../coinbrew/coinbrew fetch --git --main-proj=. --skip="Clp"
cp -r ~/repositories/github/coinor-cmake/Clp/* .

add_tag

cd CoinUtils; add_tag; cd ..
cd Osi; add_tag; cd ..

cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/opt/couenne-devel -DCOIN_USE_SYSTEM_LAPACK=ON ..
cd ..

cd ..

cd CoinMP
../coinbrew/coinbrew fetch --git --main-proj=. --skip="CoinMP"
cp -r ~/repositories/github/coinor-cmake/CoinMP/* .

add_tag

cd Cgl; add_tag; cd ..
cd Cbc; add_tag; cd ..
cd Clp; add_tag; cd ..
cd CoinUtils; add_tag; cd ..
cd Osi; add_tag; cd ..

cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/opt/couenne-devel -DCOIN_USE_SYSTEM_LAPACK=ON ..
cd ..

cd ..

cd CoinUtils
../coinbrew/coinbrew fetch --git --main-proj=. --skip="CoinUtils"
cp -r ~/repositories/github/coinor-cmake/CoinUtils/* .

add_tag

cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/opt/couenne-devel -DCOIN_USE_SYSTEM_LAPACK=ON ..
cd ..

cd ..

cd Couenne
../coinbrew/coinbrew fetch --git --main-proj=. --skip="Couenne"
cp -r ~/repositories/github/coinor-cmake/Couenne/* .

add_tag

cd Bonmin; add_tag; cd ..
cd Cgl; add_tag; cd ..
cd CoinUtils; add_tag; cd ..
cd Ipopt; add_tag; cd ..
cd Osi; add_tag; cd ..
cd Cbc; add_tag; cd ..
cd Clp; add_tag; cd ..

cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/opt/couenne-devel -DCOIN_USE_SYSTEM_LAPACK=ON -DIPOPT_ENABLE_INEXACT=OFF ..
cd ..

cd ..

cd DyLP
../coinbrew/coinbrew fetch --git --main-proj=. --skip="DyLP"
cp -r ~/repositories/github/coinor-cmake/DyLP/* .

add_tag

cd CoinUtils; add_tag; cd ..
cd Osi; add_tag; cd ..

cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/opt/couenne-devel -DCOIN_USE_SYSTEM_LAPACK=ON ..
cd ..

cd ..

cd Ipopt
../coinbrew/coinbrew fetch --git --main-proj=. --skip="Ipopt"
cp -r ~/repositories/github/coinor-cmake/Ipopt/* .

add_tag

cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/opt/couenne-devel -DCOIN_USE_SYSTEM_LAPACK=ON -DIPOPT_ENABLE_INEXACT=OFF ..
cd ..

cd ..

cd Osi
../coinbrew/coinbrew fetch --git --main-proj=. --skip="Osi"
cp -r ~/repositories/github/coinor-cmake/Osi/* .

add_tag

cd CoinUtils; add_tag; cd ..

cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/opt/couenne-devel -DCOIN_USE_SYSTEM_LAPACK=ON ..
cd ..

cd ..

cd SYMPHONY
../coinbrew/coinbrew fetch --git --main-proj=. --skip="SYMPHONY"
cp -r ~/repositories/github/coinor-cmake/SYMPHONY/* .

add_tag

cd Clp; add_tag; cd ..
cd Osi; add_tag; cd ..
cd Cgl; add_tag; cd ..
cd CoinUtils; add_tag; cd ..

cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/opt/couenne-devel -DCOIN_USE_SYSTEM_LAPACK=ON ..
cd ..

cd ..

cd Vol
../coinbrew/coinbrew fetch --git --main-proj=. --skip="Vol"
cp -r ~/repositories/github/coinor-cmake/Vol/* .

add_tag

cd Osi; add_tag; cd ..
cd CoinUtils; add_tag; cd ..

cd build
cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/opt/couenne-devel -DCOIN_USE_SYSTEM_LAPACK=ON ..
cd ..

cd ..
