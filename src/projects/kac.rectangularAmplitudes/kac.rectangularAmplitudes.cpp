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
		"Calculate the spatial eigenfunction of a 2-dimensional rectangular domain relative to a "
		"excitation in cartesian coordinates."
	};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {
		"kac.rectangularSeries, kac.circularAmplitudes, kac.linearAmplitudes, "
		"kac.triangularAmplitudes"
	};

	c::inlet<> in1 {this, "(float) the x component of the excitation location. [0, √Є)]"};
	c::inlet<> in2 {this, "(float) the y component of the excitation location. [0, 1 / √Є]"};
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
	c::attribute<double> epsilon {
		this,
		"epsilon",
		1.0,
		c::title {"Aspect Ratio"},
		c::description {"The aspect ratio of the rectangle."},
		c::setter {[this](const c::atoms& args, const int inlet) -> c::atoms {
			return {std::max(c::from_atoms<double>(args), (double)0.)};
		}}
	};
	c::attribute<long> boundary_conditions {
		this,
		"boundary_conditions",
		0,
		c::title {"Boundary Conditions"},
		c::description {"Define the boundary conditions: 0 = Dirichlet, 1 = Neumann"},
		c::setter {[this](const c::atoms& args, const int inlet) -> c::atoms {
			switch (c::from_atoms<long>(args)) {
				case 1:
					BC = {false, false, false, false};
					return {1};
				default:
					BC = {true, true, true, true};
					return {0};
			}
		}}
	};

	c::message<> bang {
		this,
		"bang",
		"Calculate the modal amplitudes of a rectangle for a given cartesian coordinate {x, y}.",
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
		"Calculate the modal amplitudes of a rectangle for a given cartesian coordinate {x, y}.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			// update the cartesian coordinate
			switch (inlet) {
				case 0:
					x = c::from_atoms<double>(args);
					_logic();
					return {};
				case 1:
					y = c::from_atoms<double>(args);
					return {};
				default:
					return {};
			}
		}
	};

	private:
	// variables
	double x;
	double y;
	std::array<bool, 4> BC = {true, true, true, true};
	// methods
	void _logic() {
		c::atoms amplitudes(M * N);
		T::Matrix_2D amplitudes_old = p::rectangularAmplitudes(x, y, M, N, epsilon, BC);
		for (std::size_t m = 0; m < M; m++) {
			for (std::size_t n = 0; n < N; n++) { amplitudes[m * N + n] = amplitudes_old[m][n]; };
		}
		out.send(amplitudes);
	}
};

MIN_EXTERNAL(rectangularAmplitudes);
