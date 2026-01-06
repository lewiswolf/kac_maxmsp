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

	c::message<> number {
		this,
		"number",
		"Calculate the modal amplitudes.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			out.send(c::to_atoms(p::linearAmplitudes(c::from_atoms<double>(args), N)));
			return {};
		}
	};
};

MIN_EXTERNAL(linearAmplitudes);
