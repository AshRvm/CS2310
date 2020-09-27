load ALU8.hdl,
output-file ALU8.out,
compare-to ALU8.cmp,
output-list x%B1.8.1 y%B1.8.1 us%B1.1.1 opcode%B1.3.1 z%B1.8.1 of%B1.1.1 eq%B1.1.1;

//No Operation
set x %B01100100, set y %B01111000, set opcode %B000, eval, output;
set x %B10101010, set y %B00000000, set opcode %B000, eval, output;

// ----------------------------------------------------------------------------


//And
set x %B01100100, set y %B01111000, set opcode %B001, eval, output;
set x %B00111110, set y %B01111011, set opcode %B001, eval, output;

// ----------------------------------------------------------------------------

//Or
set x %B10101010, set y %B01010101, set opcode %B010, eval, output;
set x %B00000000, set y %B11011011, set opcode %B010, eval, output;

// ----------------------------------------------------------------------------

//Xor
set x %B10101010, set y %B01010101, set opcode %B011, eval, output;
set x %B01101100, set y %B11100110, set opcode %B011, eval, output;

// ----------------------------------------------------------------------------

//Addition_Unsigned
set x %B01100100, set y %B01111000, set us %B0, set opcode %B100, eval, output;
set x %B11111111, set y %D00000010, set us %B0, set opcode %B100, eval, output;
set x %B00100100, set y %B00100100, set us %B0, set opcode %B100, eval, output;

//Addition_Signed
set x %B00110010, set y %B00111100, set us %B1, set opcode %B100, eval, output;
set x %B01100100, set y %B01111000, set us %B1, set opcode %B100, eval, output;
set x %B00100100, set y %B00100100, set us %B1, set opcode %B100, eval, output;

// ----------------------------------------------------------------------------

//Subtraction_Unsigned
set x %B01111000, set y %B01100100, set us %B0, set opcode %B101, eval, output;
set x %B00110011, set y %B00110011, set us %B0, set opcode %B101, eval, output;

//Subtraction_Signed
set x %B11110100, set y %B01010100, set us %B1, set opcode %B101, eval, output;
set x %B01111111, set y %B11111110, set us %B1, set opcode %B101, eval, output;
set x %B00110011, set y %B00110011, set us %B0, set opcode %B101, eval, output;

// ----------------------------------------------------------------------------

//Multiplication_Unsigned
set x %B00000010, set y %B00001101, set us %B0, set opcode %B110, eval, output;
set x %B00001111, set y %B00100010, set us %B0, set opcode %B110, eval, output;
set x %B00000011, set y %B00000011, set us %B0, set opcode %B110, eval, output;

// ----------------------------------------------------------------------------

//Multiplication_Signed
set x %B11011110, set y %B00001101, set us %B1, set opcode %B111, eval, output;
set x %B00011011, set y %B11111101, set us %B1, set opcode %B111, eval, output;
set x %B11111100, set y %B11111100, set us %B1, set opcode %B111, eval, output;

// ----------------------------------------------------------------------------