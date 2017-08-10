#include <stdlib.h>
#include <iostream>
#include <cmath>
#include "globals.hpp"
#include "montMult.hpp"
#include "rsaModExp.hpp"
#include "interleaveModMult.hpp"

typedef enum {MM,ME} test_t;
test_t TEST = ME;

const ap_uint<NUM_BITS+1> r = ap_uint<NUM_BITS+1>("32317006071311007300714876688669951960444102669715484032130345427524655138867890893197201411522913463688717960921898019494119559150490921095088152386448283120630877367300996091750197750389652106796057638384067568276792218642619756161838094338476170470581645852036305042887575891541065808607552399123930385521914333389668342420684974786564569494856176035326322058077805659331026192708460314150258592864177116725943603718461857357598351152301645904403697613233287231227125684710820209725157101726931323469678542580656697935045997268352998638215525166389437335543602135433229604645318478604952148193555853611059596230656",10);

int main()
{
	uintRSA_t returnval = 0;
	uintRSA_t res=0, ans;


	/*
	 * Test Modular Exponentiation
	 */
	if (TEST == ME)
	{
		uintRSA_t M   = uintRSA_t("1da244c4ca2a463a931e14f7c51b5660a73ee441338c72f8388f1da84d3a9e8cc2c43f665d7c337161852df98e752c938dd6e7394935e1a462f93ec7a67a14b7a4aa2749ae6ee0cb9b5654eb64c2e59dabf75cde308ecb9e8a7d295ec821605d6ea00986bcdab54b7785ea953bb95cd4e9e39244c8fc4d362ee1c59a40e17684c833a2c4f77bd6c055e54e7282e6d50fc5ca018d7a0a801d9dcbb6094ea9decddf04edd5a4fb57ea6821b38b0172e4cf81175985b9c773798f6b1adf27122ba1b22bb68357f7dfafd866848bc0910b726380c203b32ed8f1967099c2be43bf976dded458877bd987edc04a26e6318204a2e1005071c467e6572fdab11e37ecda",16);
		uintRSA_t e   = uintRSA_t("19297a6086f1a6e1432a69ef4b33e6bb0fb2b8273e86cd4de006c6870aa37de267ed591c9090594aaaf42e90423291094685502698911faaf9e65cae85343aa46184489d524f3bc72ff67be5d7826f8473ee6f617b5654de1ce1460fc4a30238f78adccaf889938d62e03b79584e68f6819c4efdea463ad2f8681d5eaaa16900e85f8c02a075e2654b6e854da6a8aa14d2330f0531f5e7cdc1233db65bfa80353af07653cf4d226029db565729b7a8e1a7062b47c3d06d154fb615f74bf1881c36675f888a31c9930fd88e0269c88bf881442dcce2056e79593c008eead2a7666104aadbd4b41eed5d20c459b4a1c24365cdbe73ccf657df7a0fb6f7c1ff3271",16);
		uintRSA_t n   = uintRSA_t("97066fc9a3411a89c41ce91646bd3fdd43967e0a9cfdc4caf96d56b85ad7019d8668132d1fee399b0ccc32a6feeadb95ec39d4ffc24903aeea702d212c2a4ab61499c2004d91ff127207d3d628d92cd32ed75a6144aac7e7d868eaaa6ad5d788604f40d29213d63e2fe9d431b2f3e8937c1d8e278eff2884aec987fa5f84ab36281df3a27945764b8abb71e3710357d97254d67bf3ed4eaf4e025b516efef045b390c51ef1b8bcfacfe53bce2def99008f75c0308a12d9e3a54de3098ac8f8a88814a2ed070fef3e18b0f858e19d9ed12dd00171663abc2986496253f49e663a692ee3e2167fba32396cbf7a7b4a5f01fd3e3c27093ff44f0051c219a01ef3cf",16);
		ans = uintRSA_t("48656c6c6f2c20576f726c6421",16);
//		uintRSA_t M   = uintRSA_t("aba5e025b607aa14f7f1b8cc88d6ec01c2d17c536508e7fa10114c9437d9616c9e1c689a4fc54744fa7dfe66d6c2fcf86e332bfd6195c13fe9e331148013987a947d9556a27a326a36c84fb38bfefa0a0ffa2e121600a4b6aa4f9ad2f43fb1d5d3eb5eaba13d3b382fed0677df30a089869e4e93943e913d0dc099aa320b8d8325b2fc5a5718b19254775917ed48a34e86324adbc8549228b5c7beeefa86d27a44ceb204be6f315b138a52ec714888c8a699f6000d1cd5ab9bf261373a5f14da1f568be70a0c97c2c3eff0f73f7ebd47b521184dc3ca932c91022bf86dd029d21c660c7c6440d3a3ae799097642f0507dfaecac11c2bd6941cbc66cedeeab744",16);
//		uintRSA_t e   = uintRSA_t("9cf3af731abb784d81d8401c474a5282d1e6e3776496aed12167ea5eaae66dd3ac7d52cfe4c9db42c8546d2eb6bef113b97e7dec07ac46f5eb5df9e5d29df63bee53317639b1894e7465cc78db88a37d7e910ffc734987113a9b9d891089a92897c08d19d045211707f70cdd6f06af41ce916915e1ad00fb63936f41de204410ba04442eddd6c091e2037f53ff511c2ece8db357f34c8c2b50ea429b5d84ce94eb50d136e91b52e253099bc8a1e1649e88f3d898ef5ce2978f3a09e5f95b988d96396fd6726b18aa4594d87fe49159ce8383c9c4b52f322a7968f99d83a4a16eac1296d5e016c79e420f13ad05ba3772734066b260e8e8b7372aee1fcd3d08d9",16);
//		uintRSA_t n   = uintRSA_t("d27bf9f01e2a901db957879f45f697330d21a21095da4fa7d3aab75454a8e9f0f4ea531ece34f0c3ba9e02eb27d8f0dbe78eede4ac84061beef162d00b55c0dd772d28f23e994899aa19b9bea7b12a8027a32a92190a3630e249544675488121565a23548fcd36f5382eeb993db9ce3f526f20ab355e82d963d59541bc1161e211a03e3b372560840c57e12bd2f40eac5ffcec01b3f07c378c0a60b74bef7b572764c88a4f98b61fa8ccd905afae779e6193378304d8eb17695ce71a173ac3de11271753c48db58546e5af9917c1cebba5bb1af3fce3df9516c0c95c9bc14bb65d1c53078c06c81ac0f3ed0d8634260e47bf780cf4f4996084df732935194417",16);
//		ans = uintRSA_t("48656c6c6f2c20576f726c6421",16);

		uintRSA_t Mbar=0, xbar=0;
		// Compute Montgomery residue of message with respect to the radix (modulo n)
		interleaveModMult(r, (ap_uint<NUM_BITS+1>)(RSAword_t(0),M), n, &Mbar);
		// initialize xbar to montgomery residue of 1 with respect to the radix (modulo n)
		interleaveModMult(r,uintRSA_t(1),n,&xbar);

		cout << hex << "M = " << M << endl << "e = " << e << endl << "n = " << n << endl;
		cout << "Mbar = " << Mbar << endl << "xbar = " << xbar << endl;

		rsaModExp(Mbar,e,n,xbar,&res);
	}
	/*
	 * Test Montgomery Multiplication
	 */
	else
	{
		uintRSA_t X   = uintRSA_t("ABA5E025B607AA14F7F1B8CC88D6EC01C2D17C536508E7FA10114C9437D9616C9E1C689A4FC54744FA7DFE66D6C2FCF86E332BFD6195C13FE9E331148013987A947D9556A27A326A36C84FB38BFEFA0A0FFA2E121600A4B6AA4F9AD2F43FB1D5D3EB5EABA13D3B382FED0677DF30A089869E4E93943E913D0DC099AA320B8D8325B2FC5A5718B19254775917ED48A34E86324ADBC8549228B5C7BEEEFA86D27A44CEB204BE6F315B138A52EC714888C8A699F6000D1CD5AB9BF261373A5F14DA1F568BE70A0C97C2C3EFF0F73F7EBD47B521184DC3CA932C91022BF86DD029D21C660C7C6440D3A3AE799097642F0507DFAECAC11C2BD6941CBC66CEDEEAB744",16);
		uintRSA_t Y   = uintRSA_t("19297A6086F1A6E1432A69EF4B33E6BB0FB2B8273E86CD4DE006C6870AA37DE267ED591C9090594AAAF42E90423291094685502698911FAAF9E65CAE85343AA46184489D524F3BC72FF67BE5D7826F8473EE6F617B5654DE1CE1460FC4A30238F78ADCCAF889938D62E03B79584E68F6819C4EFDEA463AD2F8681D5EAAA16900E85F8C02A075E2654B6E854DA6A8AA14D2330F0531F5E7CDC1233DB65BFA80353AF07653CF4D226029DB565729B7A8E1A7062B47C3D06D154FB615F74BF1881C36675F888A31C9930FD88E0269C88BF881442DCCE2056E79593C008EEAD2A7666104AADBD4B41EED5D20C459B4A1C24365CDBE73CCF657DF7A0FB6F7C1FF3271",16);
		uintRSA_t M   = uintRSA_t("97066FC9A3411A89C41CE91646BD3FDD43967E0A9CFDC4CAF96D56B85AD7019D8668132D1FEE399B0CCC32A6FEEADB95EC39D4FFC24903AEEA702D212C2A4AB61499C2004D91FF127207D3D628D92CD32ED75A6144AAC7E7D868EAAA6AD5D788604F40D29213D63E2FE9D431B2F3E8937C1D8E278EFF2884AEC987FA5F84AB36281DF3A27945764B8ABB71E3710357D97254D67BF3ED4EAF4E025B516EFEF045B390C51EF1B8BCFACFE53BCE2DEF99008F75C0308A12D9E3A54DE3098AC8F8A88814A2ED070FEF3E18B0F858E19D9ED12DD00171663ABC2986496253F49E663A692EE3E2167FBA32396CBF7A7B4A5F01FD3E3C27093FF44F0051C219A01EF3CF",16);
		ans = uintRSA_t("896CEC2150F13B226E698246E33DFC33B8F7C6CD4DA641936D881173270EB149AFFB0C1FC90E3C0371E2085941776CB13305D42F7D346E2E9663ECB08479074C8AAFB341BAD665F7C3C841953B906E468B044791580B31C56AF5FA3F2FBF98E8CAE22F758F2A2541406C19D9616309880BE1E80EA6E764B7DE3953E7568E80CBE3E82CDB3A5CE0001C1A542869B85DCD396D2EB48DDF94A54F8998FF14EB25BF6447A6F78CBE17269B2BAB29DF8BA3D9F60B42CF35E13742876C2783466AD02F2CC1FF9CDA8B4A95A7558BF0099B5CF1686274B16F75FD9D69814A554ADE87EEDF7CBDCF3E2448038147C3D2F054ABD473F2E98566FFCBE0966F0FC68A0D0350",16);
		montMult(X,Y,M,&res);
	}

	// Read output from DUT function
	cerr << "res = " << hex << res << endl;

	if (res != ans)
	{
		cout << "Test Failed !!!" << endl;
		returnval = 1;
	}
	else
		cout << "Test Passed !!!" << endl;

		return returnval;
}
