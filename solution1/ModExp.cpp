#include "ModExp.hpp"

#define R pow(2,NUM_BITS)


uint1024_t ModExp(uint1024_t M, uint1024_t e, uint1024_t n)
{
	uint1024_t x;

	int r = 16;
	int Mbar = (M*r) % n;
	int xbar = (1*r) % n;

	uint1024_t Mbaru = ap_uint<NUM_BITS>(Mbar);
	uint1024_t xbaru = ap_uint<NUM_BITS>(xbar);

	int i;
	for (i=NUM_BITS-1; i>=0; i--)
	{
		montMult(xbaru,xbaru,n,&xbaru);
		if (e.bit(i) == 1)
			montMult(Mbaru,xbaru,n,&xbaru);
	}
	montMult(xbaru,1,n,&x);
	return x;
}
