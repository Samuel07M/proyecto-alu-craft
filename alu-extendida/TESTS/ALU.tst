load ALU.hdl,
compare-to ALU.cmp,
output-list x%B1.16.1 y%B1.16.1 zx nx zy ny f no out%B1.16.1 zr ng;

// --- XOR (Código: 010110) ---
// 0 XOR 0
set x %B0000000000000000, set y %B0000000000000000, set zx 0, set nx 1, set zy 0, set ny 1, set f 1, set no 0, eval, output;
// 0 XOR 1
set x %B0000000000000000, set y %B1111111111111111, set zx 0, set nx 1, set zy 0, set ny 1, set f 1, set no 0, eval, output;
// 1 XOR 0
set x %B1111111111111111, set y %B0000000000000000, set zx 0, set nx 1, set zy 0, set ny 1, set f 1, set no 0, eval, output;
// 1 XOR 1
set x %B1111111111111111, set y %B1111111111111111, set zx 0, set nx 1, set zy 0, set ny 1, set f 1, set no 0, eval, output;

// --- NAND (Código: 000001) ---
// 0 NAND 0
set x %B0000000000000000, set y %B0000000000000000, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 1, eval, output;
// 0 NAND 1
set x %B0000000000000000, set y %B1111111111111111, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 1, eval, output;
// 1 NAND 0
set x %B1111111111111111, set y %B0000000000000000, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 1, eval, output;
// 1 NAND 1
set x %B1111111111111111, set y %B1111111111111111, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 1, eval, output;

// --- NOR (Código: 110100) ---
// 0 NOR 0
set x %B0000000000000000, set y %B0000000000000000, set zx 1, set nx 1, set zy 0, set ny 1, set f 0, set no 0, eval, output;
// 0 NOR 1
set x %B0000000000000000, set y %B1111111111111111, set zx 1, set nx 1, set zy 0, set ny 1, set f 0, set no 0, eval, output;
// 1 NOR 0
set x %B1111111111111111, set y %B0000000000000000, set zx 1, set nx 1, set zy 0, set ny 1, set f 0, set no 0, eval, output;
// 1 NOR 1
set x %B1111111111111111, set y %B1111111111111111, set zx 1, set nx 1, set zy 0, set ny 1, set f 0, set no 0, eval, output;

// --- EQ (Código: 101000) ---
// x = y
set x %B0000000000010100, set y %B0000000000010100, set zx 1, set nx 0, set zy 1, set ny 0, set f 0, set no 0, eval, output;
// x != y
set x %B0000000000010100, set y %B0000000000000011, set zx 1, set nx 0, set zy 1, set ny 0, set f 0, set no 0, eval, output;

// --- ABS (Código: 100010) ---
// positivo (x = 5)
set x %B0000000000000101, set y %B0000000000000000, set zx 1, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;
// negativo (x = -5)
set x %B1111111111111011, set y %B0000000000000000, set zx 1, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;
// cero (x = 0)
set x %B0000000000000000, set y %B0000000000000000, set zx 1, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;
// valor máximo representable negativo (-32768)
set x %B1000000000000000, set y %B0000000000000000, set zx 1, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;