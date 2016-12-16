#include <stdlib.h>
#include <iostream>
#include <cmath>
#include <bitset>
#include "globals.hpp"
#include "rsa_toplevel.hpp"
#include "montMult.hpp"
#include "ModExp.hpp"


int main()
{
	uint1024_t returnval = 0;
//	uint1024_t message = 0;

	// should result in 0x1D or 0d29 as decrypted message
#if 0//(NUM_BITS == 1024)
	uint1024_t M = uint1024_t("0xbe5416af9696937b7234421f7256f78dba8001c80a5fdecdb4ed761f2b7f955946ec920399f23ce9627f66286239d3f20e7a46df185946c6c8482e227b9ce172dd518202381706ed0f91b53c5436f233dec27e8cb46c4478f0398d2c254021a7c21596b30f77e9886e2fd2a081cadd3faf83c86bfdd6e9daad12559f8d2747",16);
	uint1024_t n = uint1024_t("0xb4d92132b03210f62e52129ae31ef25e03c2dd734a7235efd36bad80c28885f3a9ee1ab626c30072bb3fd9906bf89a259ffd9d5fd75f87a30d75178b9579b257b5dca13ca7546866ad9f2db0072d59335fb128b7295412dd5c43df2c4f2d2f9c1d59d2bb444e6dac1d9cef27190a97aae7030c5c004c5aea3cf99afe89b86d6d",16);
	uint1024_t e = uint1024_t("0x6f1e6ab386677cdc86a18f24f42073b328847724fbbd293eee9cdec29ac4dfe953a4256d7e6b9abee426db3b4ddc367a9fcf68ff168a7000d3a7fa8b9d9064ef4f271865045925660fab620fad0aeb58f946e33bdff6968f4c29ac62bd08cf53cb8be2116f2c339465a64fd02517f2bafca72c9f3ca5bbf96b24c1345eb936d1",16);
#else
		uint1024_t M   = 2790;
		uint1024_t e   = 2753;
		uint1024_t n   = 3233;

		uint1024_t Mbar = 1330;
		uint1024_t xbar = 1785;
#endif
		uint1024_t res;

	ModExp(M,e,n,Mbar,xbar,&res);

//	double foo = res;
//	res =  pow(foo,NUM_BITS) % M;

	// Read output from DUT function
	cerr << "res = " << res << " [ 0b" << bitset<8>(res) << " ]" << endl;


//	uint1024_t decrypted = (uint1024_t)pow(cipher, rsa.privatekey) % rsa.radix;
//	cout << "decrypted message = " << decrypted << end
//	if ( decrypted != message )
	if (res != 65)
	{
		cout << "Test Failed !!!" << endl;
		returnval = 1;
	}
	else
		cout << "Test Passed !!!" << endl;

		return returnval;
}

