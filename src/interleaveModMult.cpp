#ifndef __SYNTHESIS__
#include "interleaveModMult.hpp"

/*
 * Actually computes the modular multiplication, with the result not in the montgomery domain
 */
void interleaveModMult(ap_uint<NUM_BITS+2> X, ap_uint<NUM_BITS+2> Y, ap_uint<NUM_BITS+2> M, ap_uint<NUM_BITS+2>* Pout)
{
	ap_uint<NUM_BITS+4> P=0;

	int i;
	for (i=NUM_BITS; i>=0; i--)
	{
		P = P << 1;
		if (X.test(i))
			P += Y;
		if (P>=M)
			P -= M;
		if (P>=M)
			P -= M;
	}
	*Pout = P.range(NUM_BITS-1,0);
}
#endif
