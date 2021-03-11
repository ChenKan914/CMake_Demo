cmake_minimum_required(VERSION 3.5)

project (main_binary)

set(PROJECT_DIR "${CMAKE_SOURCE_DIR}/../")
set(PROJECT_SDK_DIR "${PROJECT_DIR}/cmake_project_sdk")
set(PROJECT_LIB_DIR "${PROJECT_DIR}/bin_linux")
set(EXECUTABLE_OUTPUT_PATH "${PROJECT_DIR}/bin_linux/")

set(SOURCES
    main.cpp
    hello.cpp
)

set(HEADERS
    PUBLIC ${PROJECT_SDK_DIR}/classA_Lib/include
    PUBLIC ${PROJECT_SDK_DIR}/classB_Lib/include
    PUBLIC ./
)

set(LIBS
    ${PROJECT_LIB_DIR}/libclassB_Lib.so
    ${PROJECT_LIB_DIR}/libclassA_Lib.a
)
add_executable(main_binary ${SOURCES})

target_include_directories(main_binary ${HEADERS})

target_link_libraries(main_binary ${LIBS})
