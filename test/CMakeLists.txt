########################################################################################################################
# Copyright: brown.liuzan@outlook.com
# Description:
#     Used to verify building system
########################################################################################################################

cmake_minimum_required(VERSION 3.20...3.26)

file(
	GLOB
	TEST_SRC_FILES
	"./*.cpp"
	"./*.cxx"
	"./*.h"
	"./*.hpp"
)

add_executable(
	fstest # name of application/executable; also name of cmake target
	${TEST_SRC_FILES}
)

#target_include_directories(
#	demo
#	PRIVATE
#	./include
#)

target_compile_features(
	fstest
	PRIVATE
	cxx_std_23
)

if (${COMPILER_SUITE} STREQUAL "gcc")
  	target_link_options(
		fstest
  		PRIVATE
		# The following two libraries are only supported ones with -static-* link options.
		# It's also OK to do it with absolute libraries in target_link_libraries
		# GCC support for code generation of integer/floating-point arithmetics, etc
  		-static-libgcc  # integer/floating-point arithmetics and so on used by compiler
  		-static-libstdc++
  	)
	if (${MY_GCC_VERSION} VERSION_LESS "10.0.0")
		target_link_libraries(
			fstest
			# The following could be done with target_link_options::-static-libgcc
			#/usr/local/gcc-${MY_GCC_VERSION}/lib/gcc/x86_64-pc-linux-gnu/${MY_GCC_VERSION}/libgcc.a
			# The following could be done with target_link_options::-static-libstdc++
			#/usr/local/gcc-${MY_GCC_VERSION}/lib64/libstdc++.a

			# Gcc support for code generation of C++ error handling, RTTI, etc
			/usr/local/gcc-${MY_GCC_VERSION}/lib/gcc/x86_64-pc-linux-gnu/${MY_GCC_VERSION}/libgcc_eh.a
			# No shared version, so maybe ok to omitted
			/usr/local/gcc-${MY_GCC_VERSION}/lib64/libstdc++fs.a
		)
	endif()
endif()

target_link_libraries(
    fstest
	gtest
	gmock
	gflags_nothreads_static
)
