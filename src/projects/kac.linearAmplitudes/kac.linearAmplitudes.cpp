// core
#include <algorithm>
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace p = kac_core::physics;

class linearAmplitudes: public c::object<linearAmplitudes> {
	public:
	MIN_DESCRIPTION {
		"Calculate the spatial eigenfunction of a 1-dimensional domain relative to an excitation "
		"in cartesian coordinates."
	};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {
		"kac.linearSeries, kac.circularAmplitudes, kac.rectangularAmplitudes, "
		"kac.triangularAmplitudes"
	};

	c::inlet<> in1 {this, "(float) the x component of the excitation location. [0, 1]"};
	c::outlet<> out {this, "(list) output the spatial eigenfunction."};

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
	c::attribute<long> boundary_conditions {
		this,
		"boundary_conditions",
		0,
		c::title {"Boundary Conditions"},
		c::description {"Define the boundary conditions: 0 = Dirichlet, 1 = Neumann, 2 = Mixed"},
		c::setter {[this](const c::atoms& args, const int inlet) -> c::atoms {
			switch (c::from_atoms<long>(args)) {
				case 1:
					BC = {false, false};
					return {1};
				case 2:
					BC = {true, false};
					return {2};
				default:
					BC = {true, true};
					return {0};
			}
		}}
	};

	c::message<> bang {
		this,
		"bang",
		"Calculate the modal amplitudes of a line for a given cartesian coordinate {x}.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			if (inlet == 0) {
				_logic();
			}
			return {};
		}
	};

	c::message<> number {
		this,
		"number",
		"Calculate the modal amplitudes of a line for a given cartesian coordinate {x}.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			// update cartesian coordinate
			switch (inlet) {
				case 0:
					x = c::from_atoms<double>(args);
					_logic();
					return {};
				default:
					return {};
			}
		}
	};

	private:
	// variables
	double x = 0.;
	std::array<bool, 2> BC = {true, true};
	// methods
	void _logic() { out.send(c::to_atoms(p::linearAmplitudes(x, N, BC))); }
};

MIN_EXTERNAL(linearAmplitudes);
