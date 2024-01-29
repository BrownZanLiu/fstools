#include <iostream>

#include <gflags/gflags.h>
#include <gtest/gtest.h>

#include "test_flags.h"

int main(int argc, char **argv)
{
	/**
	  * Do modifications of flags before ParseCommandLineFlags().
	  */
	FLAGS_debug = true;

	gflags::ParseCommandLineFlags(&argc, &argv, true);

	testing::InitGoogleTest(&argc, argv);

	return 0;
}
