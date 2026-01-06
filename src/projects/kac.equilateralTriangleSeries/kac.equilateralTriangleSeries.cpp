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
	MIN_DESCRIPTION {"Calculate the eigenmodes of an equilateral triangle."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.equilateralTriangleAmplitudes"};

	c::inlet<> in {this, "(bang) calculate the equilateral triangle eigenmodes."};
	c::outlet<> out {this, "(list) output the equilateral triangle eigenmodes."};

	c::attribute<long> N {
		this,
		"N",
		10,
		c::title {"Nth Order"},
		c::description {"The maximum Nth order of the modes. [1, ∞]"},
		c::setter {[this](const c::atoms& args, const int inlet) -> c::atoms {
			return {std::max(c::from_atoms<long>(args), (long)1)};
		}}
	};
	c::attribute<long> M {
		this,
		"M",
		10,
		c::title {"Modes per Order"},
		c::description {"The maximum amount of modes per order. [1, ∞]"},
		c::setter {[this](const c::atoms& args, const int inlet) -> c::atoms {
			return {std::max(c::from_atoms<long>(args), (long)1)};
		}}
	};

	c::message<> bang {
		this,
		"bang",
		"Calculate the eigenmodes of an equilateral triangle.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			T::Matrix_2D series_old = p::equilateralTriangleSeries(N, M);
			c::atoms series(N * M);
			for (long n = 0; n < N; n++) {
				for (long m = 0; m < M; m++) { series[n * M + m] = series_old[n][m]; };
			};
			out.send(series);
			return {};
		}
	};
};

MIN_EXTERNAL(equilateralTriangleSeries);
