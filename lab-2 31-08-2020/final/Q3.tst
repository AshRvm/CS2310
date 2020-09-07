load Demux8Way2.hdl,
output-file Demux8Way2.out,
compare-to Demux8Way2.cmp,
output-list x%B1.2.1 s2 s1 s0 y0%B1.2.1 y1%B1.2.1 y2%B1.2.1 y3%B1.2.1 y4%B1.2.1 y5%B1.2.1 y6%B1.2.1 y7%B1.2.1;

set x %B00, set s2 0, set s1 0, set s0 0, eval, output;
set x %B00, set s2 0, set s1 0, set s0 1, eval, output;
set x %B00, set s2 0, set s1 1, set s0 0, eval, output;
set x %B00, set s2 0, set s1 1, set s0 1, eval, output;
set x %B00, set s2 1, set s1 0, set s0 0, eval, output;
set x %B00, set s2 1, set s1 0, set s0 1, eval, output;
set x %B00, set s2 1, set s1 1, set s0 0, eval, output;
set x %B00, set s2 1, set s1 1, set s0 1, eval, output;
set x %B01, set s2 0, set s1 0, set s0 0, eval, output;
set x %B01, set s2 0, set s1 0, set s0 1, eval, output;
set x %B01, set s2 0, set s1 1, set s0 0, eval, output;
set x %B01, set s2 0, set s1 1, set s0 1, eval, output;
set x %B01, set s2 1, set s1 0, set s0 0, eval, output;
set x %B01, set s2 1, set s1 0, set s0 1, eval, output;
set x %B01, set s2 1, set s1 1, set s0 0, eval, output;
set x %B01, set s2 1, set s1 1, set s0 1, eval, output;
set x %B10, set s2 0, set s1 0, set s0 0, eval, output;
set x %B10, set s2 0, set s1 0, set s0 1, eval, output;
set x %B10, set s2 0, set s1 1, set s0 0, eval, output;
set x %B10, set s2 0, set s1 1, set s0 1, eval, output;
set x %B10, set s2 1, set s1 0, set s0 0, eval, output;
set x %B10, set s2 1, set s1 0, set s0 1, eval, output;
set x %B10, set s2 1, set s1 1, set s0 0, eval, output;
set x %B10, set s2 1, set s1 1, set s0 1, eval, output;
set x %B11, set s2 0, set s1 0, set s0 0, eval, output;
set x %B11, set s2 0, set s1 0, set s0 1, eval, output;
set x %B11, set s2 0, set s1 1, set s0 0, eval, output;
set x %B11, set s2 0, set s1 1, set s0 1, eval, output;
set x %B11, set s2 1, set s1 0, set s0 0, eval, output;
set x %B11, set s2 1, set s1 0, set s0 1, eval, output;
set x %B11, set s2 1, set s1 1, set s0 0, eval, output;
set x %B11, set s2 1, set s1 1, set s0 1, eval, output;
