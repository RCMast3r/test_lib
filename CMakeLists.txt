cmake_minimum_required(VERSION 3.2)
project(test LANGUAGES CXX C ASM)

find_package(cmake_macros REQUIRED)

add_library(test_lib SHARED src/test.cpp)

target_include_directories(test_lib 
  PUBLIC 
  $<INSTALL_INTERFACE:include/test_lib>
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include/test_lib>
  )

include(create_package)
make_cmake_package(test_lib test_lib)
# install all of the headers for the libraries
install(
    DIRECTORY include/test_lib
    DESTINATION include
    FILES_MATCHING PATTERN "*.h" 
    )

