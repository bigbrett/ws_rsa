<project xmlns="com.autoesl.autopilot.project" name="ws_rsa64bit" top="rsaModExp" includeRunResult="true">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../solution1/rsa_tb.cpp" sc="0" tb="1" cflags=" "/>
        <file name="ws_rsa64bit/solution1/ModExp.cpp" sc="0" tb="false" cflags=""/>
        <file name="ws_rsa64bit/solution1/ModExp.hpp" sc="0" tb="false" cflags=""/>
        <file name="ws_rsa64bit/solution1/globals.hpp" sc="0" tb="false" cflags=""/>
        <file name="ws_rsa64bit/solution1/interleaveModMult.cpp" sc="0" tb="false" cflags=""/>
        <file name="ws_rsa64bit/solution1/interleaveModMult.hpp" sc="0" tb="false" cflags=""/>
        <file name="ws_rsa64bit/solution1/montMult.cpp" sc="0" tb="false" cflags=""/>
        <file name="ws_rsa64bit/solution1/montMult.hpp" sc="0" tb="false" cflags=""/>
        <file name="ws_rsa64bit/solution1/rsaModExp.cpp" sc="0" tb="false" cflags=""/>
        <file name="ws_rsa64bit/solution1/rsaModExp.hpp" sc="0" tb="false" cflags=""/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

