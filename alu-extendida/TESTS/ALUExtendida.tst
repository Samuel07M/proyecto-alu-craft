load ALUExtendida.hdl,
compare-to ALUExtendida.cmp,
output-list x%B1.16.1 y%B1.16.1 a zx nx zy ny f no out%B1.16.1 zr ng;

// XOR - código 010110

// 0 XOR 0 = 0
set x %B0000000000000000,
set y %B0000000000000000,
set a 1,
set zx 0, set nx 1, set zy 0, set ny 1, set f 1, set no 0,
eval,
output;

// 0 XOR 1 = 1
set x %B0000000000000000,
set y %B0000000000000001,
set a 1,
set zx 0, set nx 1, set zy 0, set ny 1, set f 1, set no 0,
eval,
output;

// 1 XOR 0 = 1
set x %B0000000000000001,
set y %B0000000000000000,
set a 1,
set zx 0, set nx 1, set zy 0, set ny 1, set f 1, set no 0,
eval,
output;

// 1 XOR 1 = 0
set x %B0000000000000001,
set y %B0000000000000001,
set a 1,
set zx 0, set nx 1, set zy 0, set ny 1, set f 1, set no 0,
eval,
output;

// NAND - código 000001

// 0 NAND 0 = 1
set x %B0000000000000000,
set y %B0000000000000000,
set a 1,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 1,
eval,
output;

// 0 NAND 1 = 1
set x %B0000000000000000,
set y %B0000000000000001,
set a 1,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 1,
eval,
output;

// 1 NAND 0 = 1
set x %B0000000000000001,
set y %B0000000000000000,
set a 1,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 1,
eval,
output;

// 1 NAND 1 = 0
set x %B0000000000000001,
set y %B0000000000000001,
set a 1,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 1,
eval,
output;

// NOR - código 110100

// 0 NOR 0 = 1
set x %B0000000000000000,
set y %B0000000000000000,
set a 1,
set zx 1, set nx 1, set zy 0, set ny 1, set f 0, set no 0,
eval,
output;

// 0 NOR 1 = 0
set x %B0000000000000000,
set y %B0000000000000001,
set a 1,
set zx 1, set nx 1, set zy 0, set ny 1, set f 0, set no 0,
eval,
output;

// 1 NOR 0 = 0
set x %B0000000000000001,
set y %B0000000000000000,
set a 1,
set zx 1, set nx 1, set zy 0, set ny 1, set f 0, set no 0,
eval,
output;

// 1 NOR 1 = 0
set x %B0000000000000001,
set y %B0000000000000001,
set a 1,
set zx 1, set nx 1, set zy 0, set ny 1, set f 0, set no 0,
eval,
output;

// EQ - código 101000

// x = y -> 1
set x %B0000000000000101,
set y %B0000000000000101,
set a 1,
set zx 1, set nx 0, set zy 1, set ny 0, set f 0, set no 0,
eval,
output;

// x != y -> 0
set x %B0000000000000101,
set y %B0000000000000110,
set a 1,
set zx 1, set nx 0, set zy 1, set ny 0, set f 0, set no 0,
eval,
output;

// ABS - código 100010

// positivo: |5| = 5
set x %B0000000000000101,
set y %B0000000000000000,
set a 1,
set zx 1, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
eval,
output;

// negativo: |-5| = 5
set x %B1111111111111011,
set y %B0000000000000000,
set a 1,
set zx 1, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
eval,
output;

// cero: |0| = 0
set x %B0000000000000000,
set y %B0000000000000000,
set a 1,
set zx 1, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
eval,
output;

// valor máximo representable: |32767| = 32767
set x %B0111111111111111,
set y %B0000000000000000,
set a 1,
set zx 1, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
eval,
output;
