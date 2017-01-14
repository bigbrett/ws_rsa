#ifndef MODEXPCONSTGEN_HPP_
#define MODEXPCONSTGEN_HPP_

#include "globals.hpp"

void modExpConstGen(uint1024_t M, ap_uint<NUM_BITS+1> r, uint1024_t n,
					uint1024_t* Mbar, uint1024_t* xbar);
//	int Mbar = (M*r) % n;
//	int xbar = (1*r) % n;


#endif
