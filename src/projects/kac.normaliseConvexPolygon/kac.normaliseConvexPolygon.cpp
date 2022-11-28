// core
#define _USE_MATH_DEFINES
#include <cmath>
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace g = kac_core::geometry;
namespace T = kac_core::types;

class normaliseConvexPolygon : public c::object<normaliseConvexPolygon> {
public:
	MIN_DESCRIPTION {"Normalise a convex polygon, removing group theoretic transformations."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.generateConvexPolygon"};

	c::inlet<> in1 {this, "(list) the vertices of a polygon to be normalised."};
	c::outlet<> out {this, "(list) output the vertices of the polygon."};

	c::message<> list {this, "list", "Normalise a convex polygon.",
		MIN_FUNCTION {
			// init variables
			unsigned int N = floor(args.size() / 2);
			c::atoms polygon(args.size());
			T::Polygon polygon_tmp(N);
			// convert args to T::Polygon
			for (int i = 0; i < N; i++) { polygon_tmp[i] = T::Point(args[2 * i], args[2 * i + 1]); }
			// normalise
			polygon_tmp = g::convexNormalisation(polygon_tmp);
			// output as 1D atoms
			for (unsigned int i = 0; i < N; i++) {
				polygon[2 * i] = polygon_tmp[i].x;
				polygon[2 * i + 1] = polygon_tmp[i].y;
			}
			out.send(polygon);
			return {};
		}
	};
};

MIN_EXTERNAL(normaliseConvexPolygon);