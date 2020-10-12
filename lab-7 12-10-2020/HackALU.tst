load HackALU.hdl,
output-file HackALU.out,
compare-to HackALU.cmp,
output-list x%B1.16.1 zx nx y%B1.16.1 zy ny f no out%B1.16.1 zr ng;

//x +ve y +ve, x > y
//x: 1200, y: 63
set x %B0000010010110000, set y %B0000000000111111,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, eval, output; //output: 0
set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output; //output: 1
set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0, eval, output; //output: -1
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0, eval, output; //output: x
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0, eval, output; //output: y
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1, eval, output; //output: !x
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1, eval, output; //output: !y
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, eval, output; //output: -x
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output; //output: -y
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output; //output: x+1
set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1, eval, output; //output: y+1
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0, eval, output; //output: x-1
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0, eval, output; //output: y-1
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output; //output: x+y
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output; //output: x-y
set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1, eval, output; //output: y-x
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, eval, output; //output: x&y
set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1, eval, output; //output: x|y

//x +ve y -ve |x| > |y|
//x: 2323, y: -768
set x %B0000100100010011, set y %B1111110100000000,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, eval, output; //output: 0
set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output; //output: 1
set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0, eval, output; //output: -1
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0, eval, output; //output: x
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0, eval, output; //output: y
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1, eval, output; //output: !x
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1, eval, output; //output: !y
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, eval, output; //output: -x
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output; //output: -y
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output; //output: x+1
set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1, eval, output; //output: y+1
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0, eval, output; //output: x-1
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0, eval, output; //output: y-1
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output; //output: x+y
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output; //output: x-y
set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1, eval, output; //output: y-x
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, eval, output; //output: x&y
set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1, eval, output; //output: x|y