address;source_location;insn;indent
0x1410;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;ENDBR64;
0x1414;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;PUSH	%RBP;
0x1415;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;MOV	%RSP,%RBP;
0x1418;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;PUSH	%R14;
0x141a;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;PUSH	%R13;
0x141c;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;PUSH	%R12;
0x141e;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;PUSH	%RBX;
0x141f;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;AND	$-0x20,%RSP;
0x1423;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;LEA	-0xf4000(%RSP),%R11;
0x142b;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;SUB	$0x1000,%RSP;(5) 
0x1432;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;ORQ	$0,(%RSP);(5) 
0x1437;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;CMP	%R11,%RSP;(5) 
0x143a;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;JNE	142b <matrixMultiplication+0x1b>;(5) 
0x143c;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;SUB	$0x260,%RSP;
0x1443;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPXOR	%XMM3,%XMM3,%XMM3;
0x1447;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;XOR	%R8D,%R8D;
0x144a;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;MOV	%FS:0x28,%RAX;
0x1453;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;MOV	%RAX,0xf4258(%RSP);
0x145b;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;XOR	%EAX,%EAX;
0x145d;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:32;LEA	0x10(%RSP),%RBX;
0x1462;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;MOV	%RSI,%R10;
0x1465;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;MOV	%RDI,%R9;
0x1468;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:29;LEA	0xf4250(%RSP),%R14;
0x1470;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;MOV	%RBX,%RDX;
0x1473;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:34;MOV	%R10,%RCX;(8) 
0x1476;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;XOR	%ESI,%ESI;(8) 
0x1478;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VMOVD	%ESI,%XMM0;  (7) 
0x147c;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPBROADCASTD	%XMM0,%YMM2;  (7) 
0x1481;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPCMPEQD	%YMM3,%YMM2,%YMM5;  (7) 
0x1485;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPBROADCASTD	(%R9,%RSI,4),%YMM1;  (7) 
0x148b;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;MOV	%ESI,%EDI;  (7) 
0x148d;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	(%RDX),%YMM5,%YMM6;  (7) 
0x1491;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	(%RCX),%YMM1,%YMM4;  (7) 
0x1496;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0x20(%RDX),%YMM5,%YMM8;  (7) 
0x149b;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM4,%YMM6,%YMM7;  (7) 
0x149f;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM7,(%RDX);  (7) 
0x14a3;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0x20(%RCX),%YMM1,%YMM9;  (7) 
0x14a9;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM9,%YMM8,%YMM10;  (7) 
0x14ae;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM10,0x20(%RDX);  (7) 
0x14b3;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:34;MOV	$0x40,%EAX;  (7) 
0x14b8;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	(%RDX,%RAX,1),%YMM5,%YMM11;    (6) 
0x14bd;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	(%RCX,%RAX,1),%YMM1,%YMM12;    (6) 
0x14c3;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0x20(%RDX,%RAX,1),%YMM5,%YMM14;    (6) 
0x14c9;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM12,%YMM11,%YMM13;    (6) 
0x14ce;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM13,(%RDX,%RAX,1);    (6) 
0x14d3;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0x20(%RAX,%RCX,1),%YMM1,%YMM15;    (6) 
0x14da;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0x40(%RDX,%RAX,1),%YMM5,%YMM2;    (6) 
0x14e0;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM15,%YMM14,%YMM0;    (6) 
0x14e5;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM0,0x20(%RDX,%RAX,1);    (6) 
0x14eb;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0x40(%RAX,%RCX,1),%YMM1,%YMM6;    (6) 
0x14f2;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0x60(%RDX,%RAX,1),%YMM5,%YMM7;    (6) 
0x14f8;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM6,%YMM2,%YMM4;    (6) 
0x14fc;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM4,0x40(%RDX,%RAX,1);    (6) 
0x1502;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0x60(%RAX,%RCX,1),%YMM1,%YMM8;    (6) 
0x1509;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0x80(%RDX,%RAX,1),%YMM5,%YMM10;    (6) 
0x1512;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM8,%YMM7,%YMM9;    (6) 
0x1517;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM9,0x60(%RDX,%RAX,1);    (6) 
0x151d;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0x80(%RAX,%RCX,1),%YMM1,%YMM11;    (6) 
0x1527;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0xa0(%RDX,%RAX,1),%YMM5,%YMM13;    (6) 
0x1530;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM11,%YMM10,%YMM12;    (6) 
0x1535;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM12,0x80(%RDX,%RAX,1);    (6) 
0x153e;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0xa0(%RAX,%RCX,1),%YMM1,%YMM14;    (6) 
0x1548;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0xc0(%RDX,%RAX,1),%YMM5,%YMM0;    (6) 
0x1551;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM14,%YMM13,%YMM15;    (6) 
0x1556;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM15,0xa0(%RDX,%RAX,1);    (6) 
0x155f;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0xc0(%RAX,%RCX,1),%YMM1,%YMM2;    (6) 
0x1569;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0xe0(%RDX,%RAX,1),%YMM5,%YMM7;    (6) 
0x1572;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM2,%YMM0,%YMM6;    (6) 
0x1576;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM6,0xc0(%RDX,%RAX,1);    (6) 
0x157f;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0xe0(%RAX,%RCX,1),%YMM1,%YMM4;    (6) 
0x1589;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0x100(%RDX,%RAX,1),%YMM5,%YMM9;    (6) 
0x1592;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM4,%YMM7,%YMM8;    (6) 
0x1596;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM8,0xe0(%RDX,%RAX,1);    (6) 
0x159f;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0x100(%RAX,%RCX,1),%YMM1,%YMM10;    (6) 
0x15a9;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0x120(%RDX,%RAX,1),%YMM5,%YMM12;    (6) 
0x15b2;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM10,%YMM9,%YMM11;    (6) 
0x15b7;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM11,0x100(%RDX,%RAX,1);    (6) 
0x15c0;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0x120(%RAX,%RCX,1),%YMM1,%YMM13;    (6) 
0x15ca;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM13,%YMM12,%YMM14;    (6) 
0x15cf;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM14,0x120(%RDX,%RAX,1);    (6) 
0x15d8;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:34;ADD	$0x140,%RAX;    (6) 
0x15de;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:34;CMP	$0x7c0,%RAX;    (6) 
0x15e4;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:34;JNE	14b8 <matrixMultiplication+0xa8>;    (6) 
0x15ea;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:34;MOV	0x7c0(%RDX),%R13D;  (7) 
0x15f1;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:34;MOV	(%R9,%RSI,4),%R11D;  (7) 
0x15f5;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;MOV	0x7c0(%RCX),%R12D;  (7) 
0x15fc;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;TEST	%EDI,%EDI;  (7) 
0x15fe;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;MOV	%R13D,%EAX;  (7) 
0x1601;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;CMOVE	%R8D,%EAX;  (7) 
0x1605;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;IMUL	%R11D,%R12D;  (7) 
0x1609;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;MOV	0x7c4(%RDX),%R13D;  (7) 
0x1610;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;ADD	%EAX,%R12D;  (7) 
0x1613;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;MOV	%R12D,0x7c0(%RDX);  (7) 
0x161a;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:36;TEST	%EDI,%EDI;  (7) 
0x161c;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:36;MOV	%R13D,%EAX;  (7) 
0x161f;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;MOV	0x7c4(%RCX),%R12D;  (7) 
0x1626;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;CMOVE	%R8D,%EAX;  (7) 
0x162a;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;IMUL	%R11D,%R12D;  (7) 
0x162e;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;MOV	0x7c8(%RDX),%R13D;  (7) 
0x1635;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;ADD	%EAX,%R12D;  (7) 
0x1638;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;MOV	%R12D,0x7c4(%RDX);  (7) 
0x163f;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:36;TEST	%EDI,%EDI;  (7) 
0x1641;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:36;MOV	%R13D,%EAX;  (7) 
0x1644;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;MOV	0x7c8(%RCX),%R12D;  (7) 
0x164b;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;CMOVE	%R8D,%EAX;  (7) 
0x164f;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;IMUL	%R11D,%R12D;  (7) 
0x1653;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;ADD	%EAX,%R12D;  (7) 
0x1656;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;MOV	%R12D,0x7c8(%RDX);  (7) 
0x165d;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:36;TEST	%EDI,%EDI;  (7) 
0x165f;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:36;MOV	%R8D,%EDI;  (7) 
0x1662;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:36;CMOVNE	0x7cc(%RDX),%EDI;  (7) 
0x1669;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;IMUL	0x7cc(%RCX),%R11D;  (7) 
0x1671;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;INC	%RSI;  (7) 
0x1674;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;ADD	$0x7d0,%RCX;  (7) 
0x167b;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;ADD	%EDI,%R11D;  (7) 
0x167e;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;MOV	%R11D,0x7cc(%RDX);  (7) 
0x1685;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:34;CMP	$0x1f4,%RSI;  (7) 
0x168c;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:34;JNE	1478 <matrixMultiplication+0x68>;  (7) 
0x1692;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:32;ADD	$0x7d0,%RDX;(8) 
0x1699;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:32;ADD	$0x7d0,%R9;(8) 
0x16a0;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:32;CMP	%R14,%RDX;(8) 
0x16a3;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:32;JNE	1473 <matrixMultiplication+0x63>;(8) 
0x16a9;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x958(%RIP),%RSI;
0x16b0;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;
0x16b5;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;
0x16b7;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;VZEROUPPER;
0x16ba;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x985(%RIP),%R13;
0x16c1;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x7d0(%RBX),%R14;
0x16c8;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1080 <.plt.sec@start+0x10>;
0x16cd;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:44;ADD	$0xf4a10,%RBX;
0x16d4;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:46;LEA	-0x7d0(%R14),%R12;(10) 
0x16db;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	(%R12),%EDX;  (9) 
0x16df;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13,%RSI;  (9) 
0x16e2;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (9) 
0x16e7;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (9) 
0x16e9;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1080 <.plt.sec@start+0x10>;  (9) 
0x16ee;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x4(%R12),%EDX;  (9) 
0x16f3;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13,%RSI;  (9) 
0x16f6;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (9) 
0x16fb;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (9) 
0x16fd;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1080 <.plt.sec@start+0x10>;  (9) 
0x1702;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x8(%R12),%EDX;  (9) 
0x1707;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13,%RSI;  (9) 
0x170a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (9) 
0x170f;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (9) 
0x1711;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1080 <.plt.sec@start+0x10>;  (9) 
0x1716;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0xc(%R12),%EDX;  (9) 
0x171b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13,%RSI;  (9) 
0x171e;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (9) 
0x1723;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (9) 
0x1725;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1080 <.plt.sec@start+0x10>;  (9) 
0x172a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x10(%R12),%EDX;  (9) 
0x172f;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13,%RSI;  (9) 
0x1732;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (9) 
0x1737;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (9) 
0x1739;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1080 <.plt.sec@start+0x10>;  (9) 
0x173e;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x14(%R12),%EDX;  (9) 
0x1743;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13,%RSI;  (9) 
0x1746;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (9) 
0x174b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (9) 
0x174d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1080 <.plt.sec@start+0x10>;  (9) 
0x1752;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x18(%R12),%EDX;  (9) 
0x1757;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13,%RSI;  (9) 
0x175a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (9) 
0x175f;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (9) 
0x1761;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1080 <.plt.sec@start+0x10>;  (9) 
0x1766;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x1c(%R12),%EDX;  (9) 
0x176b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13,%RSI;  (9) 
0x176e;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (9) 
0x1773;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (9) 
0x1775;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1080 <.plt.sec@start+0x10>;  (9) 
0x177a;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x20(%R12),%EDX;  (9) 
0x177f;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13,%RSI;  (9) 
0x1782;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (9) 
0x1787;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (9) 
0x1789;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1080 <.plt.sec@start+0x10>;  (9) 
0x178e;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	0x24(%R12),%EDX;  (9) 
0x1793;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	%R13,%RSI;  (9) 
0x1796;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;  (9) 
0x179b;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;  (9) 
0x179d;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;ADD	$0x28,%R12;  (9) 
0x17a1;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1080 <.plt.sec@start+0x10>;  (9) 
0x17a6;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:46;CMP	%R12,%R14;  (9) 
0x17a9;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:46;JNE	16db <matrixMultiplication+0x2cb>;  (9) 
0x17af;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;LEA	0x894(%RIP),%RSI;(10) 
0x17b6;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;MOV	$0x1,%EDI;(10) 
0x17bb;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;XOR	%EAX,%EAX;(10) 
0x17bd;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;ADD	$0x7d0,%R14;(10) 
0x17c4;/usr/include/x86_64-linux-gnu/bits/stdio2.h:107;CALL	1080 <.plt.sec@start+0x10>;(10) 
0x17c9;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:44;CMP	%R14,%RBX;(10) 
0x17cc;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:44;JNE	16d4 <matrixMultiplication+0x2c4>;(10) 
0x17d2;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:52;MOV	0xf4258(%RSP),%RAX;
0x17da;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:52;XOR	%FS:0x28,%RAX;
0x17e3;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:52;JNE	17f2 <matrixMultiplication+0x3e2>;
0x17e5;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:52;LEA	-0x20(%RBP),%RSP;
0x17e9;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:52;POP	%RBX;
0x17ea;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:52;POP	%R12;
0x17ec;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:52;POP	%R13;
0x17ee;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:52;POP	%R14;
0x17f0;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:52;POP	%RBP;
0x17f1;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:52;RET;
0x17f2;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:52;CALL	1070 <.plt.sec@start>;
0x17f7;:0;NOPW	(%RAX,%RAX,1);
