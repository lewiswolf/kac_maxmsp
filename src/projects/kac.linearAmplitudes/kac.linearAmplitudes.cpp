// core
#include <algorithm>
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace p = kac_core::physics;

class linearAmplitudes: public c::object<linearAmplitudes> {
	public:
	MIN_DESCRIPTION {"Calculate the 1-dimensional modal amplitudes relative to a strike location."};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {""};

	c::inlet<> in1 {this, "(float) the linear strike location. [0, 1]"};
	c::outlet<> out {this, "(list) output the modal amplitudes."};

	c::attribute<long> N {
		this,
		"N",
		10,
		c::title {"Number of Modes"},
		c::description {"The maximum amount of modes. [1, ∞]"},
		c::setter {[this](const c::atoms& args, const int inlet) -> c::atoms {
			return {std::max(c::from_atoms<long>(args), (long)1)};
		}}
	};

	c::message<> bang {
		this,
		"bang",
		"Calculate the modal amplitudes.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			if (inlet == 0) {
				_logic();
			}
			return {};
		}
	};

	c::message<> number {
		this,
		"number",
		"Calculate the modal amplitudes.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			// update cartesian coordinate
			switch (inlet) {
				case 0:
					x = c::from_atoms<double>(args);
					_logic();
					return {};
				default:
					return {};
			}
		}
	};

	private:
	// variables
	double x = 0.;
	// methods
	void _logic() { out.send(c::to_atoms(p::linearAmplitudes(x, N))); }
};

MIN_EXTERNAL(linearAmplitudes);
