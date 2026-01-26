// core
#include <algorithm>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace p = kac_core::physics;
namespace T = kac_core::types;

class rectangularSeries: public c::object<rectangularSeries> {
	public:
	MIN_DESCRIPTION {"Calculate the wavenumbers of a 2-dimensional rectangular domain."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {
		"kac.rectangularAmplitudes, kac.circularSeries, kac.linearSeries, kac.triangularSeries"
	};

	c::inlet<> in {this, "(bang) calculate the rectangular wavenumbers."};
	c::outlet<> out {this, "(list) output the rectangular wavenumbers."};

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
		"Calculate the rectangular wavenumbers.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			T::Matrix_2D series_old = p::rectangularSeries(M, N, epsilon, BC);
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
	std::array<bool, 4> BC = {true, true, true, true};
};

MIN_EXTERNAL(rectangularSeries);
