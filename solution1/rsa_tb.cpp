#include <stdlib.h>
#include <iostream>
#include <cmath>
#include <bitset>
#include "globals.hpp"
#include "montMult.hpp"
#include "ModExp.hpp"
#include "mwr2mm.hpp"


int main()
{
	uint1024_t returnval = 0;

#define sel 0

#if sel==0
	uint1024_t M =    uint1024_t("00be5416af9696937b7234421f7256f78dba8001c80a5fdecdb4ed761f2b7f955946ec920399f23ce9627f66286239d3f20e7a46df185946c6c8482e227b9ce172dd518202381706ed0f91b53c5436f233dec27e8cb46c4478f0398d2c254021a7c21596b30f77e9886e2fd2a081cadd3faf83c86bfdd6e9daad12559f8d2747",16);
	uint1024_t e =    uint1024_t("6f1e6ab386677cdc86a18f24f42073b328847724fbbd293eee9cdec29ac4dfe953a4256d7e6b9abee426db3b4ddc367a9fcf68ff168a7000d3a7fa8b9d9064ef4f271865045925660fab620fad0aeb58f946e33bdff6968f4c29ac62bd08cf53cb8be2116f2c339465a64fd02517f2bafca72c9f3ca5bbf96b24c1345eb936d1",16);
	uint1024_t n =    uint1024_t("b4d92132b03210f62e52129ae31ef25e03c2dd734a7235efd36bad80c28885f3a9ee1ab626c30072bb3fd9906bf89a259ffd9d5fd75f87a30d75178b9579b257b5dca13ca7546866ad9f2db0072d59335fb128b7295412dd5c43df2c4f2d2f9c1d59d2bb444e6dac1d9cef27190a97aae7030c5c004c5aea3cf99afe89b86d6d",16);
	uint1024_t Mbar = uint1024_t("9A9D95D8EE88E38C18FF90DCDDFA8D8B59E8E3457F635660241E4B0CB01AD15CFDB7727BE260BA7254001D0D1B0DF4335927FE9332B9409A3B3D8F6DA56DE4ED030A9DAF7364871E5E46A01E174D36BEF53BB2C823A3301027168A23E67F5ABE4F7E1C3B2D75862C822D1B26593402E8835719CA67428A1F4020F14379EBB84D",16);
	uint1024_t xbar = uint1024_t("4B26DECD4FCDEF09D1ADED651CE10DA1FC3D228CB58DCA102C94527F3D777A0C5611E549D93CFF8D44C0266F940765DA600262A028A0785CF28AE8746A864DA84A235EC358AB97995260D24FF8D2A6CCA04ED748D6ABED22A3BC20D3B0D2D063E2A62D44BBB19253E26310D8E6F5685518FCF3A3FFB3A515C306650176479293",16);
	int ans = 29;

	if (NUM_BITS != 1024)
	{
		cerr << "Incorrect bitwidth specified" << endl;
		return 1;
	}
#elif sel==1
	uint1024_t M =    uint1024_t("6bbd141023a70b97a08eea46d702b25ac25b37c5b3b39ea344252b52df244cc266a224bf8368c81ebcec0a5cdbb8df29ad7e294c52c8e0b21953a21fd2a81c9e",16);
	uint1024_t e =    uint1024_t("210ba10888454c680e596be478e2cc42d7538c6d8e2c2c2353ef36b329605cb4e01898f7eae3532e3173966fded0f6e65e27d66fd035842b99ce8f2d1e389435",16);
	uint1024_t n =    uint1024_t("6e6627db44bb4d13ce7b59d2347a297e7614a4495fd916d807720d28c17f6ef56a6cc5eb9794938a1b499af7d43a376a2da12fdfaf464c43d2539b63e655a799",16);
	uint1024_t Mbar = uint1024_t("24a773916baeb3c2d9739af23e24cdad085ce567716d519a98ff058b242aa377346fd77fb5f4b455e49ed310b6ebc777b097d325253fbc880b46c58ca798c442",16);
	uint1024_t xbar = uint1024_t("2333b049768965d863094c5b970bad0313d6b76d404dd24ff11be5ae7d0122152b267428d0d6d8ebc96cca10578b912ba4bda040a17367785b58c9383354b0ce",16);
	int ans = 0x6DAFFF;

	if (NUM_BITS != 512)
	{
		cerr << "Incorrect bitwidth specified" << endl;
//		return 1;
	}
#elif sel==2
	uint1024_t M =    uint1024_t("7f1ed3e1cd78ea337b6c54c0187220fa8f17f1dccf88884cc6d2ce90f90091183377a2974395b811427f15f6a970709eb9336224b382535388822bf84d296b97b3e587072503ad3fc68b378c0a3546cae4c18ff337ead7630423238c72abb60611542fb3a63fc13ac6b6eec9cd744084393a1d8f7d29415408b7ce8c0ff0884c",16);
	uint1024_t e =    uint1024_t("455d679aff5df43192c6f73ec715a6070dcf1f8edf79efad134506e4e6435e16ac50195302833e864595ffed9df71baa13fe235c0148a37bcc650621926d95fc4ce091d067541ac23fe46f0d7daa56368b2e7915df9c4462d051bb0ea8e4c1a61ad2eed13fd9187360072d8a577aacb2ea9f3084ca86c482c9df24e536af1bf1",16);
	uint1024_t n =    uint1024_t("b9fd69a48840b92bdfd488b8d2dccc7f514741c677c95c234e787898221afbefc5152739b5734904a16cb672fae01d2be1ab93185e657a5bf55e04a2b9f6a9688719340fffaa133533cbacaf4551491ffebcd674a5af78f1a3197865c43c7e87ee19a24c9c67376908d9740cb59381bb9a4de6121271430fec763837e5ff11d3",16);
	uint1024_t Mbar = uint1024_t("b361a02dbd278ea6c2d52d2880f7cdef3fecb2f69a164b0ad345a1d739440631a7aa5a470b1d9f566fd74bde1c0cec7267bc9de76a98bf4c6fa8187c123a1b2ebe756dd58b30401ae553449f10e6b0ca3413d279edbe4bb4084492e7c37e55d5eb3937f1e35bffb8ee7a8410941c6ecbc8c45fb8f6e16484c1441d43f23f3d39",16);
	uint1024_t xbar = uint1024_t("4602965b77bf46d4202b77472d233380aeb8be398836a3dcb1878767dde504103aead8c64a8cb6fb5e93498d051fe2d41e546ce7a19a85a40aa1fb5d4609569778e6cbf00055eccacc345350baaeb6e00143298b5a50870e5ce6879a3bc3817811e65db36398c896f7268bf34a6c7e4465b219eded8ebcf01389c7c81a00ee2d",16);
	int ans = 0x6DAFFF;

	if (NUM_BITS != 1024)
	{
		cerr << "Incorrect bitwidth specified" << endl;
		return 1;
	}
#elif sel==3
		uint1024_t M   = 2790;
		uint1024_t e   = 2753;
		uint1024_t n   = 3233;
		uint1024_t Mbar = 1330;
		uint1024_t xbar = 1785;
		int ans = 65;

		if (NUM_BITS != 1024)
		{
			cerr << "Incorrect bitwidth specified" << endl;
//			return 1;
		}
#elif sel == 4
		uint1024_t M   = 1570;
		uint1024_t e   = 1019;
		uint1024_t n   = 3337;
		uint1024_t Mbar = 1966;
		uint1024_t xbar = 2216;
		int ans = 688;

		if (NUM_BITS != 1024)
		{
			cerr << "Incorrect bitwidth specified" << endl;
			return 1;
		}
#else
		uint1024_t M   = 7;
		uint1024_t e   = 10;
		uint1024_t n   = 13;
		uint1024_t Mbar = 8;
		uint1024_t xbar = 3;
		int ans = 4;

		if (NUM_BITS != 4)
		{
			cerr << "Incorrect bitwidth specified" << endl;
			return 1;
		}
#endif

	uint1024_t res;
	ModExp(M,e,n,Mbar,xbar,&res);


	// Read output from DUT function
	cerr << "res = " << hex << res << endl << " [ 0b" << bitset<10>(res) << " ]" << endl;


	if (res != ans)
	{
		cout << "Test Failed !!!" << endl;
		returnval = 1;
	}
	else
		cout << "Test Passed !!!" << endl;

		return returnval;
}

