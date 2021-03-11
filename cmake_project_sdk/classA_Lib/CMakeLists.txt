cmake_minimum_required(VERSION 3.5)

project(classA_Lib)

set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/../../bin_linux/)

add_library(classA_Lib STATIC 
	src/classA.cpp
)

target_include_directories(classA_Lib
    PUBLIC ${PROJECT_SOURCE_DIR}/include
)
