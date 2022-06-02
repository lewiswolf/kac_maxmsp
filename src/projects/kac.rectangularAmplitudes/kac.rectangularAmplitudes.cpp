// core
#define _USE_MATH_DEFINES
#include <cmath>
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace g = geometry;

class rectangularAmplitudes : public c::object<rectangularAmplitudes> {
public:
	MIN_DESCRIPTION	{"Calculate the modal amplitudes of a rectangle relative to a strike location in cartesian coordinates."};
	MIN_TAGS		{""};
	MIN_AUTHOR		{"Lewis Wolf"};
	MIN_RELATED		{"geo.rectangularSeries"};

	c::inlet<>  in1	{this, "(float) the x component of the rectangular strike location." };
	c::inlet<>  in2	{this, "(float) the y component of the rectangular strike location." };
	c::outlet<> out	{this, "(list) output the modal amplitudes." };

	c::attribute<int> N {this, "N", 10,
		c::description {"The maximum Nth order of the modes."}
	};
	c::attribute<int> M {this, "M", 10,
		c::description {"The amount of modes per order."}
	};
	c::attribute<double> epsilon {this, "epsilon", 1.0,
		c::description {"The aspect ratio of the rectangle."}
	};

	c::message<> number {this, "number", "Calculate the modal amplitudes.",
		MIN_FUNCTION {
			// update x and y
			switch (inlet) {
				case 0:
					x = c::from_atoms<std::vector<double>>(args)[0];
					break;
				case 1:
					y = c::from_atoms<std::vector<double>>(args)[0];
					return {};
				default:
					return {};
			}

			// calculate amplitudes when x is updated
			c::atoms amplitudes(N * M);
			std::vector<std::vector<double>> amplitudes_old = g::calculateRectangularAmplitudes(x, y, N, M, epsilon);
			for (unsigned int n = 0; n < N; n++) {
				for (unsigned int m = 0; m < M; m++) {
					amplitudes[n * M + m] = amplitudes_old[n][m];
				};	
			}
			out.send(amplitudes);
			return {};
		}
	};


private:
	double x;
	double y;
};

MIN_EXTERNAL(rectangularAmplitudes);