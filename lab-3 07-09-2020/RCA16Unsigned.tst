load RCA16Unsigned.hdl,
output-file RCA16Unsigned.out,
//compare-to RCA16Unsigned.cmp,
output-list x%B1.16.1 y%B1.16.1 AS%D2.1.2 result%B1.16.1 OF%D2.1.2;

set x %B0001110100010101, set y %B0000011111000001, set AS 0, eval, output;
set x %B1111111111111110, set y %B0000000000000001, set AS 0, eval, output;
set x %B0000011111000000, set y %B0000000001111111, set AS 1, eval, output;