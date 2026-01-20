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
	MIN_DESCRIPTION {"Calculate the eigenvalues of a rectangle."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.rectangularAmplitudes"};

	c::inlet<> in {this, "(bang) calculate the rectangular eigenvalues."};
	c::outlet<> out {this, "(list) output the rectangular eigenvalues."};

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

	c::message<> bang {
		this,
		"bang",
		"Calculate the rectangular eigenvalues.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			T::Matrix_2D series_old = p::rectangularSeries(M, N, epsilon);
			c::atoms series(M * N);
			for (std::size_t m = 0; m < M; m++) {
				for (std::size_t n = 0; n < N; n++) { series[m * N + n] = series_old[m][n]; };
			};
			out.send(series);
			return {};
		}
	};
};

MIN_EXTERNAL(rectangularSeries);
