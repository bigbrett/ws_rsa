#include "montMult.hpp"

//void montMult(rsaSize_t X0, rsaSize_t Y0, rsaSize_t M0, rsaSize_t* outData)
//{
//	/* IMPT BUGFIX: INTERMEDIATE WIDTHS MUST BE GREATER
//	 * THAN OR EQUAL TO NUM_BITS+1 OR OVERFLOW CAUSES
//	 * THE INTEGER LIBRARY TO SCREW UP SIGN EXTENTIONS */
//	ap_uint<NUM_BITS+2> S = 0;
//	ap_uint<NUM_BITS+2> X = X0, Y = Y0, M=M0;
//
//	int i;
//	for (i=0; i<NUM_BITS; i++)
//	{
//		if (X.test(i)) {
//			S += Y;
//		}
//		if (S.test(0)) {
//			S += M;
//		}
//		S = S >> 1;
//	}
////
////	if (S >= M)
////	{
////		S -= M;
////	}
////	cout << "|  MMres = " << hex << S << endl;
//	*outData = S.range(NUM_BITS-1,0);
//}

void montMult(rsaSize_t X0, rsaSize_t Y0, rsaSize_t M0, rsaSize_t* outData)
{
	/* IMPT BUGFIX: INTERMEDIATE WIDTHS MUST BE GREATER
	 * THAN OR EQUAL TO NUM_BITS+1 OR OVERFLOW CAUSES
	 * THE INTEGER LIBRARY TO SCREW UP SIGN EXTENTIONS */
//	ap_uint<NUM_BITS+2> S = 0;
//	ap_uint<NUM_BITS+2> tmp,tmp1;
//	ap_uint<NUM_BITS+2> X = X0, Y = Y0, M=M0;
	ap_uint<NUM_BITS+2> S = 0;
	ap_uint<NUM_BITS+2> tmp;
	ap_uint<NUM_BITS+2> X = X0, Y = Y0, M=M0;
	int i;
	for (i=0; i<NUM_BITS; i++)
	{
		tmp = X[i]*Y;  // multiply
		S += tmp;      // accumulate

		tmp = S[0]*M;
		S += tmp;

		S = S >> 1;
	}

	*outData = S.range(NUM_BITS-1,0);
}
