// core
#define _USE_MATH_DEFINES
#include <cmath>
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace p = kac_core::physics;
namespace T = kac_core::types;

class equilateralTriangleAmplitudes : public c::object<equilateralTriangleAmplitudes> {
public:
	MIN_DESCRIPTION {"Calculate the modal amplitudes of an equilateral triangle"
		" relative to a strike location in trilinear coordinates."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.equilateralTriangleSeries"};

	c::inlet<> in1 {this, "(float) the x component of the trilinear strike location."};
	c::inlet<> in2 {this, "(float) the y component of the trilinear strike location."};
	c::inlet<> in3 {this, "(float) the z component of the trilinear strike location."};
	c::outlet<> out {this, "(list) output the modal amplitudes."};

	c::attribute<int> N {this, "N", 10, c::description {"The maximum Nth order of the modes."}};
	c::attribute<int> M {this, "M", 10, c::description {"The amount of modes per order."}};

	c::message<> number {this, "number", "Calculate the modal amplitudes.",
		MIN_FUNCTION {
			// update trilinear coordinate
			switch (inlet) {
				case 0:
					x = c::from_atoms<std::vector<double>>(args)[0];
					break;
				case 1:
					y = c::from_atoms<std::vector<double>>(args)[0];
					return {};
				case 2:
					z = c::from_atoms<std::vector<double>>(args)[0];
					return {};
				default:
					return {};
			}

			// calculate amplitudes when r is updated
			c::atoms amplitudes(N * M);
			T::Matrix_2D amplitudes_old = p::equilateralTriangleAmplitudes(x, y, z, N, M);
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
	double z;
};

MIN_EXTERNAL(equilateralTriangleAmplitudes);