// core
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace g = kac_core::geometry;
namespace T = kac_core::types;

class generateRegularPolygon: public c::object<generateRegularPolygon> {
	public:
	MIN_DESCRIPTION {"Generate a N-sided regular polygon."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.generateConvexPolygon"};

	c::inlet<> in1 {this, "(int) the number of vertices. [3, ∞]"};
	c::outlet<> out {this, "(list) output the vertices of the polygon."};

	c::message<> number {
		this,
		"number",
		"Generate a regular polygon.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			std::size_t N = c::from_atoms<std::size_t>(args);
			if (N < 3) {
				return {};
			}
			T::Polygon polygon_old = g::generateRegularPolygon(N);
			c::atoms polygon(N * 2);
			for (std::size_t i = 0; i < N; i++) {
				polygon[2 * i] = polygon_old[i].x;
				polygon[2 * i + 1] = polygon_old[i].y;
			}
			out.send(polygon);
			return {};
		}
	};
};

MIN_EXTERNAL(generateRegularPolygon);
