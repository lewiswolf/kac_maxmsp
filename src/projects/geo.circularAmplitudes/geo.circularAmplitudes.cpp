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


class circularModes : public object<circularModes> {
public:
    MIN_DESCRIPTION	{"Calculate the circular modes of vibration given a fundamental frequency."};
    MIN_TAGS		{""};
    MIN_AUTHOR		{"Lewis Wolf"};
    MIN_RELATED		{""};

    inlet<>  in1	{ this, "(float) convert fundamental frequency to circular modes" };
    inlet<>  in2	{ this, "(float) convert fundamental frequency to circular modes" };
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
			atoms amplitudes(N * M);
            switch (inlet) {
                case 0:
					r = from_atoms<std::vector<double>>(args)[0];
					for (unsigned int n = 0; n < N; n++) {
						for (unsigned int m = 0; m < M; m++) {
							double a = g::besselJ(n, series[n][m] + r);
							if (n != 0) {
								amplitudes[n * M + m] = a * (cos(n * theta) + sin(n * theta));
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


MIN_EXTERNAL(circularModes);
