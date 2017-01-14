#include "modExpConstGen.hpp"

// r    = 2^NUM_BITS;
// Mbar = (M*r) % n;
// xbar = (1*r) % n;
void modExpConstGen(uint1024_t M, ap_uint<NUM_BITS+1> r, uint1024_t n,
					uint1024_t* Mbar, uint1024_t* xbar)
{
	*Mbar = (M*r) % n;
	*xbar = (1*r) % n;
}
