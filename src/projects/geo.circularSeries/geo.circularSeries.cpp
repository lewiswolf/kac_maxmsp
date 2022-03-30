/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

// dependencies
#include "c74_min.h"
#include "geometry.hpp"

namespace c = c74::min;
namespace g = geometry;


class circularSeries : public c::object<circularSeries> {
public:
	MIN_DESCRIPTION	{"Calculate the eigenmodes of a circle."};
	MIN_TAGS		{""};
	MIN_AUTHOR		{"Lewis Wolf"};
	MIN_RELATED		{"geo.circularAmplitudes"};

	c::inlet<>  in	{ this, "(bang) calculate the circular eigenmodes." };
	c::outlet<> out	{ this, "(list) output the circular eigenmodes." };


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


	c::message<> bang { this, "bang", "Calculate the circular eigenmodes.",
		MIN_FUNCTION {
			// calculate circular eigenmodes
			std::vector<std::vector<double>> series_old = g::calculateCircularSeries(N, M);
			c::atoms series(N * M);
			for (unsigned int i = 0; i < N; i++) {
				for (unsigned int j = 0; j < M; j++) {
					series[i * M + j] = series_old[i][j];
				};	
			};
			out.send(series);
			return {};
		}
	};
};

MIN_EXTERNAL(circularSeries);