#!/bin/bash
if [ ! -d "./build" ]; then
    mkdir build
fi
cd build
rm -rf ./*

if [[ $1 = "Debug" || $1 = "Release" ]]
then
    cmake -DCMAKE_BUILD_TYPE=$1 ../cmake_project
    make
else
    echo "Please add Param Debug or Release"
fi

