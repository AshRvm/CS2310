load MPLY8CSAu.hdl,
output-file MPLY8CSAu.out,
compare-to MPLY8CSAu.cmp,
output-list a%D1.3.1 b%D1.3.1 p%D1.3.1 of%B1.1.1;

set a %D6,  set b %D5,  eval, output;
set a %D24, set b %D8,  eval, output;
set a %D60, set b %D52, eval, output;