load CLA164.hdl,
output-file CLA164.out,
//compare-to CLA164.cmp,
output-list a%D1.6.1 b%D1.6.1 AS s%D1.6.1 of%B6.1.6;

set a %D200, 	set b %D496, 	set AS 0, eval, output;
set a %D20000,	set b %D20000, 	set AS 0, eval, output;
set a %D-3000, 	set b %D-356, 	set AS 0, eval, output;
set a %D-20000, set b %D-20000, set AS 0, eval, output;
set a %D20000, 	set b %D-20000, set AS 0, eval, output;
set a %D595, 	set b %D-595, 	set AS 1, eval, output;
set a %D20000, 	set b %D-20000, set AS 1, eval, output;