// core
#include <algorithm>
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace p = kac_core::physics;
namespace T = kac_core::types;

class raisedTriangle2D: public c::object<raisedTriangle2D> {
	public:
	MIN_DESCRIPTION {"Generate a 2-dimensional triangular distribution."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.raisedCosine2D"};

	c::inlet<> in1 {this, "(float) the x component of the centre of the distribution. [0, 1]"};
	c::inlet<> in2 {this, "(float) the y component of the centre of the distribution. [0, 1]"};
	c::outlet<> out {this, "(list) output the distribution."};

	c::attribute<long> N {
		this,
		"N",
		10,
		c::title {"Horizontal Dimension"},
		c::description {"The size of the distribution across the x-axis. [1, ∞]"},
		c::setter {[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			return {std::max(c::from_atoms<long>(args), (long)1)};
		}}
	};
	c::attribute<long> M {
		this,
		"M",
		10,
		c::title {"Vertical Dimension"},
		c::description {"The size of the distribution across the y-axis. [1, ∞]"},
		c::setter {[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			return {std::max(c::from_atoms<long>(args), (long)1)};
		}}
	};
	c::attribute<double> sigma {
		this,
		"sigma",
		0.1,
		c::title {"Sigma"},
		c::description {"The deviation of the distribution."}
	};

	c::message<> bang {
		this,
		"bang",
		"Calculate the raised triangle distribution.",
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
		"Calculate the raised triangle distribution.",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			// update cartesian coordinate
			switch (inlet) {
				case 0:
					p.x = c::from_atoms<double>(args);
					_logic();
					return {};
				case 1:
					p.y = c::from_atoms<double>(args);
					return {};
				default:
					return {};
			}
		}
	};

	private:
	T::Point p = T::Point(0., 0.);
	// methods
	void _logic() {
		c::atoms distribution(N * M);
		T::Matrix_2D distribution_old = p::raisedTriangle2D(p, sigma, sigma, sigma, sigma, N, M);
		for (long n = 0; n < N; n++) {
			for (long m = 0; m < M; m++) {
				// flip distribution axes
				distribution[(M - 1 - m) * N + n] = distribution_old[n][m];
			};
		}
		out.send(distribution);
	}
};

MIN_EXTERNAL(raisedTriangle2D);
