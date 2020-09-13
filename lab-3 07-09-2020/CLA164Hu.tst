load CLA164Hu.hdl,
output-file CLA164Hu.out,
compare-to CLA164Hu.cmp,
output-list x%X2.4.2 y%X2.4.2 s%X2.4.2 of%B2.1.2;

set x %X0fa1, set y %X0099, set ci 0, eval, output;
set x %Xfffe, set y %X0f0f, set ci 0, eval, output;
set x %X0fa1, set y %X01b7, set ci 1, eval, output;
set x %Xfffe, set y %X0f0f, set ci 1, eval, output;