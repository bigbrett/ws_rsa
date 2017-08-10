#ifndef RSAMODEXP_HPP_
#define RSAMODEXP_HPP_

#include "globals.hpp"
#include "montMult.hpp"


void rsaModExp( uintRSA_t Mbar, uintRSA_t e, uintRSA_t n,
				uintRSA_t xbar,  uintRSA_t *out);

#endif
