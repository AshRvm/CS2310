load Comp8.hdl,
output-file Comp8.out,
compare-to Comp8.cmp,
output-list x%B3.8.3 y%B3.8.3 z%B3.1.3;

set x %B11111111, set y %B11111111,
eval,
output;

set x %B10110110, set y %B10110110,
eval,
output;

set x %B10110110, set y %B01001001,
eval,
output;

set x %B01010101, set y %B10110110,
eval,
output;
