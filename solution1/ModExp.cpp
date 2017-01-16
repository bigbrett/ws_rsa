#include "ModExp.hpp"

#define MWR2MM 0

void ModExp(uintRSA_t M, uintRSA_t e, uintRSA_t n,
			uintRSA_t Mbar, uintRSA_t xbar_in, uintRSA_t* out)

{
#if MWR2MM == 0
#pragma HLS ALLOCATION instances=montMult limit=1 function

	uintRSA_t xbar = xbar_in;

	int i;
	for (i=NUM_BITS-1; i>=0; i--)
	{
		montMult(xbar,xbar,n,&xbar);
		if (e.test(i))
			montMult(Mbar,xbar,n,&xbar);
	}
	montMult(xbar,1,n,out);

	// experimental multiword algorithm
#else
	uintRSA_t xbar = xbar_in;
	uintRSA_t xbar_temp = 0;

	int i;
	for (i=NUM_BITS-1; i>=0; i--)
	{
		mwr2mm(xbar,xbar,n,&xbar);

		if (e.test(i)) // if (e.bit(i) == 1)
			mwr2mm(Mbar,xbar,n,&xbar);
	}
	mwr2mm(xbar,1,n,out);
#endif


}
