// core
#define _USE_MATH_DEFINES
#include <cmath>
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace g = geometry;

class generateConvexPolygon : public c::object<generateConvexPolygon> {
public:
	MIN_DESCRIPTION {"Randomly generate a convex polygon."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolf"};
	MIN_RELATED {""};

	c::inlet<> in1 {this, "(int) the number of vertices."};
	c::outlet<> out {this, "(list) output the vertices of the polygon."};

	c::message<> number {this, "number", "Generate a polygon with n vertices.",
		MIN_FUNCTION {
			int N = c::from_atoms<std::vector<double>>(args)[0];
			if (N < 3) { return {}; }
			g::Vertices polygon_old = g::generateConvexPolygon(N);
			c::atoms polygon(N * 2);
			for (unsigned int i = 0; i < N; i++) {
				polygon[2 * i] = polygon_old[i].x;
				polygon[2 * i + 1] = polygon_old[i].y;
			}
			out.send(polygon);
			return {};
		}
	};
};

MIN_EXTERNAL(generateConvexPolygon);