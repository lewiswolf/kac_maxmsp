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
		"Calculate the spatial eigenfunction of a 2-dimensional rectangular domain relative to a "
		"excitation in trilinear coordinates."
	};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {
		"kac.triangularSeries, kac.circularAmplitudes, kac.linearAmplitudes, "
		"kac.rectangularAmplitudes"
	};

	c::inlet<> in1 {this, "(float) the u component of the excitation location. [0, 1]"};
	c::inlet<> in2 {this, "(float) the v component of the excitation location. [0, 1]"};
	c::inlet<> in3 {this, "(float) the w component of the excitation location. [0, 1]"};
	c::outlet<> out {this, "(list) output the spatial eigenfunction."};

	c::attribute<long> M {
		this,
		"M",
		10,
		c::title {"Modes per Mth Order"},
		c::description {"The number of modes across the Mth axis. [1, ∞)"},
		c::setter {[this](const c::atoms& args, const int inlet) -> c::atoms {
			return {std::max(c::from_atoms<long>(args), (long)1)};
		}}
	};
	c::attribute<long> N {
		this,
		"N",
		10,
		c::title {"Modes per Nth Order"},
		c::description {"The number of modes across the Nth axis. [1, ∞)"},
		c::setter {[this](const c::atoms& args, const int inlet) -> c::atoms {
			return {std::max(c::from_atoms<long>(args), (long)1)};
		}}
	};

	c::message<> bang {
		this,
		"bang",
		"Calculate the modal amplitudes of a triangle for a given trilinear coordinate {u, v, w}.",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			if (inlet == 0) {
				_logic();
			}
			return {};
		}
	};

	c::message<> number {
		this,
		"number",
		"Calculate the modal amplitudes of a triangle for a given trilinear coordinate {u, v, w}.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			// update trilinear coordinate
			switch (inlet) {
				case 0:
					u = c::from_atoms<double>(args);
					_logic();
					return {};
				case 1:
					v = c::from_atoms<double>(args);
					return {};
				case 2:
					w = c::from_atoms<double>(args);
					return {};
				default:
					return {};
			}
		}
	};

	private:
	// variables
	double u = 0.;
	double v = 0.;
	double w = 0.;
	// methods
	void _logic() {
		c::atoms amplitudes(M * N);
		T::Matrix_2D amplitudes_old = p::equilateralTriangleAmplitudes(u, v, w, M, N);
		for (long m = 0; m < M; m++) {
			for (long n = 0; n < N; n++) { amplitudes[m * N + n] = amplitudes_old[m][n]; };
		}
		out.send(amplitudes);
	}
};

MIN_EXTERNAL(equilateralTriangleAmplitudes);
