load Decoder24.hdl,
output-file Decoder24.out,
compare-to Decoder24.cmp,
output-list x0 x1 y0 y1 y2 y3;

set x0 0, set x1 0, eval, output;
set x0 0, set x1 1, eval, output;
set x0 1, set x1 0, eval, output;
set x0 1, set x1 1, eval, output;