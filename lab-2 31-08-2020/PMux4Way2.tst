load PMux4Way2.hdl,
output-file PMux4Way2.out,
//compare-to PMux4Way2.cmp,
output-list x0%B1.2.1 x1%B1.2.1 x2%B1.2.1 x3%B1.2.1 r0%B3.1.3 r1%B3.1.3 r2%B3.1.3 r3%B3.1.3 y%B1.2.1;

//(a)
set r0 1, set r1 0, set r2 0, set r3 0, set x0%B00, set x1%B11, setx2%B10, set x3%B01, eval, output;
set r0 1, set r1 0, set r2 0, set r3 0, set x0%B00, set x1%B00, setx2%B00, set x3%B00, eval, output;
set r0 1, set r1 0, set r2 0, set r3 0, set x0%B11, set x1%B01, setx2%B01, set x3%B11, eval, output;
set r0 1, set r1 0, set r2 0, set r3 0, set x0%B00, set x1%B10, setx2%B10, set x3%B00, eval, output; 

//(b)
set r0 1, set r1 0, set r2 0, set r3 0, set x0%B10, set x1%B11, setx2%B00, set x3%B01, eval, output;
set r0 0, set r1 1, set r2 0, set r3 0, set x0%B10, set x1%B11, setx2%B00, set x3%B01, eval, output;
set r0 0, set r1 0, set r2 1, set r3 0, set x0%B10, set x1%B11, setx2%B00, set x3%B01, eval, output;
set r0 0, set r1 0, set r2 0, set r3 1, set x0%B10, set x1%B11, setx2%B00, set x3%B01, eval, output;