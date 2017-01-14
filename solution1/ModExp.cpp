#include "ModExp.hpp"

#define MWR2MM 0

//void ModExp(uint1024_t M, uint1024_t e, uint1024_t n,
//			uint1024_t Mbar, uint1024_t xbar, uint1024_t* out)
void ModExp(uint1024_t M, uint1024_t e, uint1024_t n,
			uint1024_t Mbar, uint1024_t xbar_in, uint1024_t* out)

{
#if MWR2MM == 0
#pragma HLS ALLOCATION instances=montMult limit=1 function

	uint1024_t xbar = xbar_in;
	uint1024_t xbar_temp = 0;

//
//	int i;
//	for (i=NUM_BITS-1; i>=0; i--)
//	{
//		montMult(xbar,xbar,n,&xbar);
//
//		if (e.test(i)) // if (e.bit(i) == 1)
//		{
//			montMult(Mbar,xbar,n, &xbar_temp);
//			xbar = xbar_temp;
//		}
//	}
//	montMult(xbar,1,n, out);

	int i;
	for (i=NUM_BITS-1; i>=0; i--)
	{
		montMult(xbar,xbar,n,&xbar); //cout << endl << "ME:xbar = " << endl<<hex << xbar << endl;

		if (e.test(i)) // if (e.bit(i) == 1)
			montMult(Mbar,xbar,n,&xbar); //cout << endl << "**ME:xbar = " << endl << hex << xbar << endl;
	}
	montMult(xbar,1,n,out); //cout << endl << "**FINALME1:xbar = " << endl<<hex << xbar << endl;


#else
	uint1024_t xbar = xbar_in;
	uint1024_t xbar_temp = 0;

	int i;
	for (i=NUM_BITS-1; i>=0; i--)
	{
		mwr2mm(xbar,xbar,n,&xbar);

		if (e.test(i)) // if (e.bit(i) == 1)
			mwr2mm(Mbar,xbar,n,&xbar);
	}
	mwr2mm(xbar,1,n,out);
#endif


//	function ModExp(B, E, N: BigInteger): BigInteger;
//	var
//	  R, RR, MontB: BigInteger;
//	  I: Integer;
//
//	begin
//	  R:= BigInteger.PowerOfTwo(1024) mod N;
//	  MontB:= (B * R) mod N;

//	  for I:= 1023 downto 0 do begin
//	    R:= MontMult(R, R, N);
//	    if not (E shr I).IsEven then begin
//	      RR:= MontMult(MontB, R, N);
//	      R:= RR;
//	    end;
//	  end;
//	  Result:= MontMult(RR, 1, N);
//	end;

// OLD CODE
//	int i;
//	uint1024_t tempMbar = 0;
//	for (i=NUM_BITS-1; i>=0; i--)
//	{
//		montMult(xbar,xbar,n,&xbar);
//
//		if (e.test(i)) // if (e.bit(i) == 1)
//			montMult(Mbar,xbar,n,&xbar);
//	}
//	montMult(xbar,1,n,out);

}
