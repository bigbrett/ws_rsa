#include "csa.hpp"

void csa(uintRSA_t X, uintRSA_t Y, uintRSA_t Z, uintRSA_t* C, uintRSA_t* S)
{
	int i;
	for (i=0; i<NUM_BITS-2; i++)
	{
#pragma HLS UNROLL
		S[i] = X[i] xor Y[i] xor Z[i];
		C[i+1] = (X[i] & Y[i]) | (X[i] & Z[i]) | (Y[i] & Z[i]);
	}
	S[NUM_BITS-1] = X[NUM_BITS] ^ Y[NUM_BITS] ^ Z[NUM_BITS];
}
