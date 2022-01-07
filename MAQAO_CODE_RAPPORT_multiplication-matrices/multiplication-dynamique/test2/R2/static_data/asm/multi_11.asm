address;source_location;insn;indent
0x12f0;/home/arezki/multiplication/test2/mat.c:35;MOV	(%R12),%RSI;
0x12f4;/home/arezki/multiplication/test2/mat.c:35;LEA	0x4(%RCX),%R13;
0x12f8;/home/arezki/multiplication/test2/mat.c:35;LEA	0x20(%RSI),%R9;
0x12fc;/home/arezki/multiplication/test2/mat.c:35;CMP	%R9,%RDX;
0x12ff;/home/arezki/multiplication/test2/mat.c:35;SETAE	%R11B;
0x1303;/home/arezki/multiplication/test2/mat.c:35;CMP	-0x40(%RBP),%RSI;
0x1307;/home/arezki/multiplication/test2/mat.c:35;SETAE	%R10B;
0x130b;/home/arezki/multiplication/test2/mat.c:35;OR	%R10B,%R11B;
0x130e;/home/arezki/multiplication/test2/mat.c:35;JE	1830 <mul_matrix+0x650>;
0x1314;/home/arezki/multiplication/test2/mat.c:35;CMP	%R13,%RDX;
0x1317;/home/arezki/multiplication/test2/mat.c:35;SETAE	%R8B;
0x131b;/home/arezki/multiplication/test2/mat.c:35;CMP	%RCX,-0x48(%RBP);
0x131f;/home/arezki/multiplication/test2/mat.c:35;SETBE	%AL;
0x1322;/home/arezki/multiplication/test2/mat.c:35;OR	%R8D,%EAX;
0x1325;/home/arezki/multiplication/test2/mat.c:35;CMP	$0xb,%R15D;
0x1329;/home/arezki/multiplication/test2/mat.c:35;SETA	%R9B;
0x132d;/home/arezki/multiplication/test2/mat.c:35;TEST	%R9B,%AL;
0x1330;/home/arezki/multiplication/test2/mat.c:35;JE	1830 <mul_matrix+0x650>;
0x1336;/home/arezki/multiplication/test2/mat.c:35;MOV	-0x58(%RBP),%R11D;
0x133a;/home/arezki/multiplication/test2/mat.c:35;CMP	%R11D,-0x4c(%RBP);
0x133e;/home/arezki/multiplication/test2/mat.c:35;JA	1a10 <mul_matrix+0x830>;
0x1344;/home/arezki/multiplication/test2/mat.c:35;TEST	%EBX,%EBX;
0x1346;/home/arezki/multiplication/test2/mat.c:35;JE	19f8 <mul_matrix+0x818>;
0x134c;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%RDX);
0x1352;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%EAX;
0x1354;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RSI),%EAX;
0x1357;/home/arezki/multiplication/test2/mat.c:35;MOV	%EAX,(%RDX);
0x1359;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x1,%EBX;
0x135c;/home/arezki/multiplication/test2/mat.c:35;JE	19e8 <mul_matrix+0x808>;
0x1362;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,0x4(%RDX);
0x1369;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R9D;
0x136c;/home/arezki/multiplication/test2/mat.c:35;IMUL	0x4(%RSI),%R9D;
0x1371;/home/arezki/multiplication/test2/mat.c:35;MOV	%R9D,0x4(%RDX);
0x1375;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x2,%EBX;
0x1378;/home/arezki/multiplication/test2/mat.c:35;JE	1a00 <mul_matrix+0x820>;
0x137e;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,0x8(%RDX);
0x1385;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R11D;
0x1388;/home/arezki/multiplication/test2/mat.c:35;IMUL	0x8(%RSI),%R11D;
0x138d;/home/arezki/multiplication/test2/mat.c:35;MOV	%R11D,0x8(%RDX);
0x1391;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x3,%EBX;
0x1394;/home/arezki/multiplication/test2/mat.c:35;JE	1a30 <mul_matrix+0x850>;
0x139a;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,0xc(%RDX);
0x13a1;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R10D;
0x13a4;/home/arezki/multiplication/test2/mat.c:35;IMUL	0xc(%RSI),%R10D;
0x13a9;/home/arezki/multiplication/test2/mat.c:35;MOV	%R10D,0xc(%RDX);
0x13ad;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x4,%EBX;
0x13b0;/home/arezki/multiplication/test2/mat.c:35;JE	1a40 <mul_matrix+0x860>;
0x13b6;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,0x10(%RDX);
0x13bd;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R8D;
0x13c0;/home/arezki/multiplication/test2/mat.c:35;IMUL	0x10(%RSI),%R8D;
0x13c5;/home/arezki/multiplication/test2/mat.c:35;MOV	%R8D,0x10(%RDX);
0x13c9;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x5,%EBX;
0x13cc;/home/arezki/multiplication/test2/mat.c:35;JE	1a50 <mul_matrix+0x870>;
0x13d2;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,0x14(%RDX);
0x13d9;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%EAX;
0x13db;/home/arezki/multiplication/test2/mat.c:35;IMUL	0x14(%RSI),%EAX;
0x13df;/home/arezki/multiplication/test2/mat.c:35;MOV	%EAX,0x14(%RDX);
0x13e2;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x7,%EBX;
0x13e5;/home/arezki/multiplication/test2/mat.c:35;JNE	1a60 <mul_matrix+0x880>;
0x13eb;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,0x18(%RDX);
0x13f2;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R9D;
0x13f5;/home/arezki/multiplication/test2/mat.c:32;MOV	$0x7,%R8D;
0x13fb;/home/arezki/multiplication/test2/mat.c:35;IMUL	0x18(%RSI),%R9D;
0x1400;/home/arezki/multiplication/test2/mat.c:35;MOV	%R9D,0x18(%RDX);
0x1404;/home/arezki/multiplication/test2/mat.c:35;MOV	-0x60(%RBP),%R11;
0x1408;/home/arezki/multiplication/test2/mat.c:35;VPBROADCASTD	(%RCX),%YMM0;
0x140d;/home/arezki/multiplication/test2/mat.c:35;MOV	$0x1,%R10D;
0x1413;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,(%RDI);
0x1417;/home/arezki/multiplication/test2/mat.c:33;MOV	$0x20,%EAX;
0x141c;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RSI,%R11,1),%R9;
0x1420;/home/arezki/multiplication/test2/mat.c:33;LEA	-0x1(%R14),%R11D;
0x1424;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	(%R9),%YMM0,%YMM2;
0x1429;/home/arezki/multiplication/test2/mat.c:35;AND	$0x7,%R11D;
0x142d;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM2,(%RDI);
0x1431;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x1,%R14D;
0x1435;/home/arezki/multiplication/test2/mat.c:35;JBE	15f0 <mul_matrix+0x410>;
0x143b;/home/arezki/multiplication/test2/mat.c:35;TEST	%R11D,%R11D;
0x143e;/home/arezki/multiplication/test2/mat.c:35;JE	1524 <mul_matrix+0x344>;
0x1444;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x1,%R11D;
0x1448;/home/arezki/multiplication/test2/mat.c:35;JE	1503 <mul_matrix+0x323>;
0x144e;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x2,%R11D;
0x1452;/home/arezki/multiplication/test2/mat.c:35;JE	14eb <mul_matrix+0x30b>;
0x1458;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x3,%R11D;
0x145c;/home/arezki/multiplication/test2/mat.c:35;JE	14d3 <mul_matrix+0x2f3>;
0x145e;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x4,%R11D;
0x1462;/home/arezki/multiplication/test2/mat.c:35;JE	14bb <mul_matrix+0x2db>;
0x1464;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x5,%R11D;
0x1468;/home/arezki/multiplication/test2/mat.c:35;JE	14a3 <mul_matrix+0x2c3>;
0x146a;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x6,%R11D;
0x146e;/home/arezki/multiplication/test2/mat.c:35;JE	148b <mul_matrix+0x2ab>;
0x1470;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,0x20(%RDI);
0x1475;/home/arezki/multiplication/test2/mat.c:33;MOV	$0x2,%R10D;
0x147b;/home/arezki/multiplication/test2/mat.c:33;MOV	$0x40,%EAX;
0x1480;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	0x20(%R9),%YMM0,%YMM3;
0x1486;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM3,0x20(%RDI);
0x148b;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,(%RDI,%RAX,1);
0x1490;/home/arezki/multiplication/test2/mat.c:33;ADD	$0x1,%R10D;
0x1494;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	(%R9,%RAX,1),%YMM0,%YMM4;
0x149a;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM4,(%RDI,%RAX,1);
0x149f;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x20,%RAX;
0x14a3;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,(%RDI,%RAX,1);
0x14a8;/home/arezki/multiplication/test2/mat.c:33;ADD	$0x1,%R10D;
0x14ac;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	(%R9,%RAX,1),%YMM0,%YMM5;
0x14b2;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM5,(%RDI,%RAX,1);
0x14b7;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x20,%RAX;
0x14bb;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,(%RDI,%RAX,1);
0x14c0;/home/arezki/multiplication/test2/mat.c:33;ADD	$0x1,%R10D;
0x14c4;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	(%R9,%RAX,1),%YMM0,%YMM6;
0x14ca;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM6,(%RDI,%RAX,1);
0x14cf;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x20,%RAX;
0x14d3;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,(%RDI,%RAX,1);
0x14d8;/home/arezki/multiplication/test2/mat.c:33;ADD	$0x1,%R10D;
0x14dc;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	(%R9,%RAX,1),%YMM0,%YMM7;
0x14e2;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM7,(%RDI,%RAX,1);
0x14e7;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x20,%RAX;
0x14eb;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,(%RDI,%RAX,1);
0x14f0;/home/arezki/multiplication/test2/mat.c:33;ADD	$0x1,%R10D;
0x14f4;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	(%R9,%RAX,1),%YMM0,%YMM8;
0x14fa;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM8,(%RDI,%RAX,1);
0x14ff;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x20,%RAX;
0x1503;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x1,%R10D;
0x1507;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,(%RDI,%RAX,1);
0x150c;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	(%R9,%RAX,1),%YMM0,%YMM9;
0x1512;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM9,(%RDI,%RAX,1);
0x1517;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x20,%RAX;
0x151b;/home/arezki/multiplication/test2/mat.c:35;CMP	%R10D,%R14D;
0x151e;/home/arezki/multiplication/test2/mat.c:35;JBE	15f0 <mul_matrix+0x410>;
0x1524;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x8,%R10D;  (13) 
0x1528;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,(%RDI,%RAX,1);  (13) 
0x152d;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	(%R9,%RAX,1),%YMM0,%YMM10;  (13) 
0x1533;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,0x20(%RDI,%RAX,1);  (13) 
0x1539;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM10,(%RDI,%RAX,1);  (13) 
0x153e;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	0x20(%R9,%RAX,1),%YMM0,%YMM11;  (13) 
0x1545;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,0x40(%RDI,%RAX,1);  (13) 
0x154b;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM11,0x20(%RDI,%RAX,1);  (13) 
0x1551;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	0x40(%R9,%RAX,1),%YMM0,%YMM12;  (13) 
0x1558;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,0x60(%RDI,%RAX,1);  (13) 
0x155e;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM12,0x40(%RDI,%RAX,1);  (13) 
0x1564;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	0x60(%R9,%RAX,1),%YMM0,%YMM13;  (13) 
0x156b;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,0x80(%RDI,%RAX,1);  (13) 
0x1574;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM13,0x60(%RDI,%RAX,1);  (13) 
0x157a;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	0x80(%R9,%RAX,1),%YMM0,%YMM14;  (13) 
0x1584;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,0xa0(%RDI,%RAX,1);  (13) 
0x158d;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM14,0x80(%RDI,%RAX,1);  (13) 
0x1596;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	0xa0(%R9,%RAX,1),%YMM0,%YMM15;  (13) 
0x15a0;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,0xc0(%RDI,%RAX,1);  (13) 
0x15a9;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM15,0xa0(%RDI,%RAX,1);  (13) 
0x15b2;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	0xc0(%R9,%RAX,1),%YMM0,%YMM2;  (13) 
0x15bc;/home/arezki/multiplication/test2/mat.c:33;VMOVDQA	%YMM1,0xe0(%RDI,%RAX,1);  (13) 
0x15c5;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM2,0xc0(%RDI,%RAX,1);  (13) 
0x15ce;/home/arezki/multiplication/test2/mat.c:35;VPMULLD	0xe0(%R9,%RAX,1),%YMM0,%YMM3;  (13) 
0x15d8;/home/arezki/multiplication/test2/mat.c:35;VMOVDQA	%YMM3,0xe0(%RDI,%RAX,1);  (13) 
0x15e1;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x100,%RAX;  (13) 
0x15e7;/home/arezki/multiplication/test2/mat.c:35;CMP	%R10D,%R14D;  (13) 
0x15ea;/home/arezki/multiplication/test2/mat.c:35;JA	1524 <mul_matrix+0x344>;  (13) 
0x15f0;/home/arezki/multiplication/test2/mat.c:35;MOV	-0x54(%RBP),%R9D;
0x15f4;/home/arezki/multiplication/test2/mat.c:35;ADD	%R9D,%R8D;
0x15f7;/home/arezki/multiplication/test2/mat.c:35;CMP	%R9D,-0x50(%RBP);
0x15fb;/home/arezki/multiplication/test2/mat.c:35;JE	17f0 <mul_matrix+0x610>;
0x1601;/home/arezki/multiplication/test2/mat.c:33;MOVSXD	%R8D,%R11;
0x1604;/home/arezki/multiplication/test2/mat.c:32;ADD	$0x1,%R8D;
0x1608;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RDX,%R11,4),%R10;
0x160c;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%R10);
0x1613;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RSI,%R11,4),%EAX;
0x1617;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RCX),%EAX;
0x161a;/home/arezki/multiplication/test2/mat.c:35;MOV	%EAX,(%R10);
0x161d;/home/arezki/multiplication/test2/mat.c:32;CMP	%R15D,%R8D;
0x1620;/home/arezki/multiplication/test2/mat.c:32;JGE	17f0 <mul_matrix+0x610>;
0x1626;/home/arezki/multiplication/test2/mat.c:33;MOVSXD	%R8D,%R11;
0x1629;/home/arezki/multiplication/test2/mat.c:32;LEA	0x1(%R8),%EAX;
0x162d;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RDX,%R11,4),%R9;
0x1631;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%R9);
0x1638;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RSI,%R11,4),%R10D;
0x163c;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RCX),%R10D;
0x1640;/home/arezki/multiplication/test2/mat.c:35;MOV	%R10D,(%R9);
0x1643;/home/arezki/multiplication/test2/mat.c:32;CMP	%EAX,%R15D;
0x1646;/home/arezki/multiplication/test2/mat.c:32;JLE	17f0 <mul_matrix+0x610>;
0x164c;/home/arezki/multiplication/test2/mat.c:33;CLTQ;
0x164e;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RDX,%RAX,4),%R11;
0x1652;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%R11);
0x1659;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RSI,%RAX,4),%R9D;
0x165d;/home/arezki/multiplication/test2/mat.c:32;LEA	0x2(%R8),%EAX;
0x1661;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RCX),%R9D;
0x1665;/home/arezki/multiplication/test2/mat.c:35;MOV	%R9D,(%R11);
0x1668;/home/arezki/multiplication/test2/mat.c:32;CMP	%EAX,%R15D;
0x166b;/home/arezki/multiplication/test2/mat.c:32;JLE	17f0 <mul_matrix+0x610>;
0x1671;/home/arezki/multiplication/test2/mat.c:33;CLTQ;
0x1673;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RDX,%RAX,4),%R10;
0x1677;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%R10);
0x167e;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RSI,%RAX,4),%R11D;
0x1682;/home/arezki/multiplication/test2/mat.c:32;LEA	0x3(%R8),%EAX;
0x1686;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RCX),%R11D;
0x168a;/home/arezki/multiplication/test2/mat.c:35;MOV	%R11D,(%R10);
0x168d;/home/arezki/multiplication/test2/mat.c:32;CMP	%EAX,%R15D;
0x1690;/home/arezki/multiplication/test2/mat.c:32;JLE	17f0 <mul_matrix+0x610>;
0x1696;/home/arezki/multiplication/test2/mat.c:33;CLTQ;
0x1698;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RDX,%RAX,4),%R9;
0x169c;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%R9);
0x16a3;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RSI,%RAX,4),%R10D;
0x16a7;/home/arezki/multiplication/test2/mat.c:32;LEA	0x4(%R8),%EAX;
0x16ab;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RCX),%R10D;
0x16af;/home/arezki/multiplication/test2/mat.c:35;MOV	%R10D,(%R9);
0x16b2;/home/arezki/multiplication/test2/mat.c:32;CMP	%EAX,%R15D;
0x16b5;/home/arezki/multiplication/test2/mat.c:32;JLE	17f0 <mul_matrix+0x610>;
0x16bb;/home/arezki/multiplication/test2/mat.c:33;CLTQ;
0x16bd;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RDX,%RAX,4),%R11;
0x16c1;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%R11);
0x16c8;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RSI,%RAX,4),%R9D;
0x16cc;/home/arezki/multiplication/test2/mat.c:32;LEA	0x5(%R8),%EAX;
0x16d0;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RCX),%R9D;
0x16d4;/home/arezki/multiplication/test2/mat.c:35;MOV	%R9D,(%R11);
0x16d7;/home/arezki/multiplication/test2/mat.c:32;CMP	%EAX,%R15D;
0x16da;/home/arezki/multiplication/test2/mat.c:32;JLE	17f0 <mul_matrix+0x610>;
0x16e0;/home/arezki/multiplication/test2/mat.c:33;CLTQ;
0x16e2;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RDX,%RAX,4),%R10;
0x16e6;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%R10);
0x16ed;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RSI,%RAX,4),%R11D;
0x16f1;/home/arezki/multiplication/test2/mat.c:32;LEA	0x6(%R8),%EAX;
0x16f5;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RCX),%R11D;
0x16f9;/home/arezki/multiplication/test2/mat.c:35;MOV	%R11D,(%R10);
0x16fc;/home/arezki/multiplication/test2/mat.c:32;CMP	%EAX,%R15D;
0x16ff;/home/arezki/multiplication/test2/mat.c:32;JLE	17f0 <mul_matrix+0x610>;
0x1705;/home/arezki/multiplication/test2/mat.c:33;CLTQ;
0x1707;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RDX,%RAX,4),%R9;
0x170b;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%R9);
0x1712;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RSI,%RAX,4),%R10D;
0x1716;/home/arezki/multiplication/test2/mat.c:32;LEA	0x7(%R8),%EAX;
0x171a;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RCX),%R10D;
0x171e;/home/arezki/multiplication/test2/mat.c:35;MOV	%R10D,(%R9);
0x1721;/home/arezki/multiplication/test2/mat.c:32;CMP	%EAX,%R15D;
0x1724;/home/arezki/multiplication/test2/mat.c:32;JLE	17f0 <mul_matrix+0x610>;
0x172a;/home/arezki/multiplication/test2/mat.c:33;CLTQ;
0x172c;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RDX,%RAX,4),%R11;
0x1730;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%R11);
0x1737;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RSI,%RAX,4),%R9D;
0x173b;/home/arezki/multiplication/test2/mat.c:32;LEA	0x8(%R8),%EAX;
0x173f;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RCX),%R9D;
0x1743;/home/arezki/multiplication/test2/mat.c:35;MOV	%R9D,(%R11);
0x1746;/home/arezki/multiplication/test2/mat.c:32;CMP	%EAX,%R15D;
0x1749;/home/arezki/multiplication/test2/mat.c:32;JLE	17f0 <mul_matrix+0x610>;
0x174f;/home/arezki/multiplication/test2/mat.c:33;CLTQ;
0x1751;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RDX,%RAX,4),%R10;
0x1755;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%R10);
0x175c;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RSI,%RAX,4),%R11D;
0x1760;/home/arezki/multiplication/test2/mat.c:32;LEA	0x9(%R8),%EAX;
0x1764;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RCX),%R11D;
0x1768;/home/arezki/multiplication/test2/mat.c:35;MOV	%R11D,(%R10);
0x176b;/home/arezki/multiplication/test2/mat.c:32;CMP	%EAX,%R15D;
0x176e;/home/arezki/multiplication/test2/mat.c:32;JLE	17f0 <mul_matrix+0x610>;
0x1774;/home/arezki/multiplication/test2/mat.c:33;CLTQ;
0x1776;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RDX,%RAX,4),%R9;
0x177a;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%R9);
0x1781;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RSI,%RAX,4),%R10D;
0x1785;/home/arezki/multiplication/test2/mat.c:32;LEA	0xa(%R8),%EAX;
0x1789;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RCX),%R10D;
0x178d;/home/arezki/multiplication/test2/mat.c:35;MOV	%R10D,(%R9);
0x1790;/home/arezki/multiplication/test2/mat.c:32;CMP	%EAX,%R15D;
0x1793;/home/arezki/multiplication/test2/mat.c:32;JLE	17f0 <mul_matrix+0x610>;
0x1795;/home/arezki/multiplication/test2/mat.c:33;CLTQ;
0x1797;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RDX,%RAX,4),%R11;
0x179b;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%R11);
0x17a2;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RSI,%RAX,4),%R9D;
0x17a6;/home/arezki/multiplication/test2/mat.c:32;LEA	0xb(%R8),%EAX;
0x17aa;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RCX),%R9D;
0x17ae;/home/arezki/multiplication/test2/mat.c:35;MOV	%R9D,(%R11);
0x17b1;/home/arezki/multiplication/test2/mat.c:32;CMP	%EAX,%R15D;
0x17b4;/home/arezki/multiplication/test2/mat.c:32;JLE	17f0 <mul_matrix+0x610>;
0x17b6;/home/arezki/multiplication/test2/mat.c:33;CLTQ;
0x17b8;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RDX,%RAX,4),%R10;
0x17bc;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%R10);
0x17c3;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RSI,%RAX,4),%R11D;
0x17c7;/home/arezki/multiplication/test2/mat.c:32;LEA	0xc(%R8),%EAX;
0x17cb;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RCX),%R11D;
0x17cf;/home/arezki/multiplication/test2/mat.c:35;MOV	%R11D,(%R10);
0x17d2;/home/arezki/multiplication/test2/mat.c:32;CMP	%EAX,%R15D;
0x17d5;/home/arezki/multiplication/test2/mat.c:32;JLE	17f0 <mul_matrix+0x610>;
0x17d7;/home/arezki/multiplication/test2/mat.c:33;CLTQ;
0x17d9;/home/arezki/multiplication/test2/mat.c:33;LEA	(%RDX,%RAX,4),%R8;
0x17dd;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%R8);
0x17e4;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RSI,%RAX,4),%ESI;
0x17e7;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RCX),%ESI;
0x17ea;/home/arezki/multiplication/test2/mat.c:35;MOV	%ESI,(%R8);
0x17ed;/home/arezki/multiplication/test2/mat.c:35;NOPL	(%RAX);
0x17f0;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x8,%R12;
0x17f4;/home/arezki/multiplication/test2/mat.c:35;MOV	%R13,%RCX;
0x17f7;/home/arezki/multiplication/test2/mat.c:31;CMP	%R13,-0x38(%RBP);
0x17fb;/home/arezki/multiplication/test2/mat.c:31;JNE	12f0 <mul_matrix+0x110>;
0x1830;/home/arezki/multiplication/test2/mat.c:40;MOV	-0x70(%RBP),%R9;
0x1834;/home/arezki/multiplication/test2/mat.c:35;XOR	%EAX,%EAX;
0x1836;/home/arezki/multiplication/test2/mat.c:35;LEA	-0x4(%R9),%R10;
0x183a;/home/arezki/multiplication/test2/mat.c:35;SHR	$0x2,%R10;
0x183e;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x1,%R10;
0x1842;/home/arezki/multiplication/test2/mat.c:35;AND	$0x7,%R10D;
0x1846;/home/arezki/multiplication/test2/mat.c:35;JE	1921 <mul_matrix+0x741>;
0x184c;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x1,%R10;
0x1850;/home/arezki/multiplication/test2/mat.c:35;JE	1900 <mul_matrix+0x720>;
0x1856;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x2,%R10;
0x185a;/home/arezki/multiplication/test2/mat.c:35;JE	18e9 <mul_matrix+0x709>;
0x1860;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x3,%R10;
0x1864;/home/arezki/multiplication/test2/mat.c:35;JE	18d2 <mul_matrix+0x6f2>;
0x1866;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x4,%R10;
0x186a;/home/arezki/multiplication/test2/mat.c:35;JE	18bb <mul_matrix+0x6db>;
0x186c;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x5,%R10;
0x1870;/home/arezki/multiplication/test2/mat.c:35;JE	18a4 <mul_matrix+0x6c4>;
0x1872;/home/arezki/multiplication/test2/mat.c:35;CMP	$0x6,%R10;
0x1876;/home/arezki/multiplication/test2/mat.c:35;JE	188d <mul_matrix+0x6ad>;
0x1878;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%RDX);
0x187e;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R11D;
0x1881;/home/arezki/multiplication/test2/mat.c:35;MOV	$0x4,%EAX;
0x1886;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RSI),%R11D;
0x188a;/home/arezki/multiplication/test2/mat.c:35;MOV	%R11D,(%RDX);
0x188d;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%RDX,%RAX,1);
0x1894;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R8D;
0x1897;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RSI,%RAX,1),%R8D;
0x189c;/home/arezki/multiplication/test2/mat.c:35;MOV	%R8D,(%RDX,%RAX,1);
0x18a0;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x4,%RAX;
0x18a4;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%RDX,%RAX,1);
0x18ab;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R9D;
0x18ae;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RSI,%RAX,1),%R9D;
0x18b3;/home/arezki/multiplication/test2/mat.c:35;MOV	%R9D,(%RDX,%RAX,1);
0x18b7;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x4,%RAX;
0x18bb;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%RDX,%RAX,1);
0x18c2;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R10D;
0x18c5;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RSI,%RAX,1),%R10D;
0x18ca;/home/arezki/multiplication/test2/mat.c:35;MOV	%R10D,(%RDX,%RAX,1);
0x18ce;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x4,%RAX;
0x18d2;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%RDX,%RAX,1);
0x18d9;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R11D;
0x18dc;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RSI,%RAX,1),%R11D;
0x18e1;/home/arezki/multiplication/test2/mat.c:35;MOV	%R11D,(%RDX,%RAX,1);
0x18e5;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x4,%RAX;
0x18e9;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%RDX,%RAX,1);
0x18f0;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R8D;
0x18f3;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RSI,%RAX,1),%R8D;
0x18f8;/home/arezki/multiplication/test2/mat.c:35;MOV	%R8D,(%RDX,%RAX,1);
0x18fc;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x4,%RAX;
0x1900;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%RDX,%RAX,1);
0x1907;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R9D;
0x190a;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RSI,%RAX,1),%R9D;
0x190f;/home/arezki/multiplication/test2/mat.c:35;MOV	%R9D,(%RDX,%RAX,1);
0x1913;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x4,%RAX;
0x1917;/home/arezki/multiplication/test2/mat.c:32;CMP	%RAX,-0x70(%RBP);
0x191b;/home/arezki/multiplication/test2/mat.c:32;JE	17f0 <mul_matrix+0x610>;
0x1921;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%RDX,%RAX,1);  (10) 
0x1928;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R10D;  (10) 
0x192b;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RSI,%RAX,1),%R10D;  (10) 
0x1930;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,0x4(%RDX,%RAX,1);  (10) 
0x1938;/home/arezki/multiplication/test2/mat.c:35;MOV	%R10D,(%RDX,%RAX,1);  (10) 
0x193c;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R11D;  (10) 
0x193f;/home/arezki/multiplication/test2/mat.c:35;IMUL	0x4(%RSI,%RAX,1),%R11D;  (10) 
0x1945;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,0x8(%RDX,%RAX,1);  (10) 
0x194d;/home/arezki/multiplication/test2/mat.c:35;MOV	%R11D,0x4(%RDX,%RAX,1);  (10) 
0x1952;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R8D;  (10) 
0x1955;/home/arezki/multiplication/test2/mat.c:35;IMUL	0x8(%RSI,%RAX,1),%R8D;  (10) 
0x195b;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,0xc(%RDX,%RAX,1);  (10) 
0x1963;/home/arezki/multiplication/test2/mat.c:35;MOV	%R8D,0x8(%RDX,%RAX,1);  (10) 
0x1968;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R9D;  (10) 
0x196b;/home/arezki/multiplication/test2/mat.c:35;IMUL	0xc(%RSI,%RAX,1),%R9D;  (10) 
0x1971;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,0x10(%RDX,%RAX,1);  (10) 
0x1979;/home/arezki/multiplication/test2/mat.c:35;MOV	%R9D,0xc(%RDX,%RAX,1);  (10) 
0x197e;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R10D;  (10) 
0x1981;/home/arezki/multiplication/test2/mat.c:35;IMUL	0x10(%RSI,%RAX,1),%R10D;  (10) 
0x1987;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,0x14(%RDX,%RAX,1);  (10) 
0x198f;/home/arezki/multiplication/test2/mat.c:35;MOV	%R10D,0x10(%RDX,%RAX,1);  (10) 
0x1994;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R11D;  (10) 
0x1997;/home/arezki/multiplication/test2/mat.c:35;IMUL	0x14(%RSI,%RAX,1),%R11D;  (10) 
0x199d;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,0x18(%RDX,%RAX,1);  (10) 
0x19a5;/home/arezki/multiplication/test2/mat.c:35;MOV	%R11D,0x14(%RDX,%RAX,1);  (10) 
0x19aa;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R8D;  (10) 
0x19ad;/home/arezki/multiplication/test2/mat.c:35;IMUL	0x18(%RSI,%RAX,1),%R8D;  (10) 
0x19b3;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,0x1c(%RDX,%RAX,1);  (10) 
0x19bb;/home/arezki/multiplication/test2/mat.c:35;MOV	%R8D,0x18(%RDX,%RAX,1);  (10) 
0x19c0;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R9D;  (10) 
0x19c3;/home/arezki/multiplication/test2/mat.c:35;IMUL	0x1c(%RSI,%RAX,1),%R9D;  (10) 
0x19c9;/home/arezki/multiplication/test2/mat.c:35;MOV	%R9D,0x1c(%RDX,%RAX,1);  (10) 
0x19ce;/home/arezki/multiplication/test2/mat.c:35;ADD	$0x20,%RAX;  (10) 
0x19d2;/home/arezki/multiplication/test2/mat.c:32;CMP	%RAX,-0x70(%RBP);  (10) 
0x19d6;/home/arezki/multiplication/test2/mat.c:32;JNE	1921 <mul_matrix+0x741>;  (10) 
0x19dc;/home/arezki/multiplication/test2/mat.c:32;JMP	17f0 <mul_matrix+0x610>;
0x19e8;/home/arezki/multiplication/test2/mat.c:32;MOV	$0x1,%R8D;
0x19ee;/home/arezki/multiplication/test2/mat.c:32;JMP	1404 <mul_matrix+0x224>;
0x19f8;/home/arezki/multiplication/test2/mat.c:32;XOR	%R8D,%R8D;
0x19fb;/home/arezki/multiplication/test2/mat.c:32;JMP	1404 <mul_matrix+0x224>;
0x1a00;/home/arezki/multiplication/test2/mat.c:32;MOV	$0x2,%R8D;
0x1a06;/home/arezki/multiplication/test2/mat.c:32;JMP	1404 <mul_matrix+0x224>;
0x1a10;/home/arezki/multiplication/test2/mat.c:33;MOVL	$0,(%RDX);
0x1a16;/home/arezki/multiplication/test2/mat.c:35;MOV	(%RCX),%R10D;
0x1a19;/home/arezki/multiplication/test2/mat.c:32;MOV	$0x1,%R8D;
0x1a1f;/home/arezki/multiplication/test2/mat.c:35;IMUL	(%RSI),%R10D;
0x1a23;/home/arezki/multiplication/test2/mat.c:35;MOV	%R10D,(%RDX);
0x1a26;/home/arezki/multiplication/test2/mat.c:35;JMP	1626 <mul_matrix+0x446>;
0x1a30;/home/arezki/multiplication/test2/mat.c:32;MOV	$0x3,%R8D;
0x1a36;/home/arezki/multiplication/test2/mat.c:32;JMP	1404 <mul_matrix+0x224>;
0x1a40;/home/arezki/multiplication/test2/mat.c:32;MOV	$0x4,%R8D;
0x1a46;/home/arezki/multiplication/test2/mat.c:32;JMP	1404 <mul_matrix+0x224>;
0x1a50;/home/arezki/multiplication/test2/mat.c:32;MOV	$0x5,%R8D;
0x1a56;/home/arezki/multiplication/test2/mat.c:32;JMP	1404 <mul_matrix+0x224>;
0x1a60;/home/arezki/multiplication/test2/mat.c:32;MOV	$0x6,%R8D;
0x1a66;/home/arezki/multiplication/test2/mat.c:32;JMP	1404 <mul_matrix+0x224>;
