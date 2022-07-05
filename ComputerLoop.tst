load Computer.hdl,
compare-to ComputerLoop.cmp,
output-file ComputerLoop.out,
output-list time%S1.6.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 RAM16K[16]%D1.7.2 RAM16K[17]%D1.7.2 RAM16K[18]%D1.7.2;

ROM32K load loop.hack,

set RAM16K[18] 100;
output;

repeat 1400 {
    tick, tock, output;
}

