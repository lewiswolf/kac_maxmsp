/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

// dependencies
#include "c74_min.h"
#include "boost/math/special_functions/bessel.hpp"

namespace c = c74::min;

class circularSeries : public c::object<circularSeries> {
public:
	MIN_DESCRIPTION	{"Calculate the eigenmodes of a circle."};
	MIN_TAGS		{""};
	MIN_AUTHOR		{"Lewis Wolf"};
	MIN_RELATED		{"geo.circularAmplitudes"};

	c::inlet<>  in	{ this, "(bang) calculate the circular eigenmodes." };
	c::outlet<> out	{ this, "(list) output the circular eigenmodes." };

	c::attribute<int> N { this, "N", 10,
		c::description {"The maximum Nth order of the modes."}
	};
	c::attribute<int> M { this, "M", 10,
		c::description {"The amount of modes per order."}
	};

	c::message<> bang { this, "bang", "Calculate the circular eigenmodes.",
		MIN_FUNCTION {
			// calculate circular eigenmodes
			c::atoms series(N * M);
			for (unsigned int n = 0; n < N; n++) {
				for (unsigned int m = 0; m < M; m++) {
					series[n * M + m] = boost::math::cyl_bessel_j_zero((double)n, m + 1);
				};	
			};
			out.send(series);
			return {};
		}
	};
};

MIN_EXTERNAL(circularSeries);