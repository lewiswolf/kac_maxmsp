// core
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace g = kac_core::geometry;

class circleToSquare: public c::object<circleToSquare> {
	public:
	MIN_DESCRIPTION {"Map cartesian coordinates from a circle to a sqaure."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {"kac.squareToCircle"};

	c::inlet<> in1 {this, "(float) the x component of the input coordinate. [-1, 1]"};
	c::inlet<> in2 {this, "(float) the y component of the input coordinate. [-1, 1]"};
	c::outlet<> out1 {this, "(float) the x component of the mapped coordinates."};
	c::outlet<> out2 {this, "(float) the y component of the mapped coordinates."};

	c::message<> bang {
		this,
		"bang",
		"Map coordinates from a circle to a square.",
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
		"Map coordinates from a circle to a square.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			// update the cartesian coordinate
			switch (inlet) {
				case 0:
					p.x = c::from_atoms<double>(args);
					_logic();
					return {};
				case 1:
					p.y = c::from_atoms<double>(args);
					return {};
				default:
					return {};
			}
		}
	};

	private:
	// variables
	T::Point p = T::Point(0., 0.);
	// methods
	void _logic() {
		T::Point p_prime = g::simpleElliptic_Circle2Square(p);
		out2.send(p_prime.y);
		out1.send(p_prime.x);
	}
};

MIN_EXTERNAL(circleToSquare);
