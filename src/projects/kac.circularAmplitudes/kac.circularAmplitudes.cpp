// core
#define _USE_MATH_DEFINES
#include <cmath>
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace g = geometry;

std::vector<std::vector<double>> circularSeries(const int& N, const int& M) {
	std::vector<std::vector<double>> series(N, std::vector<double>(M, 0));
	for (unsigned int n = 0; n < N; n++) {
		for (unsigned int m = 0; m < M; m++) {
			series[n][m] = g::besselJZero((double)n, m + 1);
		};	
	};
	return series;
}

class circularAmplitudes : public c::object<circularAmplitudes> {
public:
	MIN_DESCRIPTION {"Calculate the modal amplitudes of a circle relative to a strike location in polar coordinates."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolf"};
	MIN_RELATED {"kac.circularSeries"};

	c::inlet<> in1 {this, "(float) the radial component of the circular strike location."};
	c::inlet<> in2 {this, "(float) the theta component of the circular strike location."};
	c::outlet<> out {this, "(list) output the modal amplitudes."};

	c::attribute<int> N {this, "N", 10,
		c::description {"The maximum Nth order of the modes."}
	};
	c::argument<int> set_N {this, "N", "Update the maximum Nth order of the modes.",
		MIN_ARGUMENT_FUNCTION {
			N = arg;
			series = circularSeries(N, M);
		}
	};

	c::attribute<int> M {this, "M", 10,
		c::description {"The amount of modes per order."}
	};
	c::argument<int> set_M {this, "M", "Update the amount of modes per order.",
		MIN_ARGUMENT_FUNCTION {
			M = arg;
			series = circularSeries(N, M);
		}
	};

	c::message<> number {this, "number", "Calculate the modal amplitudes.",
		MIN_FUNCTION {
			// update r and theta
			switch (inlet) {
				case 0:
					r = c::from_atoms<std::vector<double>>(args)[0];
					break;
				case 1:
					theta = c::from_atoms<std::vector<double>>(args)[0];
					return {};
				default:
					return {};
			}

			// calculate amplitudes when r is updated
			c::atoms amplitudes(N * M);
			for (unsigned int n = 0; n < N; n++) {
				double angular = n != 0 ? M_SQRT2 * sin(n * theta + M_PI_4) : 1.0;
				for (unsigned int m = 0; m < M; m++) {
					amplitudes[n * M + m] = g::besselJ(n, series[n][m] * r) * angular;
				};	
			}
			out.send(amplitudes);
			return {};
		}
	};

private:
	std::vector<std::vector<double>> series = circularSeries(N, M);
	double r;
	double theta;
};

MIN_EXTERNAL(circularAmplitudes);