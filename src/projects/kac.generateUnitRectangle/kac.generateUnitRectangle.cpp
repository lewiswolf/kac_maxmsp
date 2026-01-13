// core
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace g = kac_core::geometry;
namespace T = kac_core::types;

class generateUnitRectangle: public c::object<generateUnitRectangle> {
	public:
	MIN_DESCRIPTION {"Generate a unit rectangle."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.generateUnitTriangle"};

	c::inlet<> in1 {this, "(float) the aspect ratio for the rectangle."};
	c::outlet<> out {this, "(list) output the vertices of the rectangle."};

	c::message<> number {
		this,
		"number",
		"Generate a unit rectangle.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			double epsilon = c::from_atoms<double>(args);
			T::Polygon polygon_old = g::generateUnitRectangle(epsilon);
			c::atoms polygon(8);
			for (unsigned short i = 0; i < 4; i += 1) {
				polygon[2 * i] = polygon_old[i].x;
				polygon[2 * i + 1] = polygon_old[i].y;
			}
			out.send(polygon);
			return {};
		}
	};
};

MIN_EXTERNAL(generateUnitRectangle);
