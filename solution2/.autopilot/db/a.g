#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/brett/Thesis/Vivado_WS/ws_rsa/solution2/.autopilot/db/a.g.bc ${1+"$@"}
