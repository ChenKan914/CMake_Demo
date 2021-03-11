cmake_minimum_required(VERSION 3.5)

project(classB_Lib)

set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/../../bin_linux/)

add_library(classB_Lib SHARED 
	src/classB.cpp
)

target_include_directories(classB_Lib
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)
