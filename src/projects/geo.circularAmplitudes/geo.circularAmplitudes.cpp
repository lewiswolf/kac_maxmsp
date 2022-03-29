/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

// core
#include <vector>

// dependencies
#include "c74_min.h"
#include "geometry.hpp"

using namespace c74::min;
namespace g = geometry;

class circularAmplitudes : public object<circularAmplitudes> {
public:
    MIN_DESCRIPTION	{"Calculate the modal amplitudes relative to a strike location in polar coordinates."};
    MIN_TAGS		{""};
    MIN_AUTHOR		{"Lewis Wolf"};
    MIN_RELATED		{"geo.circularAmplitudes"};

    inlet<>  in1	{ this, "(float) the radial component of the circular strike location" };
    inlet<>  in2	{ this, "(float) the theta component of the circular strike location" };
    outlet<> out	{ this, "(float) output the modal amplitudes" };


    argument<int> set_N { this, "N", "Update the maximum Nth order of the modes.",
        MIN_ARGUMENT_FUNCTION { 
			N = arg;
			series = g::calculateCircularSeries(N, M);
		}
    };
    attribute<int> N { this, "N", 10,
        description {"The maximum Nth order of the modes."}
    };

	argument<int> set_M { this, "M", "Update the amount of modes per order.",
        MIN_ARGUMENT_FUNCTION { 
			M = arg;
			series = g::calculateCircularSeries(N, M);
		}
    };
    attribute<int> M { this, "M", 10,
        description {"The amount of modes per order."}
    };


    message<> number { this, "number", "Calculate the modal amplitudes.",
        MIN_FUNCTION {
			atoms amplitudes(N * M);
            switch (inlet) {
                case 0:
					r = from_atoms<std::vector<double>>(args)[0];
					for (unsigned int n = 0; n < N; n++) {
						for (unsigned int m = 0; m < M; m++) {
							double a = g::besselJ(n, series[n][m] + r);
							if (n != 0) {
								amplitudes[n * M + m] = a * M_SQRT2 * sin(n * theta + M_PI_4);
							} else {
								amplitudes[n * M + m] = a;
							}
						};	
					}
					out.send(amplitudes);
                    break;
                case 1:
                    theta = from_atoms<std::vector<double>>(args)[0];
                    break;
                default:
                    break;
            }
			return {};
		}
    };


private:
	std::vector<std::vector<double>> series = g::calculateCircularSeries(N, M);
	double r;
	double theta;
};

MIN_EXTERNAL(circularAmplitudes);