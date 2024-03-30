// core
#define _USE_MATH_DEFINES
#include <cmath>
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace g = kac_core::geometry;

class squareToCircle: public c::object<squareToCircle> {
	public:
	MIN_DESCRIPTION {"Map coordinates from a square to a circle."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {""};

	c::inlet<> in1 {this, "(float) the x component of the square strike location."};
	c::inlet<> in2 {this, "(float) the y component of the square strike location."};
	c::outlet<> out1 {this, "(float) the x component output the mapped coordinates."};
	c::outlet<> out2 {this, "(float) the y component output the mapped coordinates."};

	c::message<> number {
		this,
		"number",
		"Map coordinates from a square to a circle.",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			// update x and y
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
			// calculate coordinates when x is updated
			T::Point p = g::simpleElliptic_Square2Circle(T::Point(x, y));
			out1.send(p.x);
			out2.send(p.y);
			return {};
		}
	};

	private:
	double x;
	double y;
};

MIN_EXTERNAL(squareToCircle);
