#classB_Lib
cmake_minimum_required(VERSION 3.5)

project(classB_Lib)

if(CMAKE_BUILD_TYPE MATCHES "Debug")
    set(BUILD_TYPE "Debug")
elseif(CMAKE_BUILD_TYPE MATCHES "Release")
    set(BUILD_TYPE "Release")
elseif(CMAKE_BUILD_TYPE MATCHES "")
    set(BUILD_TYPE "")
endif()

set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/../../${BUILD_TYPE})

add_library(classB_Lib SHARED 
	src/classB.cpp
)

target_include_directories(classB_Lib
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)
