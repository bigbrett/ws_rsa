#ifndef GLOBALS_HPP_
#define GLOBALS_HPP_

#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string>
#include <math.h>
#include <stdint.h>
#include <cstdlib>

#include "hls_stream.h"
#include "ap_utils.h"

#define AP_INT_MAX_W 4096 // must be defined before ap_int.h include
#include "ap_int.h"

using namespace hls;
using namespace std;

#define NUM_BITS 2048
#define NUM_WORDS 257
// arbitrary precision for RSA
typedef ap_uint<NUM_BITS> uintRSA_t; // 1024 bit unsigned integer
typedef ap_uint<NUM_BITS> rsaSize_t;

typedef ap_uint<8> RSAword_t;


#endif // GLOBALS_HPP_
