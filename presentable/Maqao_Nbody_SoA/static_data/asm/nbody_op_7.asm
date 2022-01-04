address;source_location;insn;indent
0x1f48;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;CMP	%EAX,%R11D;
0x1f4b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;JLE	2416 <resolve_collisions+0x516>;
0x1f51;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;MOV	%R11D,%ECX;
0x1f54;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;MOV	%RAX,%RDX;
0x1f57;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;SUB	%EAX,%ECX;
0x1f59;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;AND	$0x7,%ECX;
0x1f5c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;JE	216e <resolve_collisions+0x26e>;
0x1f62;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;CMP	$0x1,%ECX;
0x1f65;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;JE	2113 <resolve_collisions+0x213>;
0x1f6b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;CMP	$0x2,%ECX;
0x1f6e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;JE	20bf <resolve_collisions+0x1bf>;
0x1f74;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;CMP	$0x3,%ECX;
0x1f77;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;JE	206b <resolve_collisions+0x16b>;
0x1f7d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;CMP	$0x4,%ECX;
0x1f80;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;JE	2019 <resolve_collisions+0x119>;
0x1f86;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;CMP	$0x5,%ECX;
0x1f89;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;JE	1fc5 <resolve_collisions+0xc5>;
0x1f8b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;CMP	$0x6,%ECX;
0x1f8e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;JE	1fa3 <resolve_collisions+0xa3>;
0x1f90;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM0;
0x1f94;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%RDI,%RAX,8),%XMM0;
0x1f99;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JE	2462 <resolve_collisions+0x562>;
0x1f9f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;LEA	0x1(%RAX),%RDX;
0x1fa3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM6;
0x1fa7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%RDI,%RDX,8),%XMM6;
0x1fac;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	1fc1 <resolve_collisions+0xc1>;
0x1fae;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM7;
0x1fb5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM7;
0x1fbb;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JE	2429 <resolve_collisions+0x529>;
0x1fc1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;ADD	$0x1,%RDX;
0x1fc5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM12;
0x1fca;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%RDI,%RDX,8),%XMM12;
0x1fd0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2015 <resolve_collisions+0x115>;
0x1fd2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM13;
0x1fd9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM13;
0x1fdf;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2015 <resolve_collisions+0x115>;
0x1fe1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM0;
0x1fe7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM14;
0x1fee;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM15;
0x1ff5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM0,-0x8(%R10,%RAX,8);
0x1ffc;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM1;
0x2002;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM1,-0x8(%R9,%RAX,8);
0x2009;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM14,(%R10,%RDX,8);
0x200f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM15,(%R9,%RDX,8);
0x2015;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;ADD	$0x1,%RDX;
0x2019;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM3;
0x201d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%RDI,%RDX,8),%XMM3;
0x2022;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2067 <resolve_collisions+0x167>;
0x2024;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM4;
0x202b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM4;
0x2031;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2067 <resolve_collisions+0x167>;
0x2033;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM2;
0x2039;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM5;
0x2040;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM6;
0x2047;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM2,-0x8(%R10,%RAX,8);
0x204e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM7;
0x2054;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM7,-0x8(%R9,%RAX,8);
0x205b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM5,(%R10,%RDX,8);
0x2061;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM6,(%R9,%RDX,8);
0x2067;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;ADD	$0x1,%RDX;
0x206b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM8;
0x2070;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%RDI,%RDX,8),%XMM8;
0x2076;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	20bb <resolve_collisions+0x1bb>;
0x2078;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM9;
0x207f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM9;
0x2085;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	20bb <resolve_collisions+0x1bb>;
0x2087;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM12;
0x208d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM10;
0x2094;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM11;
0x209b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM12,-0x8(%R10,%RAX,8);
0x20a2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM13;
0x20a8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM13,-0x8(%R9,%RAX,8);
0x20af;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM10,(%R10,%RDX,8);
0x20b5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM11,(%R9,%RDX,8);
0x20bb;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;ADD	$0x1,%RDX;
0x20bf;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM14;
0x20c4;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%RDI,%RDX,8),%XMM14;
0x20ca;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	210f <resolve_collisions+0x20f>;
0x20cc;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM15;
0x20d3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM15;
0x20d9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	210f <resolve_collisions+0x20f>;
0x20db;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM3;
0x20e1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM1;
0x20e8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM0;
0x20ef;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM3,-0x8(%R10,%RAX,8);
0x20f6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM4;
0x20fc;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM4,-0x8(%R9,%RAX,8);
0x2103;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM1,(%R10,%RDX,8);
0x2109;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM0,(%R9,%RDX,8);
0x210f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;ADD	$0x1,%RDX;
0x2113;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM5;
0x2117;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%RDI,%RDX,8),%XMM5;
0x211c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2161 <resolve_collisions+0x261>;
0x211e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM6;
0x2125;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM6;
0x212b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2161 <resolve_collisions+0x261>;
0x212d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM2;
0x2133;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM7;
0x213a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM8;
0x2141;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM2,-0x8(%R10,%RAX,8);
0x2148;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM9;
0x214e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM9,-0x8(%R9,%RAX,8);
0x2155;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM7,(%R10,%RDX,8);
0x215b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM8,(%R9,%RDX,8);
0x2161;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;ADD	$0x1,%RDX;
0x2165;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;CMP	%EDX,%R11D;
0x2168;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;JLE	2416 <resolve_collisions+0x516>;
0x216e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM10;  (8) 
0x2173;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%RDI,%RDX,8),%XMM10;  (8) 
0x2179;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	21be <resolve_collisions+0x2be>;  (8) 
0x217b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM11;  (8) 
0x2182;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM11;  (8) 
0x2188;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	21be <resolve_collisions+0x2be>;  (8) 
0x218a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM14;  (8) 
0x2190;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM12;  (8) 
0x2197;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM13;  (8) 
0x219e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM14,-0x8(%R10,%RAX,8);  (8) 
0x21a5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM15;  (8) 
0x21ab;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM15,-0x8(%R9,%RAX,8);  (8) 
0x21b2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM12,(%R10,%RDX,8);  (8) 
0x21b8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM13,(%R9,%RDX,8);  (8) 
0x21be;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM1;  (8) 
0x21c2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	0x8(%RDI,%RDX,8),%XMM1;  (8) 
0x21c8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;LEA	0x1(%RDX),%RCX;  (8) 
0x21cc;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2211 <resolve_collisions+0x311>;  (8) 
0x21ce;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM0;  (8) 
0x21d5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RCX,8),%XMM0;  (8) 
0x21db;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2211 <resolve_collisions+0x311>;  (8) 
0x21dd;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RCX,8),%XMM5;  (8) 
0x21e3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM3;  (8) 
0x21ea;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM4;  (8) 
0x21f1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM5,-0x8(%R10,%RAX,8);  (8) 
0x21f8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RCX,8),%XMM6;  (8) 
0x21fe;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM6,-0x8(%R9,%RAX,8);  (8) 
0x2205;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM3,(%R10,%RCX,8);  (8) 
0x220b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM4,(%R9,%RCX,8);  (8) 
0x2211;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM7;  (8) 
0x2215;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	0x8(%RDI,%RCX,8),%XMM7;  (8) 
0x221b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;LEA	0x1(%RCX),%RDX;  (8) 
0x221f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2264 <resolve_collisions+0x364>;  (8) 
0x2221;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM8;  (8) 
0x2228;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM8;  (8) 
0x222e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2264 <resolve_collisions+0x364>;  (8) 
0x2230;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM2;  (8) 
0x2236;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM9;  (8) 
0x223d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM10;  (8) 
0x2244;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM2,-0x8(%R10,%RAX,8);  (8) 
0x224b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM11;  (8) 
0x2251;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM11,-0x8(%R9,%RAX,8);  (8) 
0x2258;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM9,(%R10,%RDX,8);  (8) 
0x225e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM10,(%R9,%RDX,8);  (8) 
0x2264;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM12;  (8) 
0x2269;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	0x10(%RDI,%RCX,8),%XMM12;  (8) 
0x2270;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;LEA	0x2(%RCX),%RDX;  (8) 
0x2274;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	22b9 <resolve_collisions+0x3b9>;  (8) 
0x2276;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM13;  (8) 
0x227d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM13;  (8) 
0x2283;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	22b9 <resolve_collisions+0x3b9>;  (8) 
0x2285;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM1;  (8) 
0x228b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM14;  (8) 
0x2292;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM15;  (8) 
0x2299;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM1,-0x8(%R10,%RAX,8);  (8) 
0x22a0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM0;  (8) 
0x22a6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM0,-0x8(%R9,%RAX,8);  (8) 
0x22ad;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM14,(%R10,%RDX,8);  (8) 
0x22b3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM15,(%R9,%RDX,8);  (8) 
0x22b9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM3;  (8) 
0x22bd;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	0x18(%RDI,%RCX,8),%XMM3;  (8) 
0x22c3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;LEA	0x3(%RCX),%RDX;  (8) 
0x22c7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	230c <resolve_collisions+0x40c>;  (8) 
0x22c9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM4;  (8) 
0x22d0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM4;  (8) 
0x22d6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	230c <resolve_collisions+0x40c>;  (8) 
0x22d8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM7;  (8) 
0x22de;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM5;  (8) 
0x22e5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM6;  (8) 
0x22ec;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM7,-0x8(%R10,%RAX,8);  (8) 
0x22f3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM8;  (8) 
0x22f9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM8,-0x8(%R9,%RAX,8);  (8) 
0x2300;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM5,(%R10,%RDX,8);  (8) 
0x2306;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM6,(%R9,%RDX,8);  (8) 
0x230c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM9;  (8) 
0x2311;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	0x20(%RDI,%RCX,8),%XMM9;  (8) 
0x2318;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;LEA	0x4(%RCX),%RDX;  (8) 
0x231c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2361 <resolve_collisions+0x461>;  (8) 
0x231e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM10;  (8) 
0x2325;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM10;  (8) 
0x232b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2361 <resolve_collisions+0x461>;  (8) 
0x232d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM2;  (8) 
0x2333;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM11;  (8) 
0x233a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM12;  (8) 
0x2341;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM2,-0x8(%R10,%RAX,8);  (8) 
0x2348;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM13;  (8) 
0x234e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM13,-0x8(%R9,%RAX,8);  (8) 
0x2355;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM11,(%R10,%RDX,8);  (8) 
0x235b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM12,(%R9,%RDX,8);  (8) 
0x2361;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM14;  (8) 
0x2366;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	0x28(%RDI,%RCX,8),%XMM14;  (8) 
0x236d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;LEA	0x5(%RCX),%RDX;  (8) 
0x2371;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	23b6 <resolve_collisions+0x4b6>;  (8) 
0x2373;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM15;  (8) 
0x237a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM15;  (8) 
0x2380;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	23b6 <resolve_collisions+0x4b6>;  (8) 
0x2382;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM3;  (8) 
0x2388;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM1;  (8) 
0x238f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM0;  (8) 
0x2396;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM3,-0x8(%R10,%RAX,8);  (8) 
0x239d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM4;  (8) 
0x23a3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM4,-0x8(%R9,%RAX,8);  (8) 
0x23aa;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM1,(%R10,%RDX,8);  (8) 
0x23b0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM0,(%R9,%RDX,8);  (8) 
0x23b6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	(%RSI),%XMM5;  (8) 
0x23ba;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	0x30(%RDI,%RCX,8),%XMM5;  (8) 
0x23c0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;LEA	0x6(%RCX),%RDX;  (8) 
0x23c4;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2409 <resolve_collisions+0x509>;  (8) 
0x23c6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM6;  (8) 
0x23cd;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RDX,8),%XMM6;  (8) 
0x23d3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	2409 <resolve_collisions+0x509>;  (8) 
0x23d5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM9;  (8) 
0x23db;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM7;  (8) 
0x23e2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM8;  (8) 
0x23e9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM9,-0x8(%R10,%RAX,8);  (8) 
0x23f0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM10;  (8) 
0x23f6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM10,-0x8(%R9,%RAX,8);  (8) 
0x23fd;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM7,(%R10,%RDX,8);  (8) 
0x2403;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM8,(%R9,%RDX,8);  (8) 
0x2409;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;LEA	0x7(%RCX),%RDX;  (8) 
0x240d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;CMP	%EDX,%R11D;  (8) 
0x2410;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:70;JG	216e <resolve_collisions+0x26e>;  (8) 
0x2416;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:69;ADD	$0x1,%RAX;
0x241a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:69;ADD	$0x8,%RSI;
0x241e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:69;CMP	%RBX,%RAX;
0x2421;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:69;JNE	1f48 <resolve_collisions+0x48>;
0x2429;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RDX,8),%XMM10;
0x242f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM8;
0x2436;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM9;
0x243d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM10,-0x8(%R10,%RAX,8);
0x2444;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RDX,8),%XMM11;
0x244a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM11,-0x8(%R9,%RAX,8);
0x2451;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM8,(%R10,%RDX,8);
0x2457;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM9,(%R9,%RDX,8);
0x245d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;JMP	1fc1 <resolve_collisions+0xc1>;
0x2462;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;MOVSD	-0x8(%R8,%RAX,8),%XMM1;
0x2469;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;COMISD	(%R8,%RAX,8),%XMM1;
0x246f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:71;JNE	1f9f <resolve_collisions+0x9f>;
0x2475;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	(%R10,%RAX,8),%XMM2;
0x247b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:74;MOVSD	-0x8(%R10,%RAX,8),%XMM3;
0x2482;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:75;MOVSD	-0x8(%R9,%RAX,8),%XMM4;
0x2489;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:76;MOVSD	%XMM2,-0x8(%R10,%RAX,8);
0x2490;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	(%R9,%RAX,8),%XMM5;
0x2496;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:77;MOVSD	%XMM5,-0x8(%R9,%RAX,8);
0x249d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:78;MOVSD	%XMM3,(%R10,%RAX,8);
0x24a3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;MOVSD	%XMM4,(%R9,%RAX,8);
0x24a9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:79;JMP	1f9f <resolve_collisions+0x9f>;
