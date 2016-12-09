#include "rsa_toplevel.hpp"

void rsa_toplevel(uint1024_t X, uint1024_t Y, uint1024_t M, uint1024_t* outData){
//#pragma HLS INTERFACE s_axilite port=base
//#pragma HLS INTERFACE s_axilite port=exponent
//#pragma HLS INTERFACE s_axilite port=modulus
//#pragma HLS INTERFACE s_axilite port=outData
//#pragma HLS INTERFACE s_axilite port=return

	ap_uint<NUM_BITS+1> S,qi;
	S = 0;

	int i;
	for (i=0; i<NUM_BITS; i++)
	{
		S += X.bit(i)*Y;
		if (S.bit(0) == 1)
			S += M;
		S = S >> 1;
//		qi = ((S.bit(i) + X*Y.bit(i)) * Minv) & 0x1; // a%2 == a & 1
//		S = (X*Y.bit(i) + qi*M + S) >> 1; // a/2 == a>>1
//		S = (X*Y.bit(i) + qi*M + Slast) >> 2; // a/2 == a>>2
//		Slast = S;
	}

	if (M <= S)
		S -= M;

	*outData = S.range(NUM_BITS-1,0);
}

