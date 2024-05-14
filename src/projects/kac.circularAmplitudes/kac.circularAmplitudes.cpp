// core
#include <algorithm>
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace p = kac_core::physics;
namespace T = kac_core::types;

class circularAmplitudes: public c::object<circularAmplitudes> {
	public:
	MIN_DESCRIPTION {
		"Calculate the modal amplitudes of a circle relative to a strike location in polar "
		"coordinates."
	};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.circularSeries"};

	c::inlet<> in1 {this, "(float) the radial component of the circular strike location. [-1, 1]"};
	c::inlet<> in2 {this, "(float) the theta component of the circular strike location. [-π, π]"};
	c::outlet<> out {this, "(list) output the modal amplitudes."};

	c::attribute<long> N {
		this,
		"N",
		10,
		c::title {"Nth Order"},
		c::description {"The maximum Nth order of the modes. [1, ∞]"},
		c::setter {[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			long _N = std::max((long)args[0], (long)1);
			series = p::circularSeries(_N, M);
			return {_N};
		}}
	};
	c::attribute<long> M {
		this,
		"M",
		10,
		c::title {"Modes per Order"},
		c::description {"The maximum amount of modes per order. [1, ∞]"},
		c::setter {[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			long _M = std::max((long)args[0], (long)1);
			series = p::circularSeries(N, _M);
			return {_M};
		}}
	};

	c::message<> number {
		this,
		"number",
		"Calculate the modal amplitudes of a circle for a given polar coordinate {r, θ}.",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			// update the polar coordinate
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
			T::Matrix_2D amplitudes_old = p::circularAmplitudes(r, theta, series);
			for (unsigned long n = 0; n < N; n++) {
				for (unsigned long m = 0; m < M; m++) {
					amplitudes[n * M + m] = amplitudes_old[n][m];
				}
			}
			out.send(amplitudes);
			return {};
		}
	};

	private:
	T::Matrix_2D series = p::circularSeries(N, M);
	double r;
	double theta;
};

MIN_EXTERNAL(circularAmplitudes);
