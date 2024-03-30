// core
#define _USE_MATH_DEFINES
#include <cmath>
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

	c::inlet<> in1 {this, "(float) the linear strike location."};
	c::outlet<> out {this, "(list) output the modal amplitudes."};

	c::attribute<int> N {this, "N", 10, c::description {"The maximum number of the modes."}};

	c::message<> number {
		this,
		"number",
		"Calculate the modal amplitudes.",
		[this](const c74::min::atoms& args, const int inlet) -> c74::min::atoms {
			out.send(c::to_atoms(p::linearAmplitudes(c::from_atoms<std::vector<double>>(args)[0], N)
			));
			return {};
		}
	};
};

MIN_EXTERNAL(linearAmplitudes);
