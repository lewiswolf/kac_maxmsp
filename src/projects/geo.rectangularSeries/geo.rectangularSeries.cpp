/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

// dependencies
#include "c74_min.h"
#include "geometry.hpp"

namespace c = c74::min;
namespace g = geometry;


class rectangularSeries : public c::object<rectangularSeries> {
public:
	MIN_DESCRIPTION	{"Calculate the eigenmodes of a rectangle."};
	MIN_TAGS		{""};
	MIN_AUTHOR		{"Lewis Wolf"};
	MIN_RELATED		{"geo.rectangularAmplitudes"};

	c::inlet<>  in	{this, "(bang) calculate the rectangular eigenmodes."};
	c::outlet<> out	{this, "(list) output the rectangular eigenmodes."};

	c::attribute<int> N {this, "N", 10,
		c::description {"The maximum Nth order of the modes."}
	};
	c::attribute<int> M {this, "M", 10,
		c::description {"The amount of modes per order."}
	};
	c::attribute<double> epsilon {this, "epsilon", 1.0,
		c::description {"The aspect ratio of the rectangle."}
	};

	c::message<> bang {this, "bang", "Calculate the the rectangular eigenmodes.",
		MIN_FUNCTION {
			// calculate rectangular eigenmodes
			auto series_old = g::calculateRectangularSeries(N, M, epsilon);
			c::atoms series(N * M);
			for (unsigned int n = 0; n < N; n++) {
				for (unsigned int m = 0; m < M; m++) {
					series[n * M + m] = series_old[n][m];
				};	
			};
			out.send(series);
			return {};
		}
	};
};

MIN_EXTERNAL(rectangularSeries);