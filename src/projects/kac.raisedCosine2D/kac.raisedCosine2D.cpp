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

class raisedCosine2D : public c::object<raisedCosine2D> {
public:
	MIN_DESCRIPTION {"Generate a 2-dimensional raised cosine distribution."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {""};

	c::inlet<> in1 {this, "(float) the x component of the centre of the distribution."};
	c::inlet<> in2 {this, "(float) the x component of the centre of the distribution."};
	c::outlet<> out {this, "(list) output the distribution."};

	c::attribute<int> N {this, "N", 10,
		c::description {"The size of the distribution across the x-axis."}
	};
	c::attribute<int> M {this, "M", 10,
		c::description {"The size of the distribution across the y-axis."}
	};
	c::attribute<double> sigma {this, "sigma", 1.0,
		c::description {"The deviation of the distribution."}
	};

	c::message<> number {this, "number", "Calculate the raised cosine distribution.",
		MIN_FUNCTION {
			// update x and y
			switch (inlet) {
				case 0:
					x = c::from_atoms<std::vector<int>>(args)[0];
					break;
				case 1:
					y = c::from_atoms<std::vector<int>>(args)[0];
					return {};
				default:
					return {};
			}

			// calculate amplitudes when r is updated
			c::atoms distribution(N * M);
			T::Matrix_2D distribution_old = p::raisedCosine2D(N, M, x, y, sigma);
			for (unsigned int n = 0; n < N; n++) {
				for (unsigned int m = 0; m < M; m++) {
					distribution[n * M + m] = distribution_old[n][m];
				};	
			}
			out.send(distribution);
			return {};
		}
	};

private:
	int x;
	int y;
};

MIN_EXTERNAL(raisedCosine2D);