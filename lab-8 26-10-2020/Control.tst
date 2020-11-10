load HackComputer.hdl,
output-file HackComputerControl.out,
compare-to HackComputerControl.cmp,
output-list time%S1.4.1 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1;

ROM32K load Control.hack,

set RAM64[16] 5,
set RAM64[17] 2,
output;

repeat 8 {
    tick, tock, output;
}

set reset 1,
set RAM64[18] 0,
tick, tock, output;

set reset 0,
set RAM64[16] 10,
set RAM64[17] 20,
output;

repeat 8 {
    tick, tock, output;
}