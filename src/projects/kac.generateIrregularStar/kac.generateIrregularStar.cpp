// core
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace g = kac_core::geometry;
namespace T = kac_core::types;

class generateIrregularStar: public c::object<generateIrregularStar> {
	public:
	MIN_DESCRIPTION {"Randomly generate an irregular star."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.normalisePolygon"};

	c::inlet<> in1 {this, "(int) the number of vertices. [3, ∞]"};
	c::outlet<> out {this, "(list) output the vertices of the polygon."};

	c::message<> number {
		this,
		"number",
		"Generate an irregular star with n vertices.",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			long N = c::from_atoms<std::vector<long>>(args)[0];
			if (N < 3) {
				return {};
			}
			T::Polygon polygon_old = g::generateIrregularStar(N);
			c::atoms polygon(N * 2);
			for (unsigned long i = 0; i < N; i++) {
				polygon[2 * i] = polygon_old[i].x;
				polygon[2 * i + 1] = polygon_old[i].y;
			}
			out.send(polygon);
			return {};
		}
	};
};

MIN_EXTERNAL(generateIrregularStar);
