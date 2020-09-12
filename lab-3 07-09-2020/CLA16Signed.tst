load CLA16Signed.hdl,
output-file CLA16Signed.out,
compare-to CLA16Signed.cmp,
output-list a%D1.6.1 b%D1.6.1 cin s%D1.6.1 overflow%B6.1.6;

set a %D200,set b %D496,set cin 0, eval, output;
set a %D20000,set b %D20000,set cin 0, eval, output;
set a %D-3000,set b %D-356,set cin 0, eval, output;
set a %D-20000,set b %D-20000,set cin 0, eval, output;
set a %D20000,set b %D-20000,set cin 0, eval, output;
set a %D595,set b %D-595,set cin 1, eval, output;
set a %D20000,set b %D-20000,set cin 1, eval, output;