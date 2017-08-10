#ifndef MONTMULT_HPP_
#define MONTMULT_HPP_


#include "globals.hpp"

//void montMult(rsaSize_t base, rsaSize_t exponent, rsaSize_t modulus, rsaSize_t* outData);
void montMult(ap_uint<NUM_BITS+2> X, ap_uint<NUM_BITS+2> Y, ap_uint<NUM_BITS+2> M, ap_uint<NUM_BITS+2>* outData);

#endif
