load Computer.hdl,
compare-to ComputerIfcondition.cmp,
output-file ComputerIfcondition.out,
output-list time%S1.6.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 RAM16K[16]%D1.7.2 RAM16K[17]%D1.7.2 RAM16K[18]%D1.7.2;

ROM32K load ifcondition.hack,

set RAM16K[16] 19,
set RAM16K[17] 10,
output;

repeat 14 {
    tick, tock, output;
}

set reset 1,
tick, tock, output;

set reset 0,
set RAM16K[16] 5,
set RAM16K[17] 11,
output;

repeat 14 {
    tick, tock, output;
}
