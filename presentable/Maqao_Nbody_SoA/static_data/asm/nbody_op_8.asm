address;source_location;insn;indent
0x216e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM10;
0x2173;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%RDI,%RDX,8),%XMM10;
0x2179;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	21be <resolve_collisions+0x2be>;
0x217b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM11;
0x2182;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM11;
0x2188;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	21be <resolve_collisions+0x2be>;
0x218a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM14;
0x2190;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM12;
0x2197;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM13;
0x219e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM14,-0x8(%R10,%RAX,8);
0x21a5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM15;
0x21ab;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM15,-0x8(%R9,%RAX,8);
0x21b2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM12,(%R10,%RDX,8);
0x21b8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM13,(%R9,%RDX,8);
0x21be;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM1;
0x21c2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	0x8(%RDI,%RDX,8),%XMM1;
0x21c8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;LEA	0x1(%RDX),%RCX;
0x21cc;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2211 <resolve_collisions+0x311>;
0x21ce;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM0;
0x21d5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RCX,8),%XMM0;
0x21db;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2211 <resolve_collisions+0x311>;
0x21dd;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RCX,8),%XMM5;
0x21e3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM3;
0x21ea;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM4;
0x21f1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM5,-0x8(%R10,%RAX,8);
0x21f8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RCX,8),%XMM6;
0x21fe;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM6,-0x8(%R9,%RAX,8);
0x2205;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM3,(%R10,%RCX,8);
0x220b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM4,(%R9,%RCX,8);
0x2211;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM7;
0x2215;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	0x8(%RDI,%RCX,8),%XMM7;
0x221b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;LEA	0x1(%RCX),%RDX;
0x221f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2264 <resolve_collisions+0x364>;
0x2221;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM8;
0x2228;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM8;
0x222e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2264 <resolve_collisions+0x364>;
0x2230;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM2;
0x2236;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM9;
0x223d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM10;
0x2244;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM2,-0x8(%R10,%RAX,8);
0x224b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM11;
0x2251;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM11,-0x8(%R9,%RAX,8);
0x2258;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM9,(%R10,%RDX,8);
0x225e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM10,(%R9,%RDX,8);
0x2264;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM12;
0x2269;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	0x10(%RDI,%RCX,8),%XMM12;
0x2270;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;LEA	0x2(%RCX),%RDX;
0x2274;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	22b9 <resolve_collisions+0x3b9>;
0x2276;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM13;
0x227d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM13;
0x2283;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	22b9 <resolve_collisions+0x3b9>;
0x2285;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM1;
0x228b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM14;
0x2292;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM15;
0x2299;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM1,-0x8(%R10,%RAX,8);
0x22a0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM0;
0x22a6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM0,-0x8(%R9,%RAX,8);
0x22ad;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM14,(%R10,%RDX,8);
0x22b3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM15,(%R9,%RDX,8);
0x22b9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM3;
0x22bd;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	0x18(%RDI,%RCX,8),%XMM3;
0x22c3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;LEA	0x3(%RCX),%RDX;
0x22c7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	230c <resolve_collisions+0x40c>;
0x22c9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM4;
0x22d0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM4;
0x22d6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	230c <resolve_collisions+0x40c>;
0x22d8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM7;
0x22de;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM5;
0x22e5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM6;
0x22ec;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM7,-0x8(%R10,%RAX,8);
0x22f3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM8;
0x22f9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM8,-0x8(%R9,%RAX,8);
0x2300;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM5,(%R10,%RDX,8);
0x2306;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM6,(%R9,%RDX,8);
0x230c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM9;
0x2311;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	0x20(%RDI,%RCX,8),%XMM9;
0x2318;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;LEA	0x4(%RCX),%RDX;
0x231c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2361 <resolve_collisions+0x461>;
0x231e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM10;
0x2325;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM10;
0x232b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2361 <resolve_collisions+0x461>;
0x232d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM2;
0x2333;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM11;
0x233a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM12;
0x2341;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM2,-0x8(%R10,%RAX,8);
0x2348;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM13;
0x234e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM13,-0x8(%R9,%RAX,8);
0x2355;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM11,(%R10,%RDX,8);
0x235b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM12,(%R9,%RDX,8);
0x2361;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM14;
0x2366;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	0x28(%RDI,%RCX,8),%XMM14;
0x236d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;LEA	0x5(%RCX),%RDX;
0x2371;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	23b6 <resolve_collisions+0x4b6>;
0x2373;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM15;
0x237a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM15;
0x2380;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	23b6 <resolve_collisions+0x4b6>;
0x2382;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM3;
0x2388;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM1;
0x238f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM0;
0x2396;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM3,-0x8(%R10,%RAX,8);
0x239d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM4;
0x23a3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM4,-0x8(%R9,%RAX,8);
0x23aa;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM1,(%R10,%RDX,8);
0x23b0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM0,(%R9,%RDX,8);
0x23b6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM5;
0x23ba;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	0x30(%RDI,%RCX,8),%XMM5;
0x23c0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;LEA	0x6(%RCX),%RDX;
0x23c4;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2409 <resolve_collisions+0x509>;
0x23c6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM6;
0x23cd;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM6;
0x23d3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2409 <resolve_collisions+0x509>;
0x23d5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM9;
0x23db;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM7;
0x23e2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM8;
0x23e9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM9,-0x8(%R10,%RAX,8);
0x23f0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM10;
0x23f6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM10,-0x8(%R9,%RAX,8);
0x23fd;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM7,(%R10,%RDX,8);
0x2403;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM8,(%R9,%RDX,8);
0x2409;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;LEA	0x7(%RCX),%RDX;
0x240d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;CMP	%EDX,%R11D;
0x2410;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;JG	216e <resolve_collisions+0x26e>;