load CLA16Unsigned.hdl,
output-file CLA16Unsigned.out,
compare-to CLA16Unsigned.cmp,
output-list a%B1.16.1 b%B1.16.1 cin s%D1.5.1 overflow%B6.1.6;

set a %B0001110100010101, set b %B0000011111000001, set cin 0, eval, output;
set a %B1111111111111110, set b %B0000000000000001, set cin 0, eval, output;
set a %B0000011111000000, set b %B0000000001111111, set cin 1, eval, output;