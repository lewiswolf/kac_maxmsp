// core
#include <algorithm>
#include <vector>

// dependencies
#include "c74_min.h"
#include <kac_core.hpp>

namespace c = c74::min;
namespace p = kac_core::physics;
namespace T = kac_core::types;

class circularAmplitudes: public c::object<circularAmplitudes> {
	public:
	MIN_DESCRIPTION {
		"Calculate the spatial eigenfunction of a 2-dimensional circular domain relative to an "
		"excitation in polar coordinates."
	};
	MIN_TAGS {""};
	MIN_AUTHOR {"Lewis Wolstanholme"};
	MIN_RELATED {
		"kac.circularSeries, kac.linearAmplitudes, kac.rectangularAmplitudes, "
		"kac.triangularAmplitudes"
	};

	c::inlet<> in1 {this, "(float) the radial component of the circular excitation. [-1, 1]"};
	c::inlet<> in2 {this, "(float) the theta component of the circular excitation. [-π, π]"};
	c::outlet<> out {this, "(list) output the spatial eigenfunction."};

	c::attribute<long> M {
		this,
		"M",
		10,
		c::title {"Modes per Mth Order"},
		c::description {"The number of modes across the Mth axis. [1, ∞)"},
		c::setter {[this](const c::atoms& args, const int inlet) -> c::atoms {
			long _M = std::max(c::from_atoms<long>(args), (long)1);
			series = p::circularSeries(_M, N, BC);
			return {_M};
		}}
	};
	c::attribute<long> N {
		this,
		"N",
		10,
		c::title {"Modes per Nth Order"},
		c::description {"The number of modes across the Nth axis. [1, ∞)"},
		c::setter {[this](const c::atoms& args, const int inlet) -> c::atoms {
			long _N = std::max(c::from_atoms<long>(args), (long)1);
			series = p::circularSeries(M, _N, BC);
			return {_N};
		}}
	};
	c::attribute<long> boundary_conditions {
		this,
		"boundary_conditions",
		0,
		c::title {"Boundary Conditions"},
		c::description {"Define the boundary conditions: 0 = Dirichlet, 1 = Neumann"},
		c::setter {[this](const c::atoms& args, const int inlet) -> c::atoms {
			switch (c::from_atoms<long>(args)) {
				case 1:
					BC = false;
					series = p::circularSeries(M, N, false);
					return {1};
				default:
					BC = true;
					series = p::circularSeries(M, N, true);
					return {0};
			}
		}}
	};

	c::message<> bang {
		this,
		"bang",
		"Calculate the modal amplitudes of a circle for a given polar coordinate {r, θ}.",
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
		"Calculate the modal amplitudes of a circle for a given polar coordinate {r, θ}.",
		[this](const c::atoms& args, const int inlet) -> c::atoms {
			// update the polar coordinate
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
	bool BC = true;
	double r = 0.;
	double theta = 0.;
	T::Matrix_2D series = p::circularSeries(M, N, BC);
	// methods
	void _logic() {
		c::atoms amplitudes(M * N);
		T::Matrix_2D amplitudes_old = p::circularAmplitudes(r, theta, series);
		for (std::size_t m = 0; m < M; m++) {
			for (std::size_t n = 0; n < N; n++) { amplitudes[m * N + n] = amplitudes_old[m][n]; }
		}
		out.send(amplitudes);
	}
};

MIN_EXTERNAL(circularAmplitudes);
