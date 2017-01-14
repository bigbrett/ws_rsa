
#include "testModMult.hpp"


void testModMult(ap_uint<NUM_BITS+1> X, ap_uint<NUM_BITS+1> Y,
			     ap_uint<NUM_BITS+1> M, ap_uint<NUM_BITS+1>* outData)
{
#pragma HLS ALLOCATION instances=mul limit=256 operation

	ap_uint<NUM_BITS+2> S;
	S = 0;

	int i;
	for (i=0; i<NUM_BITS+1; i++)
	{
		S += X.bit(i)*Y;
		if (S.bit(0) == 1)
			S += M;
		S = S >> 1;
	}

	if (M <= S)
		S -= M;

	*outData = S.range(NUM_BITS,0);
}
