#include "rsaModExp.hpp"


//void rsaModExp( ap_uint<NUM_BITS+2> Mbar, // precomputed: montgomery residue of the base w.r.t. the radix--> (2^(2048+2))*base mod n
//				ap_uint<NUM_BITS+2> e,    // exponent
//				ap_uint<NUM_BITS+2> n,    // modulus
//				ap_uint<NUM_BITS+2> xbar, // precomputed: montgomery residue of 1  w.r.t. the radix--> 2^(2048+2) mod n
//				ap_uint<NUM_BITS+2> *out) // output
void rsaModExp( ap_uint<NUM_BITS+2> M, // precomputed: montgomery residue of the base w.r.t. the radix--> (2^(2048+2))*base mod n
				ap_uint<NUM_BITS+2> e,    // exponent
				ap_uint<NUM_BITS+2> n,    // modulus
				ap_uint<NUM_BITS+2> rbar,    // r^2(n+2) mod n
				ap_uint<NUM_BITS+2> *out) // output
{
	ap_uint<NUM_BITS+2> xbar=0, Mbar=0;

	montMult(rbar,M, n, &Mbar);
	montMult(rbar,ap_uint<NUM_BITS+2>(1), n, &xbar);

	cout << hex << "M = " << M << endl << "e = " << e << endl << "n = " << n << endl;
	cout << "Mbar = " << Mbar << endl << "xbar = " << xbar << endl;

	// compute montgomery modular exponentiation using square and multiply algorithm
	for (int i=NUM_BITS-1; i>=0; i--)
	{
		montMult(xbar,xbar,n,&xbar); // square
		if (e.test(i)) {
			montMult(Mbar,xbar,n,&xbar); // multiply
		}
	}
	// undo montgomery transform
	montMult(xbar,(ap_uint<NUM_BITS+2>)1,n,out);
}

