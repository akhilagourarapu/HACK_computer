load Computer.hdl,
compare-to ComputerAssignment.cmp,
output-file ComputerAssignment.out,
output-list time%S1.6.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 RAM16K[16]%D1.7.2 RAM16K[17]%D1.7.2 RAM16K[18]%D1.7.2 RAM16K[19]%D1.7.2;

ROM32K load assignment.hack,

set RAM16K[16] 10,
set RAM16K[17] 10,
set RAM16K[18] 15,
output;

repeat 14 {
    tick, tock, output;
}
