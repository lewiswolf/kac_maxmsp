// core
#include <algorithm>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace p = kac_core::physics;
namespace T = kac_core::types;

class circularSeries: public c::object<circularSeries> {
	public:
	MIN_DESCRIPTION {"Calculate the wavenumbers of a 2-dimensional circular domain."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {
		"kac.circularAmplitudes, kac.linearSeries, kac.rectangularSeries, kac.triangularSeries"
	};

	c::inlet<> in {this, "(bang) calculate the circular wavenumbers."};
	c::outlet<> out {this, "(list) output the circular wavenumbers."};

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
		c::description {"The number of modes across the Nth axis.. [1, ∞)"},
		c::setter {[this](const c::atoms& args, const int inlet) -> c::atoms {
			return {std::max(c::from_atoms<long>(args), (long)1)};
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
					BC = false;
					return {1};
				default:
					BC = true;
					return {0};
			}
		}}
	};

	c::message<> bang {
		this,
		"bang",
		"Calculate the circular wavenumbers.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			T::Matrix_2D series_old = p::circularSeries(M, N, BC);
			c::atoms series(M * N);
			for (std::size_t m = 0; m < M; m++) {
				for (std::size_t n = 0; n < N; n++) { series[m * N + n] = series_old[m][n]; };
			};
			out.send(series);
			return {};
		}
	};

	private:
	// variables
	bool BC = true;
};

MIN_EXTERNAL(circularSeries);
