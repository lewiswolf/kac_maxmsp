// core
#include <algorithm>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace p = kac_core::physics;
namespace T = kac_core::types;

class linearSeries: public c::object<linearSeries> {
	public:
	MIN_DESCRIPTION {"Calculate the wavenumbers of a 1-dimensional domain."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {
		"kac.linearAmplitudes, kac.circularSeries, kac.rectangularSeries, kac.triangularSeries"
	};

	c::inlet<> in {this, "(bang) calculate the linear wavenumbers."};
	c::outlet<> out {this, "(list) output the linear wavenumbers."};

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
		"Calculate the linear wavenumbers.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			out.send(c::to_atoms(p::linearSeries(N, BC)));
			return {};
		}
	};

	private:
	// variables
	std::array<bool, 2> BC = {true, true};
};

MIN_EXTERNAL(linearSeries);
