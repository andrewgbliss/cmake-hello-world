message(STATUS "Building dom")

cmake_minimum_required(VERSION 3.10)
project(dom)

# Enable parallel builds
include(ProcessorCount)
ProcessorCount(N)
if(NOT N EQUAL 0)
    set(CMAKE_BUILD_PARALLEL_LEVEL ${N})
endif()

# Set build type for faster debug builds
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug)
endif()

# Optimize for faster compilation
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0 -g")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3")

include_directories(include)

# Automatically find all source files
file(GLOB_RECURSE SOURCES "src/*.cpp")

add_executable(dom ${SOURCES})

# Enable precompiled headers for faster compilation
target_precompile_headers(dom PRIVATE
    <iostream>
    <string>
)