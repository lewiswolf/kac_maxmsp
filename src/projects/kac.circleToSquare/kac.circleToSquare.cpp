// core
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace g = kac_core::geometry;

class circleToSquare: public c::object<circleToSquare> {
	public:
	MIN_DESCRIPTION {"Map coordinates from a circle to a sqaure."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {""};

	c::inlet<> in1 {this, "(float) the x component of the cartesian coordinate. [-1, 1]"};
	c::inlet<> in2 {this, "(float) the y component of the cartesian coordinate. [-1, 1]"};
	c::outlet<> out1 {this, "(float) the x component output the mapped coordinates."};
	c::outlet<> out2 {this, "(float) the y component output the mapped coordinates."};

	c::message<> number {
		this,
		"number",
		"Map coordinates from a circle to a square.",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			// update the cartesian coordinate
			switch (inlet) {
				case 0:
					x = c::from_atoms<std::vector<double>>(args)[0];
					break;
				case 1:
					y = c::from_atoms<std::vector<double>>(args)[0];
					return {};
				default:
					return {};
			}
			// calculate new coordinate when x is updated
			T::Point p = g::simpleElliptic_Circle2Square(T::Point(x, y));
			out2.send(p.y);
			out1.send(p.x);
			return {};
		}
	};

	private:
	double x;
	double y;
};

MIN_EXTERNAL(circleToSquare);
