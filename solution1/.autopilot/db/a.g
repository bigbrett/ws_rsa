#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/brett/workspace/Vivado_WS/ws_rsa64bit/solution1/.autopilot/db/a.g.bc ${1+"$@"}