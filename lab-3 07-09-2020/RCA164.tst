load RCA164.hdl,
output-file RCA164.out,
//compare-to RCA164.cmp,
output-list x%D1.6.1 y%D1.6.1 AS%D2.1.2 out%D1.6.1 of%B2.1.2;

set x %D200,	set y %D496,	set AS 0, eval, output;
set x %D20000,	set y %D20000,	set AS 0, eval, output;
set x %D-3000,	set y %D-356,	set AS 0, eval, output;
set x %D-20000,	set y %D-20000,	set AS 0, eval, output;
set x %D20000,	set y %D-20000,	set AS 0, eval, output;
set x %D595,	set y %D-595,	set AS 1, eval, output;
set x %D20000,	set y %D-20000,	set AS 1, eval, output;