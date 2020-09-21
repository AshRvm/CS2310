load MPLY8CSA.hdl,
output-file MPLY8CSA.out,
compare-to MPLY8CSA.cmp,
output-list a%B1.8.1 b%B1.8.1 p%B1.8.1 of%B1.1.1;

set a %B00000100, set b %B00000101, eval, output;
set a %B00001000, set b %B11111010, eval, output;
set a %B11111000, set b %B00000110, eval, output;
set a %B11111000, set b %B11111000, eval, output;

set a %B01100100, set b %B10011100, eval, output;
set a %B10011100, set b %B01100100, eval, output;
set a %B01100100, set b %B01100100, eval, output;
set a %B10011100, set b %B10011100, eval, output;