load CLA164Hu.hdl,
output-file CLA164Hu.out,
//compare-to CLA164Hu.cmp,
output-list a%X2.4.2 b%X2.4.2 s%X2.4.2 of%B2.1.2;

set a %X0fa1, set b %X0099, set ci 0, eval, output;
set a %Xfffe, set b %X0f0f, set ci 0, eval, output;
set a %X0fa1, set b %X01b7, set ci 1, eval, output;
set a %Xfffe, set b %X0f0f, set ci 1, eval, output;