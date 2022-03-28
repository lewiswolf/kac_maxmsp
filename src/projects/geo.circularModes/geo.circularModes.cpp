/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

// dependencies
#include "c74_min.h"
#include "geometry.hpp"

// src
#include "../types.hpp"

using namespace c74::min;
namespace g = geometry;


class circularModes : public object<circularModes> {
public:
    MIN_DESCRIPTION	{"Calculate the circular modes of vibration given a fundamental frequency."};
    MIN_TAGS		{""};
    MIN_AUTHOR		{"Lewis Wolf"};
    MIN_RELATED		{""};

    inlet<>  in		{ this, "(float) convert fundamental frequency to circular modes" };
    outlet<> out	{ this, "(float) output the circular modes" };


    // define an optional argument for setting the message
    argument<int> set_N { this, "N", "Initial value for the greeting attribute.",
        MIN_ARGUMENT_FUNCTION {
            N = arg;
        }
    };
	 argument<int> set_M { this, "M", "Initial value for the greeting attribute.",
        MIN_ARGUMENT_FUNCTION {
            M = arg;
        }
    };


    // the actual attribute for the message
    attribute<int> N { this, "N", 10,
        description {
            "Greeting to be posted. "
            "The greeting will be posted to the Max console when a bang is received."
        }
    };

    attribute<int> M { this, "M", 10,
        description {
            "Greeting to be posted. "
            "The greeting will be posted to the Max console when a bang is received."
        }
    };


    // respond to the number message to do something
    message<> number { this, "number", "Post the greeting.",
        MIN_FUNCTION {
			auto modes_old = g::calculateCircularModes(args[0], N, M);
            atoms modes(N * M);
			for (unsigned int i = 0; i < N; i++) {
				for (unsigned int j = 0; j < M; j++) {
					modes[i * M + j] = modes_old[i][j];
				};	
			}
			out.send(modes);
			return {};
		}
    };
};


MIN_EXTERNAL(circularModes);
