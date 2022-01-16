address;source_location;insn;indent
0x29c8;/home/katia/Test-maqao/nbody1.c:138;MOVUPS	%XMM3,(%RCX);
0x29cb;/home/katia/Test-maqao/nbody1.c:138;MOV	%R11,%RAX;
0x29ce;/home/katia/Test-maqao/nbody1.c:138;XOR	%EDX,%EDX;
0x29d0;/home/katia/Test-maqao/nbody1.c:138;TEST	$0x1,%R10B;
0x29d4;/home/katia/Test-maqao/nbody1.c:138;JE	2afa <compute_accelerations+0x17a>;
0x29da;/home/katia/Test-maqao/nbody1.c:142;TEST	%EDI,%EDI;
0x29dc;/home/katia/Test-maqao/nbody1.c:142;JE	2a54 <compute_accelerations+0xd4>;
0x29de;/home/katia/Test-maqao/nbody1.c:80;MOVUPD	(%R8),%XMM5;
0x29e3;/home/katia/Test-maqao/nbody1.c:80;MOVUPD	(%R11),%XMM0;
0x29e8;/home/katia/Test-maqao/nbody1.c:80;MOVUPD	(%R11),%XMM9;
0x29ed;/home/katia/Test-maqao/nbody1.c:144;MOVSD	(%R9),%XMM4;
0x29f2;/home/katia/Test-maqao/nbody1.c:80;MOVAPD	%XMM5,%XMM6;
0x29f6;/home/katia/Test-maqao/nbody1.c:80;MOVAPD	%XMM5,%XMM8;
0x29fb;/home/katia/Test-maqao/nbody1.c:80;UNPCKLPD	%XMM0,%XMM0;
0x29ff;/home/katia/Test-maqao/nbody1.c:80;MOVUPD	(%R11),%XMM7;
0x2a04;/home/katia/Test-maqao/nbody1.c:80;UNPCKLPD	%XMM5,%XMM6;
0x2a08;/home/katia/Test-maqao/nbody1.c:80;UNPCKHPD	%XMM5,%XMM8;
0x2a0d;/home/katia/Test-maqao/nbody1.c:80;UNPCKHPD	%XMM9,%XMM9;
0x2a12;/home/katia/Test-maqao/nbody1.c:80;SUBPD	%XMM0,%XMM6;
0x2a16;/home/katia/Test-maqao/nbody1.c:80;SUBPD	%XMM9,%XMM8;
0x2a1b;/home/katia/Test-maqao/nbody1.c:144;MULSD	%XMM2,%XMM4;
0x2a1f;/home/katia/Test-maqao/nbody1.c:80;SUBPD	%XMM5,%XMM7;
0x2a23;/home/katia/Test-maqao/nbody1.c:88;MULPD	%XMM8,%XMM8;
0x2a28;/home/katia/Test-maqao/nbody1.c:88;MULPD	%XMM6,%XMM6;
0x2a2c;/home/katia/Test-maqao/nbody1.c:143;UNPCKLPD	%XMM4,%XMM4;
0x2a30;/home/katia/Test-maqao/nbody1.c:88;ADDPD	%XMM6,%XMM8;
0x2a35;/home/katia/Test-maqao/nbody1.c:144;SQRTPD	%XMM8,%XMM10;
0x2a3a;/home/katia/Test-maqao/nbody1.c:144;MULPD	%XMM10,%XMM8;
0x2a3f;/home/katia/Test-maqao/nbody1.c:144;ADDPD	%XMM1,%XMM8;
0x2a44;/home/katia/Test-maqao/nbody1.c:143;DIVPD	%XMM8,%XMM4;
0x2a49;/home/katia/Test-maqao/nbody1.c:72;MULPD	%XMM7,%XMM4;
0x2a4d;/home/katia/Test-maqao/nbody1.c:64;ADDPD	%XMM3,%XMM4;
0x2a51;/home/katia/Test-maqao/nbody1.c:143;MOVUPS	%XMM4,(%RCX);
0x2a54;/home/katia/Test-maqao/nbody1.c:141;LEA	0x10(%R11),%RAX;
0x2a58;/home/katia/Test-maqao/nbody1.c:141;MOV	$0x1,%EDX;
0x2a5d;/home/katia/Test-maqao/nbody1.c:141;JMP	2afa <compute_accelerations+0x17a>;
0x2a68;/home/katia/Test-maqao/nbody1.c:142;CMP	%ESI,%EDI;  (11) 
0x2a6a;/home/katia/Test-maqao/nbody1.c:142;JE	2af2 <compute_accelerations+0x172>;  (11) 
0x2a70;/home/katia/Test-maqao/nbody1.c:80;MOVUPD	(%R8),%XMM10;  (11) 
0x2a75;/home/katia/Test-maqao/nbody1.c:80;MOVUPD	(%RAX),%XMM12;  (11) 
0x2a7a;/home/katia/Test-maqao/nbody1.c:80;MOVUPD	(%RAX),%XMM14;  (11) 
0x2a7f;/home/katia/Test-maqao/nbody1.c:144;MOVSD	(%R9,%RSI,8),%XMM4;  (11) 
0x2a85;/home/katia/Test-maqao/nbody1.c:80;MOVAPD	%XMM10,%XMM11;  (11) 
0x2a8a;/home/katia/Test-maqao/nbody1.c:80;MOVAPD	%XMM10,%XMM13;  (11) 
0x2a8f;/home/katia/Test-maqao/nbody1.c:80;UNPCKLPD	%XMM12,%XMM12;  (11) 
0x2a94;/home/katia/Test-maqao/nbody1.c:80;MOVUPD	(%RAX),%XMM9;  (11) 
0x2a99;/home/katia/Test-maqao/nbody1.c:80;UNPCKLPD	%XMM10,%XMM11;  (11) 
0x2a9e;/home/katia/Test-maqao/nbody1.c:80;UNPCKHPD	%XMM10,%XMM13;  (11) 
0x2aa3;/home/katia/Test-maqao/nbody1.c:80;UNPCKHPD	%XMM14,%XMM14;  (11) 
0x2aa8;/home/katia/Test-maqao/nbody1.c:64;MOVUPD	(%RCX),%XMM7;  (11) 
0x2aac;/home/katia/Test-maqao/nbody1.c:80;SUBPD	%XMM12,%XMM11;  (11) 
0x2ab1;/home/katia/Test-maqao/nbody1.c:80;SUBPD	%XMM14,%XMM13;  (11) 
0x2ab6;/home/katia/Test-maqao/nbody1.c:144;MULSD	%XMM2,%XMM4;  (11) 
0x2aba;/home/katia/Test-maqao/nbody1.c:80;SUBPD	%XMM10,%XMM9;  (11) 
0x2abf;/home/katia/Test-maqao/nbody1.c:88;MULPD	%XMM13,%XMM13;  (11) 
0x2ac4;/home/katia/Test-maqao/nbody1.c:88;MULPD	%XMM11,%XMM11;  (11) 
0x2ac9;/home/katia/Test-maqao/nbody1.c:143;UNPCKLPD	%XMM4,%XMM4;  (11) 
0x2acd;/home/katia/Test-maqao/nbody1.c:88;ADDPD	%XMM11,%XMM13;  (11) 
0x2ad2;/home/katia/Test-maqao/nbody1.c:144;SQRTPD	%XMM13,%XMM15;  (11) 
0x2ad7;/home/katia/Test-maqao/nbody1.c:144;MULPD	%XMM15,%XMM13;  (11) 
0x2adc;/home/katia/Test-maqao/nbody1.c:144;ADDPD	%XMM1,%XMM13;  (11) 
0x2ae1;/home/katia/Test-maqao/nbody1.c:143;DIVPD	%XMM13,%XMM4;  (11) 
0x2ae6;/home/katia/Test-maqao/nbody1.c:72;MULPD	%XMM9,%XMM4;  (11) 
0x2aeb;/home/katia/Test-maqao/nbody1.c:64;ADDPD	%XMM7,%XMM4;  (11) 
0x2aef;/home/katia/Test-maqao/nbody1.c:143;MOVUPS	%XMM4,(%RCX);  (11) 
0x2af2;/home/katia/Test-maqao/nbody1.c:141;ADD	$0x10,%RAX;  (11) 
0x2af6;/home/katia/Test-maqao/nbody1.c:141;LEA	0x1(%RSI),%RDX;  (11) 
0x2afa;/home/katia/Test-maqao/nbody1.c:142;CMP	%EDX,%EDI;  (11) 
0x2afc;/home/katia/Test-maqao/nbody1.c:142;JE	2b86 <compute_accelerations+0x206>;  (11) 
0x2b02;/home/katia/Test-maqao/nbody1.c:80;MOVUPD	(%R8),%XMM12;  (11) 
0x2b07;/home/katia/Test-maqao/nbody1.c:80;MOVUPD	(%RAX),%XMM15;  (11) 
0x2b0c;/home/katia/Test-maqao/nbody1.c:80;MOVUPD	(%RAX),%XMM5;  (11) 
0x2b10;/home/katia/Test-maqao/nbody1.c:144;MOVSD	(%R9,%RDX,8),%XMM13;  (11) 
0x2b16;/home/katia/Test-maqao/nbody1.c:80;MOVAPD	%XMM12,%XMM14;  (11) 
0x2b1b;/home/katia/Test-maqao/nbody1.c:80;MOVAPD	%XMM12,%XMM7;  (11) 
0x2b20;/home/katia/Test-maqao/nbody1.c:80;UNPCKLPD	%XMM15,%XMM15;  (11) 
0x2b25;/home/katia/Test-maqao/nbody1.c:80;MOVUPD	(%RAX),%XMM11;  (11) 
0x2b2a;/home/katia/Test-maqao/nbody1.c:80;UNPCKLPD	%XMM12,%XMM14;  (11) 
0x2b2f;/home/katia/Test-maqao/nbody1.c:80;UNPCKHPD	%XMM12,%XMM7;  (11) 
0x2b34;/home/katia/Test-maqao/nbody1.c:80;UNPCKHPD	%XMM5,%XMM5;  (11) 
0x2b38;/home/katia/Test-maqao/nbody1.c:64;MOVUPD	(%RCX),%XMM8;  (11) 
0x2b3d;/home/katia/Test-maqao/nbody1.c:80;SUBPD	%XMM15,%XMM14;  (11) 
0x2b42;/home/katia/Test-maqao/nbody1.c:80;SUBPD	%XMM5,%XMM7;  (11) 
0x2b46;/home/katia/Test-maqao/nbody1.c:144;MULSD	%XMM2,%XMM13;  (11) 
0x2b4b;/home/katia/Test-maqao/nbody1.c:80;SUBPD	%XMM12,%XMM11;  (11) 
0x2b50;/home/katia/Test-maqao/nbody1.c:88;MULPD	%XMM7,%XMM7;  (11) 
0x2b54;/home/katia/Test-maqao/nbody1.c:88;MULPD	%XMM14,%XMM14;  (11) 
0x2b59;/home/katia/Test-maqao/nbody1.c:143;UNPCKLPD	%XMM13,%XMM13;  (11) 
0x2b5e;/home/katia/Test-maqao/nbody1.c:88;ADDPD	%XMM14,%XMM7;  (11) 
0x2b63;/home/katia/Test-maqao/nbody1.c:144;SQRTPD	%XMM7,%XMM6;  (11) 
0x2b67;/home/katia/Test-maqao/nbody1.c:144;MULPD	%XMM6,%XMM7;  (11) 
0x2b6b;/home/katia/Test-maqao/nbody1.c:144;ADDPD	%XMM1,%XMM7;  (11) 
0x2b6f;/home/katia/Test-maqao/nbody1.c:143;DIVPD	%XMM7,%XMM13;  (11) 
0x2b74;/home/katia/Test-maqao/nbody1.c:143;MOVAPD	%XMM13,%XMM0;  (11) 
0x2b79;/home/katia/Test-maqao/nbody1.c:72;MULPD	%XMM11,%XMM0;  (11) 
0x2b7e;/home/katia/Test-maqao/nbody1.c:64;ADDPD	%XMM8,%XMM0;  (11) 
0x2b83;/home/katia/Test-maqao/nbody1.c:143;MOVUPS	%XMM0,(%RCX);  (11) 
0x2b86;/home/katia/Test-maqao/nbody1.c:141;LEA	0x1(%RDX),%RSI;  (11) 
0x2b8a;/home/katia/Test-maqao/nbody1.c:141;ADD	$0x10,%RAX;  (11) 
0x2b8e;/home/katia/Test-maqao/nbody1.c:141;CMP	%RDX,%R10;  (11) 
0x2b91;/home/katia/Test-maqao/nbody1.c:141;JNE	2a68 <compute_accelerations+0xe8>;  (11) 
0x2b97;/home/katia/Test-maqao/nbody1.c:136;ADD	$0x1,%EDI;
0x2b9a;/home/katia/Test-maqao/nbody1.c:136;ADD	$0x10,%RCX;
0x2b9e;/home/katia/Test-maqao/nbody1.c:136;ADD	$0x10,%R8;
0x2ba2;/home/katia/Test-maqao/nbody1.c:136;CMP	%EBX,%EDI;
0x2ba4;/home/katia/Test-maqao/nbody1.c:136;JNE	29c8 <compute_accelerations+0x48>;
