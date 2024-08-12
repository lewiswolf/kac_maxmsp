// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace g = kac_core::geometry;
namespace T = kac_core::types;

class normaliseConvexPolygon: public c::object<normaliseConvexPolygon> {
	public:
	MIN_DESCRIPTION {"Normalise a convex polygon, removing group theoretic transformations."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.generateConvexPolygon"};

	c::inlet<> in1 {this, "(list) the vertices of a polygon to be normalised."};
	c::outlet<> out {this, "(list) output the vertices of the polygon."};

	c::attribute<bool> signed_norm {
		this,
		"signed_norm",
		false,
		c::title {"Signed Norm"},
		c::description {"signed_norm ? [-1, 1] : [0, 1]"},
		c::setter {[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			return {(bool)args[0]};
		}}
	};

	c::message<> list {
		this,
		"list",
		"Normalise a convex polygon.",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			// init variables
			unsigned long N = floor(args.size() / 2);
			c::atoms polygon(args.size());
			T::Polygon polygon_tmp(N);
			// convert args to T::Polygon
			for (unsigned long i = 0; i < N; i++) {
				polygon_tmp[i] = T::Point(args[2 * i], args[2 * i + 1]);
			}
			// normalise
			polygon_tmp = g::normaliseConvexPolygon(polygon_tmp, signed_norm);
			// output as 1D atoms
			for (unsigned long i = 0; i < N; i++) {
				polygon[2 * i] = polygon_tmp[i].x;
				polygon[2 * i + 1] = polygon_tmp[i].y;
			}
			out.send(polygon);
			return {};
		}
	};
};

MIN_EXTERNAL(normaliseConvexPolygon);
