#cmake_project
cmake_minimum_required(VERSION 3.5)

project (main_binary)

#BUILD_TYPE变量根据不同编译模式设置不同文件夹
if(CMAKE_BUILD_TYPE MATCHES "Debug")
    set(BUILD_TYPE "Debug")
elseif(CMAKE_BUILD_TYPE MATCHES "Release")
    set(BUILD_TYPE "Release")
elseif(CMAKE_BUILD_TYPE MATCHES "")
    set(BUILD_TYPE "")
endif()        

#以下变量为了兼容WIN和Linux下库的名字不同
if (CMAKE_SYSTEM_NAME MATCHES "Windows")
    set(MARTLIB "")
    set(STATICLIB "lib")
    set(SHAREDLIB "lib")
elseif(CMAKE_SYSTEM_NAME MATCHES "Linux")
    set(MARTLIB "lib")
    set(STATICLIB "a")
    set(SHAREDLIB "so")
endif()

set(PROJECT_DIR "${CMAKE_SOURCE_DIR}/../")
set(PROJECT_SDK_DIR "${PROJECT_DIR}/cmake_project_sdk")
#set(PROJECT_LIB_DIR "${PROJECT_DIR}/Debug")       		#Window下Debug模式
#set(PROJECT_LIB_DIR "${PROJECT_DIR}/Release")     		#Window下Release模式
set(PROJECT_LIB_DIR "${PROJECT_DIR}/${BUILD_TYPE}")	#Linux自动识别
set(EXECUTABLE_OUTPUT_PATH "${PROJECT_DIR}/${BUILD_TYPE}")

#SOURCES为源程序
set(SOURCES
    main.cpp
    hello.cpp
)

#HEADERS为头文件
set(HEADERS
    PUBLIC ${PROJECT_SDK_DIR}/classA_Lib/include
    PUBLIC ${PROJECT_SDK_DIR}/classB_Lib/include
    PUBLIC ./
)

#LIBS为需要链接的库
set(LIBS
    ${PROJECT_LIB_DIR}/${MARTLIB}classB_Lib.${SHAREDLIB}  
    ${PROJECT_LIB_DIR}/${MARTLIB}classA_Lib.${STATICLIB}  
)

add_executable(main_binary ${SOURCES})
target_include_directories(main_binary ${HEADERS})
target_link_libraries(main_binary ${LIBS})
