// core
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace g = kac_core::geometry;
namespace T = kac_core::types;

class triangulatePolygon: public c::object<triangulatePolygon> {
	public:
	MIN_DESCRIPTION {"Triangulate a simple polygon."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.triangulatePolygon"};

	c::inlet<> in1 {this, "(list) the polygon to be triangulated."};
	c::outlet<> out {
		this, "(list) the vertices of a multiple triangles (x1, y1, x2, y2, x3, y3)[]."
	};

	c::message<> list {
		this,
		"list",
		"Normalise a simple polygon.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			// init variables
			std::size_t N = floor(args.size() / 2);
			T::Polygon polygon_tmp(N);
			// convert args to T::Polygon
			for (std::size_t i = 0; i < N; i++) {
				polygon_tmp[i] = T::Point(args[2 * i], args[2 * i + 1]);
			}
			// triangulate
			std::vector<T::Polygon> T = g::triangulatePolygon(polygon_tmp);
			std::size_t N_T = T.size();
			c::atoms output(6);
			// output as 1D atoms
			for (std::size_t i = 0; i < N_T; i++) {
				for (std::size_t j = 0; j < 3; j++) {
					output[(2 * j)] = T[i][j].x;
					output[(2 * j) + 1] = T[i][j].y;
				}
				out.send(output);
			}
			return {};
		}
	};
};

MIN_EXTERNAL(triangulatePolygon);
