#ifndef RSAMODEXP_HPP_
#define RSAMODEXP_HPP_

#include "globals.hpp"
#include "montMult.hpp"


void rsaModExp( ap_uint<NUM_BITS+2> M, ap_uint<NUM_BITS+2> e, ap_uint<NUM_BITS+2> n,
				ap_uint<NUM_BITS+2> rbar,  ap_uint<NUM_BITS+2> *out);

#endif
