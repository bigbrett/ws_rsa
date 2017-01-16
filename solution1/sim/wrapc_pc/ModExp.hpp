#ifndef MODEXP_HPP_
#define MODEXP_HPP_

#include "globals.hpp"
#include "montMult.hpp"
#include "mwr2mm.hpp"


void ModExp(uintRSA_t M, uintRSA_t e, uintRSA_t n, uintRSA_t Mbar, uintRSA_t xbar, uintRSA_t* out);


#endif
