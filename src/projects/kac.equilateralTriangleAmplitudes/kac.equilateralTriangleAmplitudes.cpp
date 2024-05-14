// core
#include <algorithm>
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace p = kac_core::physics;
namespace T = kac_core::types;

class equilateralTriangleAmplitudes: public c::object<equilateralTriangleAmplitudes> {
	public:
	MIN_DESCRIPTION {
		"Calculate the modal amplitudes of an equilateral triangle"
		" relative to a strike location in trilinear coordinates."
	};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.equilateralTriangleSeries"};

	c::inlet<> in1 {this, "(float) the u component of the trilinear strike location. [0, 1]"};
	c::inlet<> in2 {this, "(float) the v component of the trilinear strike location. [0, 1]"};
	c::inlet<> in3 {this, "(float) the w component of the trilinear strike location. [0, 1]"};
	c::outlet<> out {this, "(list) output the modal amplitudes."};

	c::attribute<long> N {
		this,
		"N",
		10,
		c::title {"Nth Order"},
		c::description {"The maximum Nth order of the modes. [1, ∞]"},
		c::setter {[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			return {std::max((long)args[0], (long)1)};
		}}
	};
	c::attribute<long> M {
		this,
		"M",
		10,
		c::title {"Modes per Order"},
		c::description {"The maximum amount of modes per order. [1, ∞]"},
		c::setter {[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			return {std::max((long)args[0], (long)1)};
		}}
	};

	c::message<> number {
		this,
		"number",
		"Calculate the modal amplitudes of an equilateral triangle for a trilinear coordinate.",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			// update trilinear coordinate
			switch (inlet) {
				case 0:
					u = c::from_atoms<std::vector<double>>(args)[0];
					break;
				case 1:
					v = c::from_atoms<std::vector<double>>(args)[0];
					return {};
				case 2:
					w = c::from_atoms<std::vector<double>>(args)[0];
					return {};
				default:
					return {};
			}
			// calculate amplitudes when u is updated
			c::atoms amplitudes(N * M);
			T::Matrix_2D amplitudes_old = p::equilateralTriangleAmplitudes(u, v, w, N, M);
			for (unsigned long n = 0; n < N; n++) {
				for (unsigned long m = 0; m < M; m++) {
					amplitudes[n * M + m] = amplitudes_old[n][m];
				};
			}
			out.send(amplitudes);
			return {};
		}
	};

	private:
	double u;
	double v;
	double w;
};

MIN_EXTERNAL(equilateralTriangleAmplitudes);
