load CLA164u.hdl,
output-file CLA164u.out,
//compare-to CLA164u.cmp,
output-list a%B1.16.1 b%B1.16.1 AS%B2.1.2 s%B1.16.1 of%B6.1.6;

set a %B0001110100010101, set b %B0000011111000001, set AS 0, eval, output;
set a %B1111111111111110, set b %B0000000001100001, set AS 0, eval, output;
set a %B0000011111000000, set b %B0000000001111111, set AS 1, eval, output;