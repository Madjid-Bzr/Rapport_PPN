address;source_location;insn;indent
0x1800;/home/katia/Test-maqao/nbody1.c:123;ADD	$0x1,%R9D;
0x1804;/home/katia/Test-maqao/nbody1.c:123;CMP	%EBP,%R9D;
0x1807;/home/katia/Test-maqao/nbody1.c:123;JGE	1cfe <main+0xa9e>;
0x180d;/home/katia/Test-maqao/nbody1.c:123;MOV	%R11D,%ESI;
0x1810;/home/katia/Test-maqao/nbody1.c:123;MOV	%R10,%RDI;
0x1813;/home/katia/Test-maqao/nbody1.c:123;MOV	0x4836(%RIP),%RDX;
0x181a;/home/katia/Test-maqao/nbody1.c:123;SUB	%R9D,%ESI;
0x181d;/home/katia/Test-maqao/nbody1.c:123;SAL	$0x4,%RDI;
0x1821;/home/katia/Test-maqao/nbody1.c:123;LEA	0x2(%R10,%RSI,1),%R8;
0x1826;/home/katia/Test-maqao/nbody1.c:123;LEA	0x10(%RDI),%RAX;
0x182a;/home/katia/Test-maqao/nbody1.c:123;SAL	$0x4,%R8;
0x182e;/home/katia/Test-maqao/nbody1.c:123;LEA	(%RDX,%RDI,1),%RCX;
0x1832;/home/katia/Test-maqao/nbody1.c:123;MOV	%R8,%R12;
0x1835;/home/katia/Test-maqao/nbody1.c:123;SUB	%RAX,%R12;
0x1838;/home/katia/Test-maqao/nbody1.c:123;SUB	$0x10,%R12;
0x183c;/home/katia/Test-maqao/nbody1.c:123;SHR	$0x4,%R12;
0x1840;/home/katia/Test-maqao/nbody1.c:123;ADD	$0x1,%R12;
0x1844;/home/katia/Test-maqao/nbody1.c:123;AND	$0x7,%R12D;
0x1848;/home/katia/Test-maqao/nbody1.c:123;JE	1aa2 <main+0x842>;
0x184e;/home/katia/Test-maqao/nbody1.c:123;CMP	$0x1,%R12;
0x1852;/home/katia/Test-maqao/nbody1.c:123;JE	1a4c <main+0x7ec>;
0x1858;/home/katia/Test-maqao/nbody1.c:123;CMP	$0x2,%R12;
0x185c;/home/katia/Test-maqao/nbody1.c:123;JE	19fd <main+0x79d>;
0x1862;/home/katia/Test-maqao/nbody1.c:123;CMP	$0x3,%R12;
0x1866;/home/katia/Test-maqao/nbody1.c:123;JE	19b7 <main+0x757>;
0x186c;/home/katia/Test-maqao/nbody1.c:123;CMP	$0x4,%R12;
0x1870;/home/katia/Test-maqao/nbody1.c:123;JE	196a <main+0x70a>;
0x1876;/home/katia/Test-maqao/nbody1.c:123;CMP	$0x5,%R12;
0x187a;/home/katia/Test-maqao/nbody1.c:123;JE	191f <main+0x6bf>;
0x1880;/home/katia/Test-maqao/nbody1.c:123;CMP	$0x6,%R12;
0x1884;/home/katia/Test-maqao/nbody1.c:123;JE	18d3 <main+0x673>;
0x1886;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM13;
0x188b;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x10(%RDX,%RDI,1),%XMM13;
0x1892;/home/katia/Test-maqao/nbody1.c:124;JNE	18cf <main+0x66f>;
0x1894;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM14;
0x189a;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x8(%RDX,%RAX,1),%XMM14;
0x18a1;/home/katia/Test-maqao/nbody1.c:124;JNE	18cf <main+0x66f>;
0x18a3;/home/katia/Test-maqao/nbody1.c:127;MOV	0x479e(%RIP),%R13;
0x18aa;/home/katia/Test-maqao/nbody1.c:127;LEA	(%R13,%RDI,1),%RSI;
0x18af;/home/katia/Test-maqao/nbody1.c:128;ADD	%RAX,%R13;
0x18b2;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%RSI),%XMM15;
0x18b7;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%RSI),%XMM0;
0x18bc;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%R13),%XMM3;
0x18c2;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM0,%XMM15;
0x18c7;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM3,(%RSI);
0x18ca;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM15,(%R13);
0x18cf;/home/katia/Test-maqao/nbody1.c:123;ADD	$0x10,%RAX;
0x18d3;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM2;
0x18d7;/home/katia/Test-maqao/nbody1.c:124;COMISD	(%RDX,%RAX,1),%XMM2;
0x18dc;/home/katia/Test-maqao/nbody1.c:124;JNE	191b <main+0x6bb>;
0x18de;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM4;
0x18e3;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x8(%RDX,%RAX,1),%XMM4;
0x18e9;/home/katia/Test-maqao/nbody1.c:124;JNE	191b <main+0x6bb>;
0x18eb;/home/katia/Test-maqao/nbody1.c:127;MOV	0x4756(%RIP),%R13;
0x18f2;/home/katia/Test-maqao/nbody1.c:127;LEA	(%R13,%RDI,1),%R12;
0x18f7;/home/katia/Test-maqao/nbody1.c:128;ADD	%RAX,%R13;
0x18fa;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%R12),%XMM5;
0x1900;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%R12),%XMM1;
0x1907;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%R13),%XMM6;
0x190d;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM1,%XMM5;
0x1911;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM6,(%R12);
0x1916;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM5,(%R13);
0x191b;/home/katia/Test-maqao/nbody1.c:123;ADD	$0x10,%RAX;
0x191f;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM8;
0x1924;/home/katia/Test-maqao/nbody1.c:124;COMISD	(%RDX,%RAX,1),%XMM8;
0x192a;/home/katia/Test-maqao/nbody1.c:124;JNE	1966 <main+0x706>;
0x192c;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM7;
0x1931;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x8(%RDX,%RAX,1),%XMM7;
0x1937;/home/katia/Test-maqao/nbody1.c:124;JNE	1966 <main+0x706>;
0x1939;/home/katia/Test-maqao/nbody1.c:127;MOV	0x4708(%RIP),%RSI;
0x1940;/home/katia/Test-maqao/nbody1.c:127;LEA	(%RSI,%RDI,1),%R13;
0x1944;/home/katia/Test-maqao/nbody1.c:128;ADD	%RAX,%RSI;
0x1947;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%R13),%XMM9;
0x194d;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%R13),%XMM10;
0x1953;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%RSI),%XMM11;
0x1958;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM10,%XMM9;
0x195d;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM11,(%R13);
0x1962;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM9,(%RSI);
0x1966;/home/katia/Test-maqao/nbody1.c:123;ADD	$0x10,%RAX;
0x196a;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM12;
0x196f;/home/katia/Test-maqao/nbody1.c:124;COMISD	(%RDX,%RAX,1),%XMM12;
0x1975;/home/katia/Test-maqao/nbody1.c:124;JNE	19b3 <main+0x753>;
0x1977;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM13;
0x197d;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x8(%RDX,%RAX,1),%XMM13;
0x1984;/home/katia/Test-maqao/nbody1.c:124;JNE	19b3 <main+0x753>;
0x1986;/home/katia/Test-maqao/nbody1.c:127;MOV	0x46bb(%RIP),%RSI;
0x198d;/home/katia/Test-maqao/nbody1.c:127;LEA	(%RSI,%RDI,1),%R12;
0x1991;/home/katia/Test-maqao/nbody1.c:128;ADD	%RAX,%RSI;
0x1994;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%R12),%XMM14;
0x199a;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%R12),%XMM15;
0x19a1;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%RSI),%XMM0;
0x19a5;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM15,%XMM14;
0x19aa;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM0,(%R12);
0x19af;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM14,(%RSI);
0x19b3;/home/katia/Test-maqao/nbody1.c:123;ADD	$0x10,%RAX;
0x19b7;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM3;
0x19bb;/home/katia/Test-maqao/nbody1.c:124;COMISD	(%RDX,%RAX,1),%XMM3;
0x19c0;/home/katia/Test-maqao/nbody1.c:124;JNE	19f9 <main+0x799>;
0x19c2;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM2;
0x19c7;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x8(%RDX,%RAX,1),%XMM2;
0x19cd;/home/katia/Test-maqao/nbody1.c:124;JNE	19f9 <main+0x799>;
0x19cf;/home/katia/Test-maqao/nbody1.c:127;MOV	0x4672(%RIP),%R13;
0x19d6;/home/katia/Test-maqao/nbody1.c:127;LEA	(%R13,%RDI,1),%RSI;
0x19db;/home/katia/Test-maqao/nbody1.c:128;ADD	%RAX,%R13;
0x19de;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%RSI),%XMM4;
0x19e2;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%RSI),%XMM5;
0x19e7;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%R13),%XMM1;
0x19ed;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM5,%XMM4;
0x19f1;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM1,(%RSI);
0x19f4;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM4,(%R13);
0x19f9;/home/katia/Test-maqao/nbody1.c:123;ADD	$0x10,%RAX;
0x19fd;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM6;
0x1a01;/home/katia/Test-maqao/nbody1.c:124;COMISD	(%RDX,%RAX,1),%XMM6;
0x1a06;/home/katia/Test-maqao/nbody1.c:124;JNE	1a48 <main+0x7e8>;
0x1a08;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM8;
0x1a0e;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x8(%RDX,%RAX,1),%XMM8;
0x1a15;/home/katia/Test-maqao/nbody1.c:124;JNE	1a48 <main+0x7e8>;
0x1a17;/home/katia/Test-maqao/nbody1.c:127;MOV	0x462a(%RIP),%R13;
0x1a1e;/home/katia/Test-maqao/nbody1.c:127;LEA	(%R13,%RDI,1),%R12;
0x1a23;/home/katia/Test-maqao/nbody1.c:128;ADD	%RAX,%R13;
0x1a26;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%R12),%XMM7;
0x1a2c;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%R12),%XMM9;
0x1a33;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%R13),%XMM10;
0x1a39;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM9,%XMM7;
0x1a3e;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM10,(%R12);
0x1a43;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM7,(%R13);
0x1a48;/home/katia/Test-maqao/nbody1.c:123;ADD	$0x10,%RAX;
0x1a4c;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM11;
0x1a51;/home/katia/Test-maqao/nbody1.c:124;COMISD	(%RDX,%RAX,1),%XMM11;
0x1a57;/home/katia/Test-maqao/nbody1.c:124;JNE	1a95 <main+0x835>;
0x1a59;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM12;
0x1a5f;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x8(%RDX,%RAX,1),%XMM12;
0x1a66;/home/katia/Test-maqao/nbody1.c:124;JNE	1a95 <main+0x835>;
0x1a68;/home/katia/Test-maqao/nbody1.c:127;MOV	0x45d9(%RIP),%RSI;
0x1a6f;/home/katia/Test-maqao/nbody1.c:127;LEA	(%RSI,%RDI,1),%R13;
0x1a73;/home/katia/Test-maqao/nbody1.c:128;ADD	%RAX,%RSI;
0x1a76;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%R13),%XMM13;
0x1a7c;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%R13),%XMM14;
0x1a82;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%RSI),%XMM15;
0x1a87;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM14,%XMM13;
0x1a8c;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM15,(%R13);
0x1a91;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM13,(%RSI);
0x1a95;/home/katia/Test-maqao/nbody1.c:123;ADD	$0x10,%RAX;
0x1a99;/home/katia/Test-maqao/nbody1.c:123;CMP	%R8,%RAX;
0x1a9c;/home/katia/Test-maqao/nbody1.c:123;JE	1cfe <main+0xa9e>;
0x1aa2;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM0;  (5) 
0x1aa6;/home/katia/Test-maqao/nbody1.c:124;COMISD	(%RDX,%RAX,1),%XMM0;  (5) 
0x1aab;/home/katia/Test-maqao/nbody1.c:124;JNE	1ae5 <main+0x885>;  (5) 
0x1aad;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM3;  (5) 
0x1ab2;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x8(%RDX,%RAX,1),%XMM3;  (5) 
0x1ab8;/home/katia/Test-maqao/nbody1.c:124;JNE	1ae5 <main+0x885>;  (5) 
0x1aba;/home/katia/Test-maqao/nbody1.c:127;MOV	0x4587(%RIP),%RSI;  (5) 
0x1ac1;/home/katia/Test-maqao/nbody1.c:127;LEA	(%RSI,%RDI,1),%R12;  (5) 
0x1ac5;/home/katia/Test-maqao/nbody1.c:128;ADD	%RAX,%RSI;  (5) 
0x1ac8;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%R12),%XMM4;  (5) 
0x1ace;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%R12),%XMM5;  (5) 
0x1ad5;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%RSI),%XMM2;  (5) 
0x1ad9;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM5,%XMM4;  (5) 
0x1add;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM2,(%R12);  (5) 
0x1ae2;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM4,(%RSI);  (5) 
0x1ae5;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM1;  (5) 
0x1ae9;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x10(%RDX,%RAX,1),%XMM1;  (5) 
0x1aef;/home/katia/Test-maqao/nbody1.c:124;LEA	0x10(%RAX),%RSI;  (5) 
0x1af3;/home/katia/Test-maqao/nbody1.c:124;JNE	1b2f <main+0x8cf>;  (5) 
0x1af5;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM6;  (5) 
0x1afa;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x8(%RDX,%RSI,1),%XMM6;  (5) 
0x1b00;/home/katia/Test-maqao/nbody1.c:124;JNE	1b2f <main+0x8cf>;  (5) 
0x1b02;/home/katia/Test-maqao/nbody1.c:127;MOV	0x453f(%RIP),%RAX;  (5) 
0x1b09;/home/katia/Test-maqao/nbody1.c:127;LEA	(%RAX,%RDI,1),%R13;  (5) 
0x1b0d;/home/katia/Test-maqao/nbody1.c:128;ADD	%RSI,%RAX;  (5) 
0x1b10;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%R13),%XMM8;  (5) 
0x1b16;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%R13),%XMM7;  (5) 
0x1b1c;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%RAX),%XMM9;  (5) 
0x1b21;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM7,%XMM8;  (5) 
0x1b26;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM9,(%R13);  (5) 
0x1b2b;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM8,(%RAX);  (5) 
0x1b2f;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM10;  (5) 
0x1b34;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x10(%RDX,%RSI,1),%XMM10;  (5) 
0x1b3b;/home/katia/Test-maqao/nbody1.c:124;LEA	0x10(%RSI),%RAX;  (5) 
0x1b3f;/home/katia/Test-maqao/nbody1.c:124;JNE	1b7d <main+0x91d>;  (5) 
0x1b41;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM11;  (5) 
0x1b47;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x18(%RDX,%RSI,1),%XMM11;  (5) 
0x1b4e;/home/katia/Test-maqao/nbody1.c:124;JNE	1b7d <main+0x91d>;  (5) 
0x1b50;/home/katia/Test-maqao/nbody1.c:127;MOV	0x44f1(%RIP),%R12;  (5) 
0x1b57;/home/katia/Test-maqao/nbody1.c:127;LEA	(%R12,%RDI,1),%R13;  (5) 
0x1b5b;/home/katia/Test-maqao/nbody1.c:128;ADD	%R12,%RAX;  (5) 
0x1b5e;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%R13),%XMM12;  (5) 
0x1b64;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%R13),%XMM13;  (5) 
0x1b6a;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%RAX),%XMM14;  (5) 
0x1b6f;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM13,%XMM12;  (5) 
0x1b74;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM14,(%R13);  (5) 
0x1b79;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM12,(%RAX);  (5) 
0x1b7d;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM15;  (5) 
0x1b82;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x20(%RDX,%RSI,1),%XMM15;  (5) 
0x1b89;/home/katia/Test-maqao/nbody1.c:124;LEA	0x20(%RSI),%RAX;  (5) 
0x1b8d;/home/katia/Test-maqao/nbody1.c:124;JNE	1bc6 <main+0x966>;  (5) 
0x1b8f;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM0;  (5) 
0x1b94;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x28(%RDX,%RSI,1),%XMM0;  (5) 
0x1b9a;/home/katia/Test-maqao/nbody1.c:124;JNE	1bc6 <main+0x966>;  (5) 
0x1b9c;/home/katia/Test-maqao/nbody1.c:127;MOV	0x44a5(%RIP),%R12;  (5) 
0x1ba3;/home/katia/Test-maqao/nbody1.c:127;LEA	(%R12,%RDI,1),%R13;  (5) 
0x1ba7;/home/katia/Test-maqao/nbody1.c:128;ADD	%R12,%RAX;  (5) 
0x1baa;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%R13),%XMM3;  (5) 
0x1bb0;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%R13),%XMM4;  (5) 
0x1bb6;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%RAX),%XMM5;  (5) 
0x1bba;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM4,%XMM3;  (5) 
0x1bbe;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM5,(%R13);  (5) 
0x1bc3;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM3,(%RAX);  (5) 
0x1bc6;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM2;  (5) 
0x1bca;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x30(%RDX,%RSI,1),%XMM2;  (5) 
0x1bd0;/home/katia/Test-maqao/nbody1.c:124;LEA	0x30(%RSI),%RAX;  (5) 
0x1bd4;/home/katia/Test-maqao/nbody1.c:124;JNE	1c0f <main+0x9af>;  (5) 
0x1bd6;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM1;  (5) 
0x1bdb;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x38(%RDX,%RSI,1),%XMM1;  (5) 
0x1be1;/home/katia/Test-maqao/nbody1.c:124;JNE	1c0f <main+0x9af>;  (5) 
0x1be3;/home/katia/Test-maqao/nbody1.c:127;MOV	0x445e(%RIP),%R12;  (5) 
0x1bea;/home/katia/Test-maqao/nbody1.c:127;LEA	(%R12,%RDI,1),%R13;  (5) 
0x1bee;/home/katia/Test-maqao/nbody1.c:128;ADD	%R12,%RAX;  (5) 
0x1bf1;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%R13),%XMM8;  (5) 
0x1bf7;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%R13),%XMM7;  (5) 
0x1bfd;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%RAX),%XMM6;  (5) 
0x1c01;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM7,%XMM8;  (5) 
0x1c06;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM6,(%R13);  (5) 
0x1c0b;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM8,(%RAX);  (5) 
0x1c0f;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM9;  (5) 
0x1c14;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x40(%RDX,%RSI,1),%XMM9;  (5) 
0x1c1b;/home/katia/Test-maqao/nbody1.c:124;LEA	0x40(%RSI),%RAX;  (5) 
0x1c1f;/home/katia/Test-maqao/nbody1.c:124;JNE	1c5d <main+0x9fd>;  (5) 
0x1c21;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM10;  (5) 
0x1c27;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x48(%RDX,%RSI,1),%XMM10;  (5) 
0x1c2e;/home/katia/Test-maqao/nbody1.c:124;JNE	1c5d <main+0x9fd>;  (5) 
0x1c30;/home/katia/Test-maqao/nbody1.c:127;MOV	0x4411(%RIP),%R12;  (5) 
0x1c37;/home/katia/Test-maqao/nbody1.c:127;LEA	(%R12,%RDI,1),%R13;  (5) 
0x1c3b;/home/katia/Test-maqao/nbody1.c:128;ADD	%R12,%RAX;  (5) 
0x1c3e;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%R13),%XMM11;  (5) 
0x1c44;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%R13),%XMM12;  (5) 
0x1c4a;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%RAX),%XMM13;  (5) 
0x1c4f;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM12,%XMM11;  (5) 
0x1c54;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM13,(%R13);  (5) 
0x1c59;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM11,(%RAX);  (5) 
0x1c5d;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM14;  (5) 
0x1c62;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x50(%RDX,%RSI,1),%XMM14;  (5) 
0x1c69;/home/katia/Test-maqao/nbody1.c:124;LEA	0x50(%RSI),%RAX;  (5) 
0x1c6d;/home/katia/Test-maqao/nbody1.c:124;JNE	1ca8 <main+0xa48>;  (5) 
0x1c6f;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM15;  (5) 
0x1c75;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x58(%RDX,%RSI,1),%XMM15;  (5) 
0x1c7c;/home/katia/Test-maqao/nbody1.c:124;JNE	1ca8 <main+0xa48>;  (5) 
0x1c7e;/home/katia/Test-maqao/nbody1.c:127;MOV	0x43c3(%RIP),%R12;  (5) 
0x1c85;/home/katia/Test-maqao/nbody1.c:127;LEA	(%R12,%RDI,1),%R13;  (5) 
0x1c89;/home/katia/Test-maqao/nbody1.c:128;ADD	%R12,%RAX;  (5) 
0x1c8c;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%R13),%XMM0;  (5) 
0x1c92;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%R13),%XMM3;  (5) 
0x1c98;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%RAX),%XMM4;  (5) 
0x1c9c;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM3,%XMM0;  (5) 
0x1ca0;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM4,(%R13);  (5) 
0x1ca5;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM0,(%RAX);  (5) 
0x1ca8;/home/katia/Test-maqao/nbody1.c:124;MOVSD	(%RCX),%XMM5;  (5) 
0x1cac;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x60(%RDX,%RSI,1),%XMM5;  (5) 
0x1cb2;/home/katia/Test-maqao/nbody1.c:124;LEA	0x60(%RSI),%RAX;  (5) 
0x1cb6;/home/katia/Test-maqao/nbody1.c:124;JNE	1cf1 <main+0xa91>;  (5) 
0x1cb8;/home/katia/Test-maqao/nbody1.c:124;MOVSD	0x8(%RCX),%XMM2;  (5) 
0x1cbd;/home/katia/Test-maqao/nbody1.c:124;COMISD	0x68(%RDX,%RSI,1),%XMM2;  (5) 
0x1cc3;/home/katia/Test-maqao/nbody1.c:124;JNE	1cf1 <main+0xa91>;  (5) 
0x1cc5;/home/katia/Test-maqao/nbody1.c:127;MOV	0x437c(%RIP),%R12;  (5) 
0x1ccc;/home/katia/Test-maqao/nbody1.c:127;LEA	(%R12,%RDI,1),%R13;  (5) 
0x1cd0;/home/katia/Test-maqao/nbody1.c:128;ADD	%R12,%RAX;  (5) 
0x1cd3;/home/katia/Test-maqao/nbody1.c:127;MOVSD	(%R13),%XMM8;  (5) 
0x1cd9;/home/katia/Test-maqao/nbody1.c:127;MOVSD	0x8(%R13),%XMM1;  (5) 
0x1cdf;/home/katia/Test-maqao/nbody1.c:128;MOVDQU	(%RAX),%XMM7;  (5) 
0x1ce3;/home/katia/Test-maqao/nbody1.c:129;UNPCKLPD	%XMM1,%XMM8;  (5) 
0x1ce8;/home/katia/Test-maqao/nbody1.c:128;MOVUPS	%XMM7,(%R13);  (5) 
0x1ced;/home/katia/Test-maqao/nbody1.c:129;MOVUPS	%XMM8,(%RAX);  (5) 
0x1cf1;/home/katia/Test-maqao/nbody1.c:123;LEA	0x70(%RSI),%RAX;  (5) 
0x1cf5;/home/katia/Test-maqao/nbody1.c:123;CMP	%R8,%RAX;  (5) 
0x1cf8;/home/katia/Test-maqao/nbody1.c:123;JNE	1aa2 <main+0x842>;  (5) 
0x1cfe;/home/katia/Test-maqao/nbody1.c:122;ADD	$0x1,%R10;
0x1d02;/home/katia/Test-maqao/nbody1.c:122;CMP	%R11D,%R9D;
0x1d05;/home/katia/Test-maqao/nbody1.c:122;JNE	1800 <main+0x5a0>;
