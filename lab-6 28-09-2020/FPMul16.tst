load FPMul16.hdl;
output-file FPMul16.out;
compare-to FPMul16.cmp;
output-list a%B1.16.1 b%B1.16.1 p%B1.16.1;

//------------------positive * positive--------------------------
//    as    ae     am           bs    be     bm
//      ||------||-----|          ||------||-----|
set a %B0101000101000000, set b %B0101000101000000, eval, output;
set a %B0101110101000000, set b %B0101011100000000, eval, output;
set a %B0001001001110000, set b %B0001001001001010, eval, output;


//------------------positive * negative--------------------------
//    as    ae     am           bs    be     bm
//      ||------||-----|          ||------||-----|
set a %B1101000101000000, set b %B0101000101000000, eval, output;
set a %B0101110101000000, set b %B0101011100010000, eval, output;


//------------------negative * negative--------------------------
//    as    ae     am           bs    be     bm
//      ||------||-----|          ||------||-----|
set a %B1101110101010000, set b %B1101011101100000, eval, output;
set a %B1001010100001100, set b %B1101101100000000, eval, output;
