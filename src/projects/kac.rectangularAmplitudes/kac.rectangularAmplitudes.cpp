// core
#include <algorithm>
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace p = kac_core::physics;

class rectangularAmplitudes: public c::object<rectangularAmplitudes> {
	public:
	MIN_DESCRIPTION {
		"Calculate the modal amplitudes of a rectangle relative to a strike location in "
		"cartesian coordinates."
	};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.rectangularSeries"};

	c::inlet<> in1 {this, "(float) the x component of the rectangular strike location. [0, √Є)]"};
	c::inlet<> in2 {
		this, "(float) the y component of the rectangular strike location. [0, 1 / √Є]"
	};
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
	c::attribute<double> epsilon {
		this,
		"epsilon",
		1.0,
		c::title {"Aspect Ratio"},
		c::description {"The aspect ratio of the rectangle."}
	};

	c::message<> number {
		this,
		"number",
		"Calculate the modal amplitudes.",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			// update the cartesian coordinate
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
			T::Matrix_2D amplitudes_old = p::rectangularAmplitudes(x, y, N, M, epsilon);
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
	double x;
	double y;
};

MIN_EXTERNAL(rectangularAmplitudes);
