#!/bin/bash
if [ ! -d "./build_sdk" ]; then
    mkdir build_sdk
fi
cd build_sdk
rm -rf ./*

if [[ $1 = "Debug" || $1 = "Release" ]]
then
    cmake -DCMAKE_BUILD_TYPE=$1 ../cmake_project_sdk
    make
else
    echo "Please add Param Debug or Release"
fi

