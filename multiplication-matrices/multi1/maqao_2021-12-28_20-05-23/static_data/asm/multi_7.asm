address;source_location;insn;indent
0xba0;/home/arezki/prog1/multi1.c:25;LEA	-0x4(%R12),%R11;
0xba5;/home/arezki/prog1/multi1.c:25;MOV	%RDX,%RSI;
0xba8;/home/arezki/prog1/multi1.c:25;LEA	0x20(%RDX),%RAX;
0xbac;/home/arezki/prog1/multi1.c:25;SUB	-0x38(%RBP),%RSI;
0xbb0;/home/arezki/prog1/multi1.c:25;CMP	%R11,-0x40(%RBP);
0xbb4;/home/arezki/prog1/multi1.c:25;SETBE	%DIL;
0xbb8;/home/arezki/prog1/multi1.c:25;CMP	%R12,%R15;
0xbbb;/home/arezki/prog1/multi1.c:25;SETAE	%R8B;
0xbbf;/home/arezki/prog1/multi1.c:25;OR	%R8D,%EDI;
0xbc2;/home/arezki/prog1/multi1.c:25;CMP	%RAX,%R15;
0xbc5;/home/arezki/prog1/multi1.c:25;SETAE	%R11B;
0xbc9;/home/arezki/prog1/multi1.c:25;CMP	-0x48(%RBP),%RDX;
0xbcd;/home/arezki/prog1/multi1.c:25;SETAE	%R8B;
0xbd1;/home/arezki/prog1/multi1.c:25;OR	%R8D,%R11D;
0xbd4;/home/arezki/prog1/multi1.c:25;TEST	%R11B,%DIL;
0xbd7;/home/arezki/prog1/multi1.c:25;JE	1048 <Multiplication+0x5c8>;
0xbdd;/home/arezki/prog1/multi1.c:25;CMP	$0xa,%R14D;
0xbe1;/home/arezki/prog1/multi1.c:25;JBE	1048 <Multiplication+0x5c8>;
0xbe7;/home/arezki/prog1/multi1.c:25;MOV	-0x60(%RBP),%EDI;
0xbea;/home/arezki/prog1/multi1.c:25;CMP	%EDI,-0x54(%RBP);
0xbed;/home/arezki/prog1/multi1.c:25;JA	11a0 <Multiplication+0x720>;
0xbf3;/home/arezki/prog1/multi1.c:25;TEST	%EBX,%EBX;
0xbf5;/home/arezki/prog1/multi1.c:25;JE	1180 <Multiplication+0x700>;
0xbfb;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%EAX;
0xbfd;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX),%EAX;
0xc00;/home/arezki/prog1/multi1.c:25;ADD	%EAX,(%R15);
0xc03;/home/arezki/prog1/multi1.c:25;CMP	$0x1,%EBX;
0xc06;/home/arezki/prog1/multi1.c:25;JE	1170 <Multiplication+0x6f0>;
0xc0c;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R11D;
0xc0f;/home/arezki/prog1/multi1.c:25;IMUL	0x4(%RDX),%R11D;
0xc14;/home/arezki/prog1/multi1.c:25;ADD	%R11D,0x4(%R15);
0xc18;/home/arezki/prog1/multi1.c:25;CMP	$0x2,%EBX;
0xc1b;/home/arezki/prog1/multi1.c:25;JE	1190 <Multiplication+0x710>;
0xc21;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R8D;
0xc24;/home/arezki/prog1/multi1.c:25;IMUL	0x8(%RDX),%R8D;
0xc29;/home/arezki/prog1/multi1.c:25;ADD	%R8D,0x8(%R15);
0xc2d;/home/arezki/prog1/multi1.c:25;CMP	$0x3,%EBX;
0xc30;/home/arezki/prog1/multi1.c:25;JE	11b0 <Multiplication+0x730>;
0xc36;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%EDI;
0xc38;/home/arezki/prog1/multi1.c:25;IMUL	0xc(%RDX),%EDI;
0xc3c;/home/arezki/prog1/multi1.c:25;ADD	%EDI,0xc(%R15);
0xc40;/home/arezki/prog1/multi1.c:25;CMP	$0x4,%EBX;
0xc43;/home/arezki/prog1/multi1.c:25;JE	11c0 <Multiplication+0x740>;
0xc49;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%EAX;
0xc4b;/home/arezki/prog1/multi1.c:25;IMUL	0x10(%RDX),%EAX;
0xc4f;/home/arezki/prog1/multi1.c:25;ADD	%EAX,0x10(%R15);
0xc53;/home/arezki/prog1/multi1.c:25;CMP	$0x5,%EBX;
0xc56;/home/arezki/prog1/multi1.c:25;JE	11d0 <Multiplication+0x750>;
0xc5c;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R11D;
0xc5f;/home/arezki/prog1/multi1.c:25;IMUL	0x14(%RDX),%R11D;
0xc64;/home/arezki/prog1/multi1.c:25;ADD	%R11D,0x14(%R15);
0xc68;/home/arezki/prog1/multi1.c:25;CMP	$0x7,%EBX;
0xc6b;/home/arezki/prog1/multi1.c:25;JNE	11e0 <Multiplication+0x760>;
0xc71;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R8D;
0xc74;/home/arezki/prog1/multi1.c:25;IMUL	0x18(%RDX),%R8D;
0xc79;/home/arezki/prog1/multi1.c:23;MOV	$0x7,%EDI;
0xc7e;/home/arezki/prog1/multi1.c:25;ADD	%R8D,0x18(%R15);
0xc82;/home/arezki/prog1/multi1.c:25;ADD	-0x68(%RBP),%RSI;
0xc86;/home/arezki/prog1/multi1.c:25;ADD	-0x38(%RBP),%RSI;
0xc8a;/home/arezki/prog1/multi1.c:25;LEA	-0x1(%R13),%R11D;
0xc8e;/home/arezki/prog1/multi1.c:25;MOV	$0x1,%R8D;
0xc94;/home/arezki/prog1/multi1.c:25;VPBROADCASTD	(%RCX),%YMM0;
0xc99;/home/arezki/prog1/multi1.c:25;VPMULLD	(%RSI),%YMM0,%YMM1;
0xc9e;/home/arezki/prog1/multi1.c:25;VPADDD	(%R10),%YMM1,%YMM2;
0xca3;/home/arezki/prog1/multi1.c:25;AND	$0x7,%R11D;
0xca7;/home/arezki/prog1/multi1.c:25;MOV	$0x20,%EAX;
0xcac;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM2,(%R9);
0xcb1;/home/arezki/prog1/multi1.c:25;CMP	$0x1,%R13D;
0xcb5;/home/arezki/prog1/multi1.c:25;JBE	e8e <Multiplication+0x40e>;
0xcbb;/home/arezki/prog1/multi1.c:25;TEST	%R11D,%R11D;
0xcbe;/home/arezki/prog1/multi1.c:25;JE	db2 <Multiplication+0x332>;
0xcc4;/home/arezki/prog1/multi1.c:25;CMP	$0x1,%R11D;
0xcc8;/home/arezki/prog1/multi1.c:25;JE	d8f <Multiplication+0x30f>;
0xcce;/home/arezki/prog1/multi1.c:25;CMP	$0x2,%R11D;
0xcd2;/home/arezki/prog1/multi1.c:25;JE	d75 <Multiplication+0x2f5>;
0xcd8;/home/arezki/prog1/multi1.c:25;CMP	$0x3,%R11D;
0xcdc;/home/arezki/prog1/multi1.c:25;JE	d5b <Multiplication+0x2db>;
0xcde;/home/arezki/prog1/multi1.c:25;CMP	$0x4,%R11D;
0xce2;/home/arezki/prog1/multi1.c:25;JE	d41 <Multiplication+0x2c1>;
0xce4;/home/arezki/prog1/multi1.c:25;CMP	$0x5,%R11D;
0xce8;/home/arezki/prog1/multi1.c:25;JE	d27 <Multiplication+0x2a7>;
0xcea;/home/arezki/prog1/multi1.c:25;CMP	$0x6,%R11D;
0xcee;/home/arezki/prog1/multi1.c:25;JE	d0d <Multiplication+0x28d>;
0xcf0;/home/arezki/prog1/multi1.c:25;VPMULLD	0x20(%RSI),%YMM0,%YMM3;
0xcf6;/home/arezki/prog1/multi1.c:25;VPADDD	0x20(%R10),%YMM3,%YMM4;
0xcfc;/home/arezki/prog1/multi1.c:25;MOV	$0x2,%R8D;
0xd02;/home/arezki/prog1/multi1.c:25;MOV	$0x40,%EAX;
0xd07;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM4,0x20(%R9);
0xd0d;/home/arezki/prog1/multi1.c:25;VPMULLD	(%RSI,%RAX,1),%YMM0,%YMM5;
0xd13;/home/arezki/prog1/multi1.c:25;VPADDD	(%R10,%RAX,1),%YMM5,%YMM6;
0xd19;/home/arezki/prog1/multi1.c:25;ADD	$0x1,%R8D;
0xd1d;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM6,(%R9,%RAX,1);
0xd23;/home/arezki/prog1/multi1.c:25;ADD	$0x20,%RAX;
0xd27;/home/arezki/prog1/multi1.c:25;VPMULLD	(%RSI,%RAX,1),%YMM0,%YMM7;
0xd2d;/home/arezki/prog1/multi1.c:25;VPADDD	(%R10,%RAX,1),%YMM7,%YMM8;
0xd33;/home/arezki/prog1/multi1.c:25;ADD	$0x1,%R8D;
0xd37;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM8,(%R9,%RAX,1);
0xd3d;/home/arezki/prog1/multi1.c:25;ADD	$0x20,%RAX;
0xd41;/home/arezki/prog1/multi1.c:25;VPMULLD	(%RSI,%RAX,1),%YMM0,%YMM9;
0xd47;/home/arezki/prog1/multi1.c:25;VPADDD	(%R10,%RAX,1),%YMM9,%YMM10;
0xd4d;/home/arezki/prog1/multi1.c:25;ADD	$0x1,%R8D;
0xd51;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM10,(%R9,%RAX,1);
0xd57;/home/arezki/prog1/multi1.c:25;ADD	$0x20,%RAX;
0xd5b;/home/arezki/prog1/multi1.c:25;VPMULLD	(%RSI,%RAX,1),%YMM0,%YMM11;
0xd61;/home/arezki/prog1/multi1.c:25;VPADDD	(%R10,%RAX,1),%YMM11,%YMM12;
0xd67;/home/arezki/prog1/multi1.c:25;ADD	$0x1,%R8D;
0xd6b;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM12,(%R9,%RAX,1);
0xd71;/home/arezki/prog1/multi1.c:25;ADD	$0x20,%RAX;
0xd75;/home/arezki/prog1/multi1.c:25;VPMULLD	(%RSI,%RAX,1),%YMM0,%YMM13;
0xd7b;/home/arezki/prog1/multi1.c:25;VPADDD	(%R10,%RAX,1),%YMM13,%YMM14;
0xd81;/home/arezki/prog1/multi1.c:25;ADD	$0x1,%R8D;
0xd85;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM14,(%R9,%RAX,1);
0xd8b;/home/arezki/prog1/multi1.c:25;ADD	$0x20,%RAX;
0xd8f;/home/arezki/prog1/multi1.c:25;VPMULLD	(%RSI,%RAX,1),%YMM0,%YMM15;
0xd95;/home/arezki/prog1/multi1.c:25;VPADDD	(%R10,%RAX,1),%YMM15,%YMM1;
0xd9b;/home/arezki/prog1/multi1.c:25;ADD	$0x1,%R8D;
0xd9f;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM1,(%R9,%RAX,1);
0xda5;/home/arezki/prog1/multi1.c:25;ADD	$0x20,%RAX;
0xda9;/home/arezki/prog1/multi1.c:25;CMP	%R8D,%R13D;
0xdac;/home/arezki/prog1/multi1.c:25;JBE	e8e <Multiplication+0x40e>;
0xdb2;/home/arezki/prog1/multi1.c:25;VPMULLD	(%RSI,%RAX,1),%YMM0,%YMM2;  (9) 
0xdb8;/home/arezki/prog1/multi1.c:25;VPADDD	(%R10,%RAX,1),%YMM2,%YMM3;  (9) 
0xdbe;/home/arezki/prog1/multi1.c:25;ADD	$0x8,%R8D;  (9) 
0xdc2;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM3,(%R9,%RAX,1);  (9) 
0xdc8;/home/arezki/prog1/multi1.c:25;VPMULLD	0x20(%RSI,%RAX,1),%YMM0,%YMM4;  (9) 
0xdcf;/home/arezki/prog1/multi1.c:25;VPADDD	0x20(%R10,%RAX,1),%YMM4,%YMM5;  (9) 
0xdd6;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM5,0x20(%R9,%RAX,1);  (9) 
0xddd;/home/arezki/prog1/multi1.c:25;VPMULLD	0x40(%RSI,%RAX,1),%YMM0,%YMM6;  (9) 
0xde4;/home/arezki/prog1/multi1.c:25;VPADDD	0x40(%R10,%RAX,1),%YMM6,%YMM7;  (9) 
0xdeb;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM7,0x40(%R9,%RAX,1);  (9) 
0xdf2;/home/arezki/prog1/multi1.c:25;VPMULLD	0x60(%RSI,%RAX,1),%YMM0,%YMM8;  (9) 
0xdf9;/home/arezki/prog1/multi1.c:25;VPADDD	0x60(%R10,%RAX,1),%YMM8,%YMM9;  (9) 
0xe00;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM9,0x60(%R9,%RAX,1);  (9) 
0xe07;/home/arezki/prog1/multi1.c:25;VPMULLD	0x80(%RSI,%RAX,1),%YMM0,%YMM10;  (9) 
0xe11;/home/arezki/prog1/multi1.c:25;VPADDD	0x80(%R10,%RAX,1),%YMM10,%YMM11;  (9) 
0xe1b;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM11,0x80(%R9,%RAX,1);  (9) 
0xe25;/home/arezki/prog1/multi1.c:25;VPMULLD	0xa0(%RSI,%RAX,1),%YMM0,%YMM12;  (9) 
0xe2f;/home/arezki/prog1/multi1.c:25;VPADDD	0xa0(%R10,%RAX,1),%YMM12,%YMM13;  (9) 
0xe39;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM13,0xa0(%R9,%RAX,1);  (9) 
0xe43;/home/arezki/prog1/multi1.c:25;VPMULLD	0xc0(%RSI,%RAX,1),%YMM0,%YMM14;  (9) 
0xe4d;/home/arezki/prog1/multi1.c:25;VPADDD	0xc0(%R10,%RAX,1),%YMM14,%YMM15;  (9) 
0xe57;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM15,0xc0(%R9,%RAX,1);  (9) 
0xe61;/home/arezki/prog1/multi1.c:25;VPMULLD	0xe0(%RSI,%RAX,1),%YMM0,%YMM1;  (9) 
0xe6b;/home/arezki/prog1/multi1.c:25;VPADDD	0xe0(%R10,%RAX,1),%YMM1,%YMM2;  (9) 
0xe75;/home/arezki/prog1/multi1.c:25;VMOVDQA	%YMM2,0xe0(%R9,%RAX,1);  (9) 
0xe7f;/home/arezki/prog1/multi1.c:25;ADD	$0x100,%RAX;  (9) 
0xe85;/home/arezki/prog1/multi1.c:25;CMP	%R8D,%R13D;  (9) 
0xe88;/home/arezki/prog1/multi1.c:25;JA	db2 <Multiplication+0x332>;  (9) 
0xe8e;/home/arezki/prog1/multi1.c:25;MOV	-0x5c(%RBP),%ESI;
0xe91;/home/arezki/prog1/multi1.c:25;ADD	%ESI,%EDI;
0xe93;/home/arezki/prog1/multi1.c:25;CMP	%ESI,-0x58(%RBP);
0xe96;/home/arezki/prog1/multi1.c:25;JE	fe0 <Multiplication+0x560>;
0xe9c;/home/arezki/prog1/multi1.c:25;MOVSXD	%EDI,%R11;
0xe9f;/home/arezki/prog1/multi1.c:23;LEA	0x1(%RDI),%EAX;
0xea2;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R8D;
0xea5;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%R11,4),%R8D;
0xeaa;/home/arezki/prog1/multi1.c:25;ADD	%R8D,(%R15,%R11,4);
0xeae;/home/arezki/prog1/multi1.c:23;CMP	%EAX,%R14D;
0xeb1;/home/arezki/prog1/multi1.c:23;JLE	fe0 <Multiplication+0x560>;
0xeb7;/home/arezki/prog1/multi1.c:23;CLTQ;
0xeb9;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%ESI;
0xebb;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RAX,4),%ESI;
0xebf;/home/arezki/prog1/multi1.c:25;ADD	%ESI,(%R15,%RAX,4);
0xec3;/home/arezki/prog1/multi1.c:23;LEA	0x2(%RDI),%EAX;
0xec6;/home/arezki/prog1/multi1.c:23;CMP	%EAX,%R14D;
0xec9;/home/arezki/prog1/multi1.c:23;JLE	fe0 <Multiplication+0x560>;
0xecf;/home/arezki/prog1/multi1.c:23;CLTQ;
0xed1;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R11D;
0xed4;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RAX,4),%R11D;
0xed9;/home/arezki/prog1/multi1.c:25;ADD	%R11D,(%R15,%RAX,4);
0xedd;/home/arezki/prog1/multi1.c:23;LEA	0x3(%RDI),%EAX;
0xee0;/home/arezki/prog1/multi1.c:23;CMP	%EAX,%R14D;
0xee3;/home/arezki/prog1/multi1.c:23;JLE	fe0 <Multiplication+0x560>;
0xee9;/home/arezki/prog1/multi1.c:23;CLTQ;
0xeeb;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R8D;
0xeee;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RAX,4),%R8D;
0xef3;/home/arezki/prog1/multi1.c:25;ADD	%R8D,(%R15,%RAX,4);
0xef7;/home/arezki/prog1/multi1.c:23;LEA	0x4(%RDI),%EAX;
0xefa;/home/arezki/prog1/multi1.c:23;CMP	%EAX,%R14D;
0xefd;/home/arezki/prog1/multi1.c:23;JLE	fe0 <Multiplication+0x560>;
0xf03;/home/arezki/prog1/multi1.c:23;CLTQ;
0xf05;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%ESI;
0xf07;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RAX,4),%ESI;
0xf0b;/home/arezki/prog1/multi1.c:25;ADD	%ESI,(%R15,%RAX,4);
0xf0f;/home/arezki/prog1/multi1.c:23;LEA	0x5(%RDI),%EAX;
0xf12;/home/arezki/prog1/multi1.c:23;CMP	%EAX,%R14D;
0xf15;/home/arezki/prog1/multi1.c:23;JLE	fe0 <Multiplication+0x560>;
0xf1b;/home/arezki/prog1/multi1.c:23;CLTQ;
0xf1d;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R11D;
0xf20;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RAX,4),%R11D;
0xf25;/home/arezki/prog1/multi1.c:25;ADD	%R11D,(%R15,%RAX,4);
0xf29;/home/arezki/prog1/multi1.c:23;LEA	0x6(%RDI),%EAX;
0xf2c;/home/arezki/prog1/multi1.c:23;CMP	%EAX,%R14D;
0xf2f;/home/arezki/prog1/multi1.c:23;JLE	fe0 <Multiplication+0x560>;
0xf35;/home/arezki/prog1/multi1.c:23;CLTQ;
0xf37;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R8D;
0xf3a;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RAX,4),%R8D;
0xf3f;/home/arezki/prog1/multi1.c:25;ADD	%R8D,(%R15,%RAX,4);
0xf43;/home/arezki/prog1/multi1.c:23;LEA	0x7(%RDI),%EAX;
0xf46;/home/arezki/prog1/multi1.c:23;CMP	%EAX,%R14D;
0xf49;/home/arezki/prog1/multi1.c:23;JLE	fe0 <Multiplication+0x560>;
0xf4f;/home/arezki/prog1/multi1.c:23;CLTQ;
0xf51;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%ESI;
0xf53;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RAX,4),%ESI;
0xf57;/home/arezki/prog1/multi1.c:25;ADD	%ESI,(%R15,%RAX,4);
0xf5b;/home/arezki/prog1/multi1.c:23;LEA	0x8(%RDI),%EAX;
0xf5e;/home/arezki/prog1/multi1.c:23;CMP	%EAX,%R14D;
0xf61;/home/arezki/prog1/multi1.c:23;JLE	fe0 <Multiplication+0x560>;
0xf63;/home/arezki/prog1/multi1.c:23;CLTQ;
0xf65;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R11D;
0xf68;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RAX,4),%R11D;
0xf6d;/home/arezki/prog1/multi1.c:25;ADD	%R11D,(%R15,%RAX,4);
0xf71;/home/arezki/prog1/multi1.c:23;LEA	0x9(%RDI),%EAX;
0xf74;/home/arezki/prog1/multi1.c:23;CMP	%EAX,%R14D;
0xf77;/home/arezki/prog1/multi1.c:23;JLE	fe0 <Multiplication+0x560>;
0xf79;/home/arezki/prog1/multi1.c:23;CLTQ;
0xf7b;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R8D;
0xf7e;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RAX,4),%R8D;
0xf83;/home/arezki/prog1/multi1.c:25;ADD	%R8D,(%R15,%RAX,4);
0xf87;/home/arezki/prog1/multi1.c:23;LEA	0xa(%RDI),%EAX;
0xf8a;/home/arezki/prog1/multi1.c:23;CMP	%EAX,%R14D;
0xf8d;/home/arezki/prog1/multi1.c:23;JLE	fe0 <Multiplication+0x560>;
0xf8f;/home/arezki/prog1/multi1.c:23;CLTQ;
0xf91;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%ESI;
0xf93;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RAX,4),%ESI;
0xf97;/home/arezki/prog1/multi1.c:25;ADD	%ESI,(%R15,%RAX,4);
0xf9b;/home/arezki/prog1/multi1.c:23;LEA	0xb(%RDI),%EAX;
0xf9e;/home/arezki/prog1/multi1.c:23;CMP	%EAX,%R14D;
0xfa1;/home/arezki/prog1/multi1.c:23;JLE	fe0 <Multiplication+0x560>;
0xfa3;/home/arezki/prog1/multi1.c:23;CLTQ;
0xfa5;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R11D;
0xfa8;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RAX,4),%R11D;
0xfad;/home/arezki/prog1/multi1.c:25;ADD	%R11D,(%R15,%RAX,4);
0xfb1;/home/arezki/prog1/multi1.c:23;LEA	0xc(%RDI),%EAX;
0xfb4;/home/arezki/prog1/multi1.c:23;CMP	%EAX,%R14D;
0xfb7;/home/arezki/prog1/multi1.c:23;JLE	fe0 <Multiplication+0x560>;
0xfb9;/home/arezki/prog1/multi1.c:23;CLTQ;
0xfbb;/home/arezki/prog1/multi1.c:23;ADD	$0xd,%EDI;
0xfbe;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R8D;
0xfc1;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RAX,4),%R8D;
0xfc6;/home/arezki/prog1/multi1.c:25;ADD	%R8D,(%R15,%RAX,4);
0xfca;/home/arezki/prog1/multi1.c:23;CMP	%EDI,%R14D;
0xfcd;/home/arezki/prog1/multi1.c:23;JLE	fe0 <Multiplication+0x560>;
0xfcf;/home/arezki/prog1/multi1.c:23;MOVSXD	%EDI,%RDI;
0xfd2;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%ESI;
0xfd4;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RDI,4),%ESI;
0xfd8;/home/arezki/prog1/multi1.c:25;ADD	%ESI,(%R15,%RDI,4);
0xfdc;/home/arezki/prog1/multi1.c:25;NOPL	(%RAX);
0xfe0;/home/arezki/prog1/multi1.c:25;ADD	$0x4,%R12;
0xfe4;/home/arezki/prog1/multi1.c:25;ADD	$0x7d0,%RDX;
0xfeb;/home/arezki/prog1/multi1.c:25;ADD	$0x4,%RCX;
0xfef;/home/arezki/prog1/multi1.c:22;CMP	-0x50(%RBP),%RDX;
0xff3;/home/arezki/prog1/multi1.c:22;JNE	ba0 <Multiplication+0x120>;
0x1048;/home/arezki/prog1/multi1.c:31;MOV	-0x70(%RBP),%R11;
0x104c;/home/arezki/prog1/multi1.c:25;XOR	%EDI,%EDI;
0x104e;/home/arezki/prog1/multi1.c:25;LEA	-0x4(%R11),%R8;
0x1052;/home/arezki/prog1/multi1.c:25;SHR	$0x2,%R8;
0x1056;/home/arezki/prog1/multi1.c:25;ADD	$0x1,%R8;
0x105a;/home/arezki/prog1/multi1.c:25;AND	$0x7,%R8D;
0x105e;/home/arezki/prog1/multi1.c:25;JE	10f9 <Multiplication+0x679>;
0x1064;/home/arezki/prog1/multi1.c:25;CMP	$0x1,%R8;
0x1068;/home/arezki/prog1/multi1.c:25;JE	10df <Multiplication+0x65f>;
0x106a;/home/arezki/prog1/multi1.c:25;CMP	$0x2,%R8;
0x106e;/home/arezki/prog1/multi1.c:25;JE	10d1 <Multiplication+0x651>;
0x1070;/home/arezki/prog1/multi1.c:25;CMP	$0x3,%R8;
0x1074;/home/arezki/prog1/multi1.c:25;JE	10c3 <Multiplication+0x643>;
0x1076;/home/arezki/prog1/multi1.c:25;CMP	$0x4,%R8;
0x107a;/home/arezki/prog1/multi1.c:25;JE	10b3 <Multiplication+0x633>;
0x107c;/home/arezki/prog1/multi1.c:25;CMP	$0x5,%R8;
0x1080;/home/arezki/prog1/multi1.c:25;JE	10a3 <Multiplication+0x623>;
0x1082;/home/arezki/prog1/multi1.c:25;CMP	$0x6,%R8;
0x1086;/home/arezki/prog1/multi1.c:25;JE	1095 <Multiplication+0x615>;
0x1088;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%EAX;
0x108a;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX),%EAX;
0x108d;/home/arezki/prog1/multi1.c:25;MOV	$0x4,%EDI;
0x1092;/home/arezki/prog1/multi1.c:25;ADD	%EAX,(%R15);
0x1095;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%ESI;
0x1097;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RDI,1),%ESI;
0x109b;/home/arezki/prog1/multi1.c:25;ADD	%ESI,(%R15,%RDI,1);
0x109f;/home/arezki/prog1/multi1.c:25;ADD	$0x4,%RDI;
0x10a3;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R11D;
0x10a6;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RDI,1),%R11D;
0x10ab;/home/arezki/prog1/multi1.c:25;ADD	%R11D,(%R15,%RDI,1);
0x10af;/home/arezki/prog1/multi1.c:25;ADD	$0x4,%RDI;
0x10b3;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R8D;
0x10b6;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RDI,1),%R8D;
0x10bb;/home/arezki/prog1/multi1.c:25;ADD	%R8D,(%R15,%RDI,1);
0x10bf;/home/arezki/prog1/multi1.c:25;ADD	$0x4,%RDI;
0x10c3;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%EAX;
0x10c5;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RDI,1),%EAX;
0x10c9;/home/arezki/prog1/multi1.c:25;ADD	%EAX,(%R15,%RDI,1);
0x10cd;/home/arezki/prog1/multi1.c:25;ADD	$0x4,%RDI;
0x10d1;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%ESI;
0x10d3;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RDI,1),%ESI;
0x10d7;/home/arezki/prog1/multi1.c:25;ADD	%ESI,(%R15,%RDI,1);
0x10db;/home/arezki/prog1/multi1.c:25;ADD	$0x4,%RDI;
0x10df;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R11D;
0x10e2;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RDI,1),%R11D;
0x10e7;/home/arezki/prog1/multi1.c:25;ADD	%R11D,(%R15,%RDI,1);
0x10eb;/home/arezki/prog1/multi1.c:25;ADD	$0x4,%RDI;
0x10ef;/home/arezki/prog1/multi1.c:23;CMP	-0x70(%RBP),%RDI;
0x10f3;/home/arezki/prog1/multi1.c:23;JE	fe0 <Multiplication+0x560>;
0x10f9;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R8D;  (6) 
0x10fc;/home/arezki/prog1/multi1.c:25;IMUL	(%RDX,%RDI,1),%R8D;  (6) 
0x1101;/home/arezki/prog1/multi1.c:25;ADD	%R8D,(%R15,%RDI,1);  (6) 
0x1105;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%EAX;  (6) 
0x1107;/home/arezki/prog1/multi1.c:25;IMUL	0x4(%RDI,%RDX,1),%EAX;  (6) 
0x110c;/home/arezki/prog1/multi1.c:25;ADD	%EAX,0x4(%RDI,%R15,1);  (6) 
0x1111;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%ESI;  (6) 
0x1113;/home/arezki/prog1/multi1.c:25;IMUL	0x8(%RDI,%RDX,1),%ESI;  (6) 
0x1118;/home/arezki/prog1/multi1.c:25;ADD	%ESI,0x8(%RDI,%R15,1);  (6) 
0x111d;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R11D;  (6) 
0x1120;/home/arezki/prog1/multi1.c:25;IMUL	0xc(%RDI,%RDX,1),%R11D;  (6) 
0x1126;/home/arezki/prog1/multi1.c:25;ADD	%R11D,0xc(%RDI,%R15,1);  (6) 
0x112b;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R8D;  (6) 
0x112e;/home/arezki/prog1/multi1.c:25;IMUL	0x10(%RDI,%RDX,1),%R8D;  (6) 
0x1134;/home/arezki/prog1/multi1.c:25;ADD	%R8D,0x10(%RDI,%R15,1);  (6) 
0x1139;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%EAX;  (6) 
0x113b;/home/arezki/prog1/multi1.c:25;IMUL	0x14(%RDI,%RDX,1),%EAX;  (6) 
0x1140;/home/arezki/prog1/multi1.c:25;ADD	%EAX,0x14(%RDI,%R15,1);  (6) 
0x1145;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%ESI;  (6) 
0x1147;/home/arezki/prog1/multi1.c:25;IMUL	0x18(%RDI,%RDX,1),%ESI;  (6) 
0x114c;/home/arezki/prog1/multi1.c:25;ADD	%ESI,0x18(%RDI,%R15,1);  (6) 
0x1151;/home/arezki/prog1/multi1.c:25;MOV	(%RCX),%R11D;  (6) 
0x1154;/home/arezki/prog1/multi1.c:25;IMUL	0x1c(%RDI,%RDX,1),%R11D;  (6) 
0x115a;/home/arezki/prog1/multi1.c:25;ADD	%R11D,0x1c(%RDI,%R15,1);  (6) 
0x115f;/home/arezki/prog1/multi1.c:25;ADD	$0x20,%RDI;  (6) 
0x1163;/home/arezki/prog1/multi1.c:23;CMP	-0x70(%RBP),%RDI;  (6) 
0x1167;/home/arezki/prog1/multi1.c:23;JNE	10f9 <Multiplication+0x679>;  (6) 
0x1169;/home/arezki/prog1/multi1.c:23;JMP	fe0 <Multiplication+0x560>;
0x1170;/home/arezki/prog1/multi1.c:23;MOV	$0x1,%EDI;
0x1175;/home/arezki/prog1/multi1.c:23;JMP	c82 <Multiplication+0x202>;
0x1180;/home/arezki/prog1/multi1.c:23;XOR	%EDI,%EDI;
0x1182;/home/arezki/prog1/multi1.c:23;JMP	c82 <Multiplication+0x202>;
0x1190;/home/arezki/prog1/multi1.c:23;MOV	$0x2,%EDI;
0x1195;/home/arezki/prog1/multi1.c:23;JMP	c82 <Multiplication+0x202>;
0x11a0;/home/arezki/prog1/multi1.c:23;XOR	%EDI,%EDI;
0x11a2;/home/arezki/prog1/multi1.c:23;JMP	e9c <Multiplication+0x41c>;
0x11b0;/home/arezki/prog1/multi1.c:23;MOV	$0x3,%EDI;
0x11b5;/home/arezki/prog1/multi1.c:23;JMP	c82 <Multiplication+0x202>;
0x11c0;/home/arezki/prog1/multi1.c:23;MOV	$0x4,%EDI;
0x11c5;/home/arezki/prog1/multi1.c:23;JMP	c82 <Multiplication+0x202>;
0x11d0;/home/arezki/prog1/multi1.c:23;MOV	$0x5,%EDI;
0x11d5;/home/arezki/prog1/multi1.c:23;JMP	c82 <Multiplication+0x202>;
0x11e0;/home/arezki/prog1/multi1.c:23;MOV	$0x6,%EDI;
0x11e5;/home/arezki/prog1/multi1.c:23;JMP	c82 <Multiplication+0x202>;
