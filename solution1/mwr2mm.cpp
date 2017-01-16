#include "mwr2mm.hpp"

void mwr2mm(uintRSA_t X0, uintRSA_t Y0, uintRSA_t M0, uintRSA_t* outData) {
#define WORD_LEN 2
#define WORD_LEN_MINUS1 1//WORD_LEN-1
#define NUM_WORDS 512//(NUM_BITS)/WORD_LEN

	ap_uint<NUM_BITS+2> X = X0, Y = Y0, M=M0;
	ap_uint<2*NUM_BITS> S = 0;
	ap_uint<2> C=0;
	ap_uint<WORD_LEN> Yj,Mj,Sj,Sjm1,Sem1;

	int i,j,jth_word,jm1th_word, em1th_word;
	em1th_word = (NUM_WORDS-1)*WORD_LEN-1;

	bool odd = false;
	ap_uint<2> Ca=0, Cb=0;
	for (i=0; i<NUM_BITS; i++) {
		Ca = 0;
		Cb = 0;

		for (j=0; j<=NUM_WORDS; j++)
		{
			jth_word = (j+1)*WORD_LEN-1; // bit index of MSB of the jth word
			jm1th_word = j*WORD_LEN-1; // bit index of MSB of the (j-1)th word

			(Ca, S(jth_word, jth_word-WORD_LEN_MINUS1)) = Ca + X.get(i)*Yj + S.range(jth_word, jth_word-WORD_LEN_MINUS1);
			if (j== 0)
				odd = S.test(0);
			if (odd)
				(Cb, S(jth_word, jth_word-WORD_LEN_MINUS1)) = Cb + Mj + S.range(jth_word, jth_word-WORD_LEN_MINUS1);
			S = S >> 1;
		}
	} //end for



//	for (i=0; i<NUM_BITS; i++) {
//		(C, S(WORD_LEN-1,0)) = X.get(i) * Y.range(WORD_LEN-1,0) + S.range(WORD_LEN-1,0);
//
//		if (S.test(0)) {
//			(C, S(WORD_LEN-1,0)) = (C, S.range(WORD_LEN-1,0)) + M.range(WORD_LEN-1,0);
//
//			for (j=1; j<NUM_WORDS; j++)	{
////				jth_word = (j+1)*WORD_LEN-1; // bit index of MSB of the jth word
////				jm1th_word = j*WORD_LEN-1; // bit index of MSB of the (j-1)th word
//				jth_word = j*WORD_LEN-1; // bit index of MSB of the jth word
//				jm1th_word = (j-1)*WORD_LEN-1; // bit index of MSB of the (j-1)th word
//
//				Yj = Y.range(jth_word, jth_word-WORD_LEN_MINUS1); // jth word of Y
//				Mj = M.range(jth_word, jth_word-WORD_LEN_MINUS1); // jth word of M
//
//				(C, S(jth_word, jth_word-WORD_LEN_MINUS1)) = C + X.get(i)*Yj + Mj + S.range(jth_word, jth_word-WORD_LEN_MINUS1);
//
//				// assign (j-1)th word of S new value
//				// TODO SHOULD THIS (AND SAME BELOW) JUST BE A RIGHT SHIFT? DEPENDENCY ON 2 COULD BE REMOVED
//				if (j >= 2)
//				{
//					Sj = S.range(jth_word, jth_word-WORD_LEN_MINUS1); // current jth word of S
//					Sjm1 = S.range(jm1th_word, jm1th_word-WORD_LEN_MINUS1); // current (j-1)th word of S
//					S(jm1th_word, jm1th_word-WORD_LEN_MINUS1)  = (Sj[0], Sjm1.range(WORD_LEN-1,1));
//				}
//			}
//			// assign new value to second to last (e-1)th word of S
//			Sem1 = S.range(em1th_word, em1th_word-WORD_LEN_MINUS1); // second to last word of S
//			S(em1th_word, em1th_word-WORD_LEN_MINUS1) = (C, Sem1.range(WORD_LEN-1,1));
//		}
//		else {
//			for (j=1; j<NUM_WORDS; j++) {
////				jth_word = (j+1)*WORD_LEN-1; // bit index of MSB of the jth word
////				jm1th_word = j*WORD_LEN-1; // bit index of MSB of the (j-1)th word
//				jth_word = j*WORD_LEN-1; // bit index of MSB of the jth word
//				jm1th_word = (j-1)*WORD_LEN-1; // bit index of MSB of the (j-1)th word
//
//				Yj = Y.range(jth_word, jth_word-WORD_LEN_MINUS1); // jth word of Y
//
//				(C, S(jth_word, jth_word-WORD_LEN_MINUS1)) = C + X.get(i)*Yj + S.range(jth_word, jth_word-WORD_LEN_MINUS1);
//
//				// assign (j-1)th word of S new value
//				if (j >= 2)
//				{
//					Sj = S.range(jth_word, jth_word-WORD_LEN_MINUS1); // current jth word of S
//					Sjm1 = S.range(jm1th_word, jm1th_word-WORD_LEN_MINUS1); // current (j-1)th word of S
//					S(jm1th_word, jm1th_word-WORD_LEN_MINUS1)  = (Sj[0], Sjm1.range(WORD_LEN-1,1));
//				}
//			}
//			// assign new value to second to last (e-1)th word of S
//			Sem1 = S.range(em1th_word, em1th_word-WORD_LEN_MINUS1); // second to last word of S
//			S(em1th_word, em1th_word-WORD_LEN_MINUS1) = (C, Sem1.range(WORD_LEN-1,1));
//		} // end else
//	} //end for

	*outData = S.range(NUM_BITS-1,0);

} // end fn
