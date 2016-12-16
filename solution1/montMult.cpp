#include "montMult.hpp"

void montMult(uint1024_t X, uint1024_t Y, uint1024_t M, uint1024_t* outData){
//#pragma HLS PIPELINE enable_flush
//#pragma HLS inline
#pragma HLS ALLOCATION instances=mul limit=256 operation

	ap_uint<NUM_BITS+1> S,qi;
	S = 0;

	int i;
	for (i=0; i<NUM_BITS; i++)
	{
		S += X.bit(i)*Y;
		if (S.bit(0) == 1)
			S += M;
		S = S >> 1;
	}

	if (M <= S)
		S -= M;

	*outData = S.range(NUM_BITS-1,0);
}

