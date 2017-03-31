#include "montMult.hpp"
#define PRINT_ON false

//void montMult(uint1024_t X, uint1024_t Y, uint1024_t M, uint1024_t* outData){
void montMult(uintRSA_t X0, uintRSA_t Y0, uintRSA_t M0, uintRSA_t* outData)
{
	/* IMPT BUGFIX: INTERMEDIATE WIDTHS MUST BE GREATER
	 * THAN OR EQUAL TO NUM_BITS+1 OR OVERFLOW CAUSES
	 * THE INTEGER LIBRARY TO SCREW UP SIGN EXTENTIONS */
	ap_uint<NUM_BITS+2> S = 0;
	ap_uint<NUM_BITS+2> X = X0, Y = Y0, M=M0;

	int i;
	for (i=0; i<NUM_BITS; i++)
	{
		if (X.test(i)) {
			S += Y;
		}
		if (S.test(0)) {
			S += M;
		}
		S = S >> 1;
	}

	if (S >= M)
	{
		S -= M;
	}
	*outData = S.range(NUM_BITS-1,0);
}

