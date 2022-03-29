/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

// dependencies
#include "c74_min.h"
#include "geometry.hpp"

namespace c = c74::min;
namespace g = geometry;


class circularModes : public c::object<circularModes> {
public:
	MIN_DESCRIPTION	{"Calculate the circular modes of vibration given a fundamental frequency."};
	MIN_TAGS		{""};
	MIN_AUTHOR		{"Lewis Wolf"};
	MIN_RELATED		{"geo.circularAmplitudes"};

	c::inlet<>  in	{ this, "(float) convert fundamental frequency to circular modes." };
	c::outlet<> out	{ this, "(float) output the circular modes." };


	c::argument<int> set_N { this, "N", "Update the maximum Nth order of the modes.",
		MIN_ARGUMENT_FUNCTION { N = arg; }
	};
	c::attribute<int> N { this, "N", 10,
		c::description {"The maximum Nth order of the modes."}
	};

	c::argument<int> set_M { this, "M", "Update the amount of modes per order.",
		MIN_ARGUMENT_FUNCTION { M = arg; }
	};
	c::attribute<int> M { this, "M", 10,
		c::description {"The amount of modes per order."}
	};


	c::message<> number { this, "number", "Calculate the modal frequencies.",
		MIN_FUNCTION {
			auto modes_old = g::calculateCircularModes(args[0], N, M);
			c::atoms modes(N * M);
			for (unsigned int i = 0; i < N; i++) {
				for (unsigned int j = 0; j < M; j++) {
					modes[i * M + j] = modes_old[i][j];
				};	
			};
			out.send(modes);
			return {};
		}
	};
};

MIN_EXTERNAL(circularModes);