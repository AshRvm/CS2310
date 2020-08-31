load Decoder38.hdl,
output-file Decoder38.out,
compare-to Decoder38.cmp,
output-list x0%B3.1.3 x1%B3.1.3 x2%B3.1.3 y0%B3.1.3 y1%B3.1.3 y2%B3.1.3 y3%B3.1.3 y4%B3.1.3 y5%B3.1.3 y6%B3.1.3 y7%B3.1.3;

set x0 0, set x1 0, set x2 0, eval, output;
set x0 0, set x1 0, set x2 1, eval, output;
set x0 0, set x1 1, set x2 0, eval, output;
set x0 0, set x1 1, set x2 1, eval, output;
set x0 1, set x1 0, set x2 0, eval, output;
set x0 1, set x1 0, set x2 1, eval, output;
set x0 1, set x1 1, set x2 0, eval, output;
set x0 1, set x1 1, set x2 1, eval, output;