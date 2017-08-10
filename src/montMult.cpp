#include "montMult.hpp"

//void montMult(rsaSize_t X0, rsaSize_t Y0, rsaSize_t M0, rsaSize_t* outData)
void montMult(ap_uint<NUM_BITS+2> X, ap_uint<NUM_BITS+2> Y, ap_uint<NUM_BITS+2> M, ap_uint<NUM_BITS+2>* outData)

{

	/* IMPT BUGFIX: INTERMEDIATE WIDTHS MUST BE GREATER
	 * THAN OR EQUAL TO NUM_BITS+1 OR OVERFLOW CAUSES
	 * THE INTEGER LIBRARY TO SCREW UP SIGN EXTENTIONS */
//	ap_uint<NUM_BITS+2> S = 0;
//	ap_uint<NUM_BITS+2> tmp,tmp1;
//	ap_uint<NUM_BITS+2> X = X0, Y = Y0, M=M0;
	ap_uint<NUM_BITS+2> S = 0;
	ap_uint<NUM_BITS+2> tmp;
	int i;
	for (i=0; i<=NUM_BITS+1; i++)
	{
		tmp = X[i]*Y;  // multiply
		S += tmp;      // accumulate

		tmp = S[0]*M;
		S += tmp;

		S = S >> 1;
	}

//	if (S>=M)
//		S-=M;
	*outData = S.range(NUM_BITS+1,0);
}
