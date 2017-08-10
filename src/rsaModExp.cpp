#include "rsaModExp.hpp"
#include "montMult.hpp"
#include "ap_shift_reg.h"

void rsaModExp( uintRSA_t Mbar, uintRSA_t e, uintRSA_t n,
				uintRSA_t xbar, uintRSA_t *out)
{

	// compute montgomery modular exponentiation using square and multiply algorithm
	int i;
	for (i=NUM_BITS-1; i>=0; i--)
	{
		montMult(xbar,xbar,n,&xbar); // square
		if (e.test(i)) {
			montMult(Mbar,xbar,n,&xbar); // multiply
		}
	}
	// undo montgomery transform
	montMult(xbar,(rsaSize_t)1,n,out);
}


//void rsaModExp( uintRSA_t Mbar, uintRSA_t e, uintRSA_t n,
//				uintRSA_t xbar, uintRSA_t *out)
//{
//	uintRSA_t esrl = e;
//
//	// compute montgomery modular exponentiation using square and multiply algorithm
//	int i;
//	for (i=NUM_BITS-1; i>=0; i--)
//	{
////		cout << "i = " << dec << i << endl;
//		montMult(xbar,xbar,n,&xbar); // square
////		cout << "| square: xbar = " << hex << xbar << endl;
//		if (e.test(i)) {
//			montMult(Mbar,xbar,n,&xbar); // multiply
////			cout << "| multiply: xbar = " << xbar << endl;
//		}
//	}
//	// undo montgomery transform
//	montMult(xbar,(rsaSize_t)1,n,out);
//}