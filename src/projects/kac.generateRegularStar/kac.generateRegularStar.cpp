// core
#include <algorithm>
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace g = kac_core::geometry;
namespace T = kac_core::types;

class generateRegularPolygon: public c::object<generateRegularPolygon> {
	public:
	MIN_DESCRIPTION {"Generate a regular star polygon via a specified Schläfli symbol."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.generateRegularPolygon"};

	c::inlet<> in1 {this, "(int) p with respect to the Schläfli symbol {p, q}. [3, ∞)"};
	c::inlet<> in2 {this, "(int) q with respect to the Schläfli symbol {p, q}. [1, ∞]"};
	c::outlet<> out {this, "(list) output the vertices of the polygon."};

	c::message<> bang {
		this,
		"bang",
		"Generate a regular star polygon.",
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
		"Generate a regular star polygon.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			// update the cartesian coordinate
			switch (inlet) {
				case 0:
					p = std::max(c::from_atoms<std::size_t>(args), (std::size_t)3);
					_logic();
					return {};
				case 1:
					q = std::max(c::from_atoms<std::size_t>(args), (std::size_t)1);
					return {};
				default:
					return {};
			}
		}
	};

	private:
	// variables
	std::size_t p = 0;
	std::size_t q = 0;
	// methods
	void _logic() {
		if (p < ((2 * q) + 1)) {
			cerr << "A polygon does not exist for this Schläfli symbol - this function "
					"requires that p >= 2q + 1."
				 << c::endl;
			return;
		}
		const std::size_t N = q > 1 ? 2 * p : p;
		T::Polygon polygon_old = g::generateRegularStar(p, q);
		c::atoms polygon(N * 2);
		for (std::size_t n = 0; n < N; n++) {
			polygon[2 * n] = polygon_old[n].x;
			polygon[2 * n + 1] = polygon_old[n].y;
		}
		out.send(polygon);
	}
};

MIN_EXTERNAL(generateRegularPolygon);
