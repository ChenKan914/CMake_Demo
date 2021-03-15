#classA_Lib
cmake_minimum_required(VERSION 3.5)

project(classA_Lib)

if(CMAKE_BUILD_TYPE MATCHES "Debug")
    set(BUILD_TYPE "Debug")
elseif(CMAKE_BUILD_TYPE MATCHES "Release")
    set(BUILD_TYPE "Release")
elseif(CMAKE_BUILD_TYPE MATCHES "")
    set(BUILD_TYPE "bin_linux")
endif()

set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/../../${BUILD_TYPE})

add_library(classA_Lib STATIC 
	src/classA.cpp
)

target_include_directories(classA_Lib
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)
