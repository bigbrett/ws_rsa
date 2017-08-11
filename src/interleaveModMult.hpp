#ifndef __SYNTHESIS__

#ifndef INTERLEAVEMODMULT_HPP_
#define INTERLEAVEMODMULT_HPP_

#include "globals.hpp"

void interleaveModMult(ap_uint<NUM_BITS+2> X, ap_uint<NUM_BITS+2> Y, ap_uint<NUM_BITS+2> M, ap_uint<NUM_BITS+2>* out);


#endif

#endif
