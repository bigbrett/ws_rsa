#ifndef RSA_TOPLEVEL_HPP_
#define RSA_TOPLEVEL_HPP_
#include "globals.hpp"



//void rsa_toplevel(ap_uint<1024> base, ap_uint<1024> exponent, ap_uint<1024> modulus, ap_uint<1024>* outData);
void rsa_toplevel(uint1024_t base, uint1024_t exponent, uint1024_t modulus, uint1024_t* outData);
//void rsa_toplevel(ap_uint<34> base, ap_uint<33> exponent, ap_uint<32> modulus, ap_uint<34>* outData);

#endif // RSA_TOPLEVEL_HPP_
