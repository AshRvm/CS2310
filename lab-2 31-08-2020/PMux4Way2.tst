load PMux4Way2.hdl,
output-file PMux4Way2.out,
//compare-to PMux4Way2.cmp,
output-list x00%B3.1.3 x01%B3.1.3 x10%B3.1.3 x11%B3.1.3 x20%B3.1.3 x21%B3.1.3 x30%B3.1.3 x31%B3.1.3 r0%B3.1.3 r1%B3.1.3 r2%B3.1.3 r3%B3.1.3 y0%B3.1.3 y1%B3.1.3;

//(a)
set r0 1, set r1 0, set r2 0, set r3 0, set x00 0, set x01 0, set x10 1, set x11 1, set x20 0, set x21 1, set x30 1, set x31 0, eval, output;
set r0 1, set r1 0, set r2 0, set r3 0, set x00 0, set x01 1, set x10 1, set x11 0, set x20 0, set x21 1, set x30 1, set x31 0, eval, output;
set r0 1, set r1 0, set r2 0, set r3 0, set x00 0, set x01 0, set x10 0, set x11 0, set x20 1, set x21 1, set x30 1, set x31 1, eval, output;
set r0 1, set r1 0, set r2 0, set r3 0, set x00 1, set x01 1, set x10 1, set x11 1, set x20 1, set x21 1, set x30 1, set x31 1, eval, output; 

//(b)
set r0 1, set r1 0, set r2 0, set r3 0, set x00 0, set x01 0, set x10 1, set x11 1, set x20 0, set x21 1, set x30 1, set x31 0, eval, output;
set r0 0, set r1 1, set r2 0, set r3 0, set x00 0, set x01 0, set x10 1, set x11 1, set x20 0, set x21 1, set x30 1, set x31 0, eval, output;
set r0 0, set r1 0, set r2 1, set r3 0, set x00 0, set x01 0, set x10 1, set x11 1, set x20 0, set x21 1, set x30 1, set x31 0, eval, output;
set r0 0, set r1 0, set r2 0, set r3 1, set x00 0, set x01 0, set x10 1, set x11 1, set x20 0, set x21 1, set x30 1, set x31 0, eval, output;
