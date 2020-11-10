load HackComputer.hdl,
output-file HackComputerLoop.out,
compare-to HackComputerLoop.cmp,
output-list time%S1.5.1 RAM64[16]%D1.4.1 RAM64[17]%D1.5.1;

ROM32K load Loop.hack;

repeat 1396 {
    tick, tock, output;
}