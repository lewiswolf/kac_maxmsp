// core
#include <algorithm>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace p = kac_core::physics;
namespace T = kac_core::types;

class equilateralTriangleSeries: public c::object<equilateralTriangleSeries> {
	public:
	MIN_DESCRIPTION {"Calculate the wavenumbers of a 2-dimensional triangular domain."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {
		"kac.triangularAmplitudes, kac.circularSeries, kac.linearSeries, kac.rectangularSeries"
	};

	c::inlet<> in {this, "(bang) calculate the triangular wavenumbers."};
	c::outlet<> out {this, "(list) output the triangular wavenumbers."};

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
		"Calculate the eigenmodes of an equilateral triangle.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			T::Matrix_2D series_old = p::equilateralTriangleSeries(M, N);
			c::atoms series(M * N);
			for (long m = 0; m < M; m++) {
				for (long n = 0; n < N; n++) { series[m * N + n] = series_old[m][n]; };
			};
			out.send(series);
			return {};
		}
	};
};

MIN_EXTERNAL(equilateralTriangleSeries);
