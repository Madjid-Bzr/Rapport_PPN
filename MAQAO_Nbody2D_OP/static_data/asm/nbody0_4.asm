address;source_location;insn;indent
0x1800;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;ADD	$0x1,%R9D;
0x1804;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;CMP	%EBP,%R9D;
0x1807;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;JGE	1cfe <main+0xa9e>;
0x180d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;MOV	%R11D,%ESI;
0x1810;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;MOV	%R10,%RDI;
0x1813;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;MOV	0x4836(%RIP),%RDX;
0x181a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;SUB	%R9D,%ESI;
0x181d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;SAL	$0x4,%RDI;
0x1821;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;LEA	0x2(%R10,%RSI,1),%R8;
0x1826;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;LEA	0x10(%RDI),%RAX;
0x182a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;SAL	$0x4,%R8;
0x182e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;LEA	(%RDX,%RDI,1),%RCX;
0x1832;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;MOV	%R8,%R12;
0x1835;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;SUB	%RAX,%R12;
0x1838;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;SUB	$0x10,%R12;
0x183c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;SHR	$0x4,%R12;
0x1840;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;ADD	$0x1,%R12;
0x1844;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;AND	$0x7,%R12D;
0x1848;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;JE	1aa2 <main+0x842>;
0x184e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;CMP	$0x1,%R12;
0x1852;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;JE	1a4c <main+0x7ec>;
0x1858;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;CMP	$0x2,%R12;
0x185c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;JE	19fd <main+0x79d>;
0x1862;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;CMP	$0x3,%R12;
0x1866;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;JE	19b7 <main+0x757>;
0x186c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;CMP	$0x4,%R12;
0x1870;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;JE	196a <main+0x70a>;
0x1876;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;CMP	$0x5,%R12;
0x187a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;JE	191f <main+0x6bf>;
0x1880;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;CMP	$0x6,%R12;
0x1884;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;JE	18d3 <main+0x673>;
0x1886;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM13;
0x188b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x10(%RDX,%RDI,1),%XMM13;
0x1892;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	18cf <main+0x66f>;
0x1894;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM14;
0x189a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x8(%RDX,%RAX,1),%XMM14;
0x18a1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	18cf <main+0x66f>;
0x18a3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x479e(%RIP),%R13;
0x18aa;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%R13,%RDI,1),%RSI;
0x18af;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%RAX,%R13;
0x18b2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%RSI),%XMM15;
0x18b7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%RSI),%XMM0;
0x18bc;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%R13),%XMM3;
0x18c2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM0,%XMM15;
0x18c7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM3,(%RSI);
0x18ca;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM15,(%R13);
0x18cf;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;ADD	$0x10,%RAX;
0x18d3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM2;
0x18d7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	(%RDX,%RAX,1),%XMM2;
0x18dc;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	191b <main+0x6bb>;
0x18de;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM4;
0x18e3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x8(%RDX,%RAX,1),%XMM4;
0x18e9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	191b <main+0x6bb>;
0x18eb;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x4756(%RIP),%R13;
0x18f2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%R13,%RDI,1),%R12;
0x18f7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%RAX,%R13;
0x18fa;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%R12),%XMM5;
0x1900;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%R12),%XMM1;
0x1907;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%R13),%XMM6;
0x190d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM1,%XMM5;
0x1911;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM6,(%R12);
0x1916;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM5,(%R13);
0x191b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;ADD	$0x10,%RAX;
0x191f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM8;
0x1924;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	(%RDX,%RAX,1),%XMM8;
0x192a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1966 <main+0x706>;
0x192c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM7;
0x1931;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x8(%RDX,%RAX,1),%XMM7;
0x1937;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1966 <main+0x706>;
0x1939;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x4708(%RIP),%RSI;
0x1940;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%RSI,%RDI,1),%R13;
0x1944;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%RAX,%RSI;
0x1947;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%R13),%XMM9;
0x194d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%R13),%XMM10;
0x1953;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%RSI),%XMM11;
0x1958;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM10,%XMM9;
0x195d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM11,(%R13);
0x1962;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM9,(%RSI);
0x1966;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;ADD	$0x10,%RAX;
0x196a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM12;
0x196f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	(%RDX,%RAX,1),%XMM12;
0x1975;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	19b3 <main+0x753>;
0x1977;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM13;
0x197d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x8(%RDX,%RAX,1),%XMM13;
0x1984;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	19b3 <main+0x753>;
0x1986;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x46bb(%RIP),%RSI;
0x198d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%RSI,%RDI,1),%R12;
0x1991;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%RAX,%RSI;
0x1994;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%R12),%XMM14;
0x199a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%R12),%XMM15;
0x19a1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%RSI),%XMM0;
0x19a5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM15,%XMM14;
0x19aa;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM0,(%R12);
0x19af;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM14,(%RSI);
0x19b3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;ADD	$0x10,%RAX;
0x19b7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM3;
0x19bb;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	(%RDX,%RAX,1),%XMM3;
0x19c0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	19f9 <main+0x799>;
0x19c2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM2;
0x19c7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x8(%RDX,%RAX,1),%XMM2;
0x19cd;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	19f9 <main+0x799>;
0x19cf;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x4672(%RIP),%R13;
0x19d6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%R13,%RDI,1),%RSI;
0x19db;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%RAX,%R13;
0x19de;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%RSI),%XMM4;
0x19e2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%RSI),%XMM5;
0x19e7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%R13),%XMM1;
0x19ed;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM5,%XMM4;
0x19f1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM1,(%RSI);
0x19f4;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM4,(%R13);
0x19f9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;ADD	$0x10,%RAX;
0x19fd;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM6;
0x1a01;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	(%RDX,%RAX,1),%XMM6;
0x1a06;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1a48 <main+0x7e8>;
0x1a08;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM8;
0x1a0e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x8(%RDX,%RAX,1),%XMM8;
0x1a15;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1a48 <main+0x7e8>;
0x1a17;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x462a(%RIP),%R13;
0x1a1e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%R13,%RDI,1),%R12;
0x1a23;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%RAX,%R13;
0x1a26;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%R12),%XMM7;
0x1a2c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%R12),%XMM9;
0x1a33;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%R13),%XMM10;
0x1a39;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM9,%XMM7;
0x1a3e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM10,(%R12);
0x1a43;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM7,(%R13);
0x1a48;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;ADD	$0x10,%RAX;
0x1a4c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM11;
0x1a51;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	(%RDX,%RAX,1),%XMM11;
0x1a57;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1a95 <main+0x835>;
0x1a59;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM12;
0x1a5f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x8(%RDX,%RAX,1),%XMM12;
0x1a66;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1a95 <main+0x835>;
0x1a68;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x45d9(%RIP),%RSI;
0x1a6f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%RSI,%RDI,1),%R13;
0x1a73;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%RAX,%RSI;
0x1a76;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%R13),%XMM13;
0x1a7c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%R13),%XMM14;
0x1a82;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%RSI),%XMM15;
0x1a87;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM14,%XMM13;
0x1a8c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM15,(%R13);
0x1a91;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM13,(%RSI);
0x1a95;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;ADD	$0x10,%RAX;
0x1a99;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;CMP	%R8,%RAX;
0x1a9c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;JE	1cfe <main+0xa9e>;
0x1aa2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM0;  (5) 
0x1aa6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	(%RDX,%RAX,1),%XMM0;  (5) 
0x1aab;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1ae5 <main+0x885>;  (5) 
0x1aad;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM3;  (5) 
0x1ab2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x8(%RDX,%RAX,1),%XMM3;  (5) 
0x1ab8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1ae5 <main+0x885>;  (5) 
0x1aba;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x4587(%RIP),%RSI;  (5) 
0x1ac1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%RSI,%RDI,1),%R12;  (5) 
0x1ac5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%RAX,%RSI;  (5) 
0x1ac8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%R12),%XMM4;  (5) 
0x1ace;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%R12),%XMM5;  (5) 
0x1ad5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%RSI),%XMM2;  (5) 
0x1ad9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM5,%XMM4;  (5) 
0x1add;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM2,(%R12);  (5) 
0x1ae2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM4,(%RSI);  (5) 
0x1ae5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM1;  (5) 
0x1ae9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x10(%RDX,%RAX,1),%XMM1;  (5) 
0x1aef;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;LEA	0x10(%RAX),%RSI;  (5) 
0x1af3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1b2f <main+0x8cf>;  (5) 
0x1af5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM6;  (5) 
0x1afa;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x8(%RDX,%RSI,1),%XMM6;  (5) 
0x1b00;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1b2f <main+0x8cf>;  (5) 
0x1b02;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x453f(%RIP),%RAX;  (5) 
0x1b09;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%RAX,%RDI,1),%R13;  (5) 
0x1b0d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%RSI,%RAX;  (5) 
0x1b10;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%R13),%XMM8;  (5) 
0x1b16;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%R13),%XMM7;  (5) 
0x1b1c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%RAX),%XMM9;  (5) 
0x1b21;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM7,%XMM8;  (5) 
0x1b26;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM9,(%R13);  (5) 
0x1b2b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM8,(%RAX);  (5) 
0x1b2f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM10;  (5) 
0x1b34;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x10(%RDX,%RSI,1),%XMM10;  (5) 
0x1b3b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;LEA	0x10(%RSI),%RAX;  (5) 
0x1b3f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1b7d <main+0x91d>;  (5) 
0x1b41;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM11;  (5) 
0x1b47;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x18(%RDX,%RSI,1),%XMM11;  (5) 
0x1b4e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1b7d <main+0x91d>;  (5) 
0x1b50;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x44f1(%RIP),%R12;  (5) 
0x1b57;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%R12,%RDI,1),%R13;  (5) 
0x1b5b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%R12,%RAX;  (5) 
0x1b5e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%R13),%XMM12;  (5) 
0x1b64;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%R13),%XMM13;  (5) 
0x1b6a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%RAX),%XMM14;  (5) 
0x1b6f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM13,%XMM12;  (5) 
0x1b74;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM14,(%R13);  (5) 
0x1b79;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM12,(%RAX);  (5) 
0x1b7d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM15;  (5) 
0x1b82;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x20(%RDX,%RSI,1),%XMM15;  (5) 
0x1b89;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;LEA	0x20(%RSI),%RAX;  (5) 
0x1b8d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1bc6 <main+0x966>;  (5) 
0x1b8f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM0;  (5) 
0x1b94;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x28(%RDX,%RSI,1),%XMM0;  (5) 
0x1b9a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1bc6 <main+0x966>;  (5) 
0x1b9c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x44a5(%RIP),%R12;  (5) 
0x1ba3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%R12,%RDI,1),%R13;  (5) 
0x1ba7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%R12,%RAX;  (5) 
0x1baa;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%R13),%XMM3;  (5) 
0x1bb0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%R13),%XMM4;  (5) 
0x1bb6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%RAX),%XMM5;  (5) 
0x1bba;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM4,%XMM3;  (5) 
0x1bbe;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM5,(%R13);  (5) 
0x1bc3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM3,(%RAX);  (5) 
0x1bc6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM2;  (5) 
0x1bca;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x30(%RDX,%RSI,1),%XMM2;  (5) 
0x1bd0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;LEA	0x30(%RSI),%RAX;  (5) 
0x1bd4;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1c0f <main+0x9af>;  (5) 
0x1bd6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM1;  (5) 
0x1bdb;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x38(%RDX,%RSI,1),%XMM1;  (5) 
0x1be1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1c0f <main+0x9af>;  (5) 
0x1be3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x445e(%RIP),%R12;  (5) 
0x1bea;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%R12,%RDI,1),%R13;  (5) 
0x1bee;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%R12,%RAX;  (5) 
0x1bf1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%R13),%XMM8;  (5) 
0x1bf7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%R13),%XMM7;  (5) 
0x1bfd;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%RAX),%XMM6;  (5) 
0x1c01;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM7,%XMM8;  (5) 
0x1c06;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM6,(%R13);  (5) 
0x1c0b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM8,(%RAX);  (5) 
0x1c0f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM9;  (5) 
0x1c14;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x40(%RDX,%RSI,1),%XMM9;  (5) 
0x1c1b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;LEA	0x40(%RSI),%RAX;  (5) 
0x1c1f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1c5d <main+0x9fd>;  (5) 
0x1c21;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM10;  (5) 
0x1c27;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x48(%RDX,%RSI,1),%XMM10;  (5) 
0x1c2e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1c5d <main+0x9fd>;  (5) 
0x1c30;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x4411(%RIP),%R12;  (5) 
0x1c37;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%R12,%RDI,1),%R13;  (5) 
0x1c3b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%R12,%RAX;  (5) 
0x1c3e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%R13),%XMM11;  (5) 
0x1c44;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%R13),%XMM12;  (5) 
0x1c4a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%RAX),%XMM13;  (5) 
0x1c4f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM12,%XMM11;  (5) 
0x1c54;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM13,(%R13);  (5) 
0x1c59;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM11,(%RAX);  (5) 
0x1c5d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM14;  (5) 
0x1c62;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x50(%RDX,%RSI,1),%XMM14;  (5) 
0x1c69;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;LEA	0x50(%RSI),%RAX;  (5) 
0x1c6d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1ca8 <main+0xa48>;  (5) 
0x1c6f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM15;  (5) 
0x1c75;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x58(%RDX,%RSI,1),%XMM15;  (5) 
0x1c7c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1ca8 <main+0xa48>;  (5) 
0x1c7e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x43c3(%RIP),%R12;  (5) 
0x1c85;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%R12,%RDI,1),%R13;  (5) 
0x1c89;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%R12,%RAX;  (5) 
0x1c8c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%R13),%XMM0;  (5) 
0x1c92;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%R13),%XMM3;  (5) 
0x1c98;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%RAX),%XMM4;  (5) 
0x1c9c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM3,%XMM0;  (5) 
0x1ca0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM4,(%R13);  (5) 
0x1ca5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM0,(%RAX);  (5) 
0x1ca8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	(%RCX),%XMM5;  (5) 
0x1cac;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x60(%RDX,%RSI,1),%XMM5;  (5) 
0x1cb2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;LEA	0x60(%RSI),%RAX;  (5) 
0x1cb6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1cf1 <main+0xa91>;  (5) 
0x1cb8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;MOVSD	0x8(%RCX),%XMM2;  (5) 
0x1cbd;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;COMISD	0x68(%RDX,%RSI,1),%XMM2;  (5) 
0x1cc3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:116;JNE	1cf1 <main+0xa91>;  (5) 
0x1cc5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOV	0x437c(%RIP),%R12;  (5) 
0x1ccc;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;LEA	(%R12,%RDI,1),%R13;  (5) 
0x1cd0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;ADD	%R12,%RAX;  (5) 
0x1cd3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	(%R13),%XMM8;  (5) 
0x1cd9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:119;MOVSD	0x8(%R13),%XMM1;  (5) 
0x1cdf;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVDQU	(%RAX),%XMM7;  (5) 
0x1ce3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;UNPCKLPD	%XMM1,%XMM8;  (5) 
0x1ce8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:120;MOVUPS	%XMM7,(%R13);  (5) 
0x1ced;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:121;MOVUPS	%XMM8,(%RAX);  (5) 
0x1cf1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;LEA	0x70(%RSI),%RAX;  (5) 
0x1cf5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;CMP	%R8,%RAX;  (5) 
0x1cf8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:115;JNE	1aa2 <main+0x842>;  (5) 
0x1cfe;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:114;ADD	$0x1,%R10;
0x1d02;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:114;CMP	%R11D,%R9D;
0x1d05;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:114;JNE	1800 <main+0x5a0>;
