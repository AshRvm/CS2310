load Decoder24.hdl,
output-file Decoder24.out,
compare-to Decoder24.cmp,
output-list x0%B3.1.3 x1%B3.1.3 y0%B3.1.3 y1%B3.1.3 y2%B3.1.3 y3%B3.1.3;

set x0 0, set x1 0, eval, output;
set x0 0, set x1 1, eval, output;
set x0 1, set x1 0, eval, output;
set x0 1, set x1 1, eval, output;