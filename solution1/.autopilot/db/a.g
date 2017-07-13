#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/brett/Thesis/Vivado_WS/ws_rsa/solution1/.autopilot/db/a.g.bc ${1+"$@"}
