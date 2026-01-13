// core
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace g = kac_core::geometry;
namespace T = kac_core::types;

class generateUnitTriangle: public c::object<generateUnitTriangle> {
	public:
	MIN_DESCRIPTION {"Generate a unit triangle using a polar coordinate mapping."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.generateUnitRectangle"};

	c::inlet<> in1 {this, "(float) r component of the polar coordinate."};
	c::inlet<> in2 {this, "(float) theta component of the polar coordinate."};
	c::outlet<> out {this, "(list) output the vertices of the triangle."};

	c::message<> bang {
		this,
		"bang",
		"Generate a unit triangle.",
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
		"Generate a unit triangle.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			// update the cartesian coordinate
			switch (inlet) {
				case 0:
					r = c::from_atoms<double>(args);
					_logic();
					return {};
				case 1:
					theta = c::from_atoms<double>(args);
					return {};
				default:
					return {};
			}
		}
	};

	private:
	// variables
	double r = 0.;
	double theta = 0.;
	// methods
	void _logic() {
		T::Polygon polygon_old = g::generateUnitTriangle(r, theta);
		c::atoms polygon(6);
		for (unsigned short i = 0; i < 3; i += 1) {
			polygon[2 * i] = polygon_old[i].x;
			polygon[2 * i + 1] = polygon_old[i].y;
		}
		out.send(polygon);
	}
};

MIN_EXTERNAL(generateUnitTriangle);
