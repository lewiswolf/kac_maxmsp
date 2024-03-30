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

	c::attribute<int> N {this, "N", 10, c::description {"The maximum Nth order of the modes."}};
	c::attribute<int> M {this, "M", 10, c::description {"The amount of modes per order."}};

	c::message<> bang {
		this,
		"bang",
		"Calculate the equilateral triangle eigenmodes.",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			T::Matrix_2D series_old = p::equilateralTriangleSeries(N, M);
			c::atoms series(N * M);
			for (unsigned int n = 0; n < N; n++) {
				for (unsigned int m = 0; m < M; m++) { series[n * M + m] = series_old[n][m]; };
			};
			out.send(series);
			return {};
		}
	};
};

MIN_EXTERNAL(equilateralTriangleSeries);
