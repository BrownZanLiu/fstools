#######################################################################################################################
# Author: brown.liuzan@outlook.com
# Initial date: 2024-1-20
#######################################################################################################################

#### MUST: Minimum version requirement for C++ ####
# Minimum for C++20: cmake 3.12
# Minimum for C++23: cmake 3.20
# Minimum for C++26: cmake 3.25
#### MUST: Minimum version requirement for C++ ####
cmake_minimum_required(VERSION 3.20...3.26)

#### MUST: setting project in top-level CMake file ####
project(
	fstools  # project name
	VERSION 1.0.0
	DESCRIPTION "All kinds of tools for file system management or test."
	HOMEPAGE_URL "Empty for now"
	LANGUAGES CXX C ASM
)

#### Toolchain configurations ####
set(COMPILER_SUITE "gcc"
	CACHE PATH ""
	FORCE
)
if (${COMPILER_SUITE} STREQUAL "gcc")
	set(MY_GCC_VERSION "13.1.0")
	# Following two sets will trigger cmake to identify the right toolchain, gcc/c++ standard header
	# files and gcc/c++ static libraries. Shared libraries, such as libstdc++.so, will an exceptions.
	set(CMAKE_C_COMPILER "/usr/local/gcc-${MY_GCC_VERSION}/bin/gcc-${MY_GCC_VERSION}"
		CACHE PATH ""
		FORCE
	)
	set(CMAKE_CXX_COMPILER "/usr/local/gcc-${MY_GCC_VERSION}/bin/g++-${MY_GCC_VERSION}"
		CACHE PATH ""
		FORCE
	)
else (${COMPILER_SUITE} STREQUAL "clang")
	set(CMAKE_C_COMPILER "/usr/bin/clang"
		CACHE PATH ""
		FORCE
	)
	set(CMAKE_CXX_COMPILER "/usr/bin/clang++"
		CACHE PATH ""
		FORCE
	)
endif()

#### Add github helper module ####
# https://github.com/CLIUtils/cmake
set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})

#### Fetch external package ####
include(FetchContent)
FetchContent_Declare(
	googletest
	GIT_REPOSITORY https://github.com/google/googletest.git
	GIT_TAG 58d77fa8070e8cec2dc1ed015d66b454c8d78850  # release-1.12.1
)
FetchContent_Declare(
	gflags
	GIT_REPOSITORY https://github.com/gflags/gflags.git
	GIT_TAG e171aa2d15ed9eb17054558e0b3a6a413bb01067 # v2.2.2
)
#FetchContent_Declare(
#	grpc
#	GIT_REPOSITORY https://github.com/grpc/grpc.git
#	GIT_TAG 8871dab19b4ab5389e28474d25cfeea61283265c # v1.54.2
#)
FetchContent_MakeAvailable(googletest gflags)  # grpc)

#### Add subdirectories ####
add_subdirectory(demo)
add_subdirectory(test)

