#include "ModExp.hpp"



void ModExp(uint1024_t M, uint1024_t e, uint1024_t n, uint1024_t Mbar, uint1024_t xbar, uint1024_t* out)
{
//#pragma HLS DATAFLOW
#pragma HLS ALLOCATION instances=montMult limit=1 function
//#pragma HLS ALLOCATION instances=mul limit=256 operation


//#ifndef __SYNTHESIS__
//	int r = pow(2,NUM_BITS);
//	int Mbar = (M*r) % n;
//	int xbar = (1*r) % n;
//	uint1024_t Mbaru = ap_uint<NUM_BITS>(Mbar);
//	uint1024_t xbaru = ap_uint<NUM_BITS>(xbar);
//#endif

	int i;
	for (i=NUM_BITS-1; i>=0; i--)
	{
//#pragma HLS PIPELINE enable_flush
		montMult(xbar,xbar,n,&xbar);
		if (e.bit(i) == 1)
			montMult(Mbar,xbar,n,&xbar);
	}
	montMult(xbar,1,n,out);
}
