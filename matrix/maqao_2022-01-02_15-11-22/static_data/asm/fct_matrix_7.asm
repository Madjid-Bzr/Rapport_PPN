address;source_location;insn;indent
0x135d;/home/benbachir/Documents/matrix/matrix.c:29;ENDBR64;
0x1361;/home/benbachir/Documents/matrix/matrix.c:29;PUSH	%RBP;
0x1362;/home/benbachir/Documents/matrix/matrix.c:29;MOV	%RSP,%RBP;
0x1365;/home/benbachir/Documents/matrix/matrix.c:29;LEA	-0xf4000(%RSP),%R11;
0x136d;/home/benbachir/Documents/matrix/matrix.c:29;SUB	$0x1000,%RSP;(5) 
0x1374;/home/benbachir/Documents/matrix/matrix.c:29;ORQ	$0,(%RSP);(5) 
0x1379;/home/benbachir/Documents/matrix/matrix.c:29;CMP	%R11,%RSP;(5) 
0x137c;/home/benbachir/Documents/matrix/matrix.c:29;JNE	136d <matrixMultiplication+0x10>;(5) 
0x137e;/home/benbachir/Documents/matrix/matrix.c:29;SUB	$0x270,%RSP;
0x1385;/home/benbachir/Documents/matrix/matrix.c:29;MOV	%RDI,-0xf4268(%RBP);
0x138c;/home/benbachir/Documents/matrix/matrix.c:29;MOV	%RSI,-0xf4270(%RBP);
0x1393;/home/benbachir/Documents/matrix/matrix.c:29;MOV	%FS:0x28,%RAX;
0x139c;/home/benbachir/Documents/matrix/matrix.c:29;MOV	%RAX,-0x8(%RBP);
0x13a0;/home/benbachir/Documents/matrix/matrix.c:29;XOR	%EAX,%EAX;
0x13a2;/home/benbachir/Documents/matrix/matrix.c:30;MOVL	$0,-0xf4254(%RBP);
0x13ac;/home/benbachir/Documents/matrix/matrix.c:32;MOVL	$0,-0xf4260(%RBP);
0x13b6;/home/benbachir/Documents/matrix/matrix.c:32;JMP	148a <matrixMultiplication+0x12d>;
0x13bb;/home/benbachir/Documents/matrix/matrix.c:34;MOVL	$0,-0xf425c(%RBP);(8) 
0x13c5;/home/benbachir/Documents/matrix/matrix.c:34;JMP	1473 <matrixMultiplication+0x116>;(8) 
0x13ca;/home/benbachir/Documents/matrix/matrix.c:36;MOVL	$0,-0xf4258(%RBP);  (7) 
0x13d4;/home/benbachir/Documents/matrix/matrix.c:36;JMP	142e <matrixMultiplication+0xd1>;  (7) 
0x13d6;/home/benbachir/Documents/matrix/matrix.c:37;MOV	-0xf4260(%RBP),%EAX;    (6) 
0x13dc;/home/benbachir/Documents/matrix/matrix.c:37;CLTQ;    (6) 
0x13de;/home/benbachir/Documents/matrix/matrix.c:37;IMUL	$0x7d0,%RAX,%RDX;    (6) 
0x13e5;/home/benbachir/Documents/matrix/matrix.c:37;MOV	-0xf4268(%RBP),%RAX;    (6) 
0x13ec;/home/benbachir/Documents/matrix/matrix.c:37;ADD	%RAX,%RDX;    (6) 
0x13ef;/home/benbachir/Documents/matrix/matrix.c:37;MOV	-0xf4258(%RBP),%EAX;    (6) 
0x13f5;/home/benbachir/Documents/matrix/matrix.c:37;CLTQ;    (6) 
0x13f7;/home/benbachir/Documents/matrix/matrix.c:37;MOV	(%RDX,%RAX,4),%EDX;    (6) 
0x13fa;/home/benbachir/Documents/matrix/matrix.c:37;MOV	-0xf4258(%RBP),%EAX;    (6) 
0x1400;/home/benbachir/Documents/matrix/matrix.c:37;CLTQ;    (6) 
0x1402;/home/benbachir/Documents/matrix/matrix.c:37;IMUL	$0x7d0,%RAX,%RCX;    (6) 
0x1409;/home/benbachir/Documents/matrix/matrix.c:37;MOV	-0xf4270(%RBP),%RAX;    (6) 
0x1410;/home/benbachir/Documents/matrix/matrix.c:37;ADD	%RAX,%RCX;    (6) 
0x1413;/home/benbachir/Documents/matrix/matrix.c:37;MOV	-0xf425c(%RBP),%EAX;    (6) 
0x1419;/home/benbachir/Documents/matrix/matrix.c:37;CLTQ;    (6) 
0x141b;/home/benbachir/Documents/matrix/matrix.c:37;MOV	(%RCX,%RAX,4),%EAX;    (6) 
0x141e;/home/benbachir/Documents/matrix/matrix.c:37;IMUL	%EDX,%EAX;    (6) 
0x1421;/home/benbachir/Documents/matrix/matrix.c:37;ADD	%EAX,-0xf4254(%RBP);    (6) 
0x1427;/home/benbachir/Documents/matrix/matrix.c:36;ADDL	$0x1,-0xf4258(%RBP);    (6) 
0x142e;/home/benbachir/Documents/matrix/matrix.c:36;CMPL	$0x1f3,-0xf4258(%RBP);    (6) 
0x1438;/home/benbachir/Documents/matrix/matrix.c:36;JLE	13d6 <matrixMultiplication+0x79>;    (6) 
0x143a;/home/benbachir/Documents/matrix/matrix.c:39;MOV	-0xf425c(%RBP),%EAX;  (7) 
0x1440;/home/benbachir/Documents/matrix/matrix.c:39;CLTQ;  (7) 
0x1442;/home/benbachir/Documents/matrix/matrix.c:39;MOV	-0xf4260(%RBP),%EDX;  (7) 
0x1448;/home/benbachir/Documents/matrix/matrix.c:39;MOVSXD	%EDX,%RDX;  (7) 
0x144b;/home/benbachir/Documents/matrix/matrix.c:39;IMUL	$0x1f4,%RDX,%RDX;  (7) 
0x1452;/home/benbachir/Documents/matrix/matrix.c:39;ADD	%RAX,%RDX;  (7) 
0x1455;/home/benbachir/Documents/matrix/matrix.c:39;MOV	-0xf4254(%RBP),%EAX;  (7) 
0x145b;/home/benbachir/Documents/matrix/matrix.c:39;MOV	%EAX,-0xf4250(%RBP,%RDX,4);  (7) 
0x1462;/home/benbachir/Documents/matrix/matrix.c:40;MOVL	$0,-0xf4254(%RBP);  (7) 
0x146c;/home/benbachir/Documents/matrix/matrix.c:34;ADDL	$0x1,-0xf425c(%RBP);  (7) 
0x1473;/home/benbachir/Documents/matrix/matrix.c:34;CMPL	$0x1f3,-0xf425c(%RBP);  (7) 
0x147d;/home/benbachir/Documents/matrix/matrix.c:34;JLE	13ca <matrixMultiplication+0x6d>;  (7) 
0x1483;/home/benbachir/Documents/matrix/matrix.c:32;ADDL	$0x1,-0xf4260(%RBP);(8) 
0x148a;/home/benbachir/Documents/matrix/matrix.c:32;CMPL	$0x1f3,-0xf4260(%RBP);(8) 
0x1494;/home/benbachir/Documents/matrix/matrix.c:32;JLE	13bb <matrixMultiplication+0x5e>;(8) 
0x149a;/home/benbachir/Documents/matrix/matrix.c:43;LEA	0xb67(%RIP),%RDI;
0x14a1;/home/benbachir/Documents/matrix/matrix.c:43;CALL	10a0 <.plt.sec@start+0x10>;
0x14a6;/home/benbachir/Documents/matrix/matrix.c:44;MOVL	$0,-0xf4260(%RBP);
0x14b0;/home/benbachir/Documents/matrix/matrix.c:44;JMP	1517 <matrixMultiplication+0x1ba>;
0x14b2;/home/benbachir/Documents/matrix/matrix.c:46;MOVL	$0,-0xf425c(%RBP);(10) 
0x14bc;/home/benbachir/Documents/matrix/matrix.c:46;JMP	14fa <matrixMultiplication+0x19d>;(10) 
0x14be;/home/benbachir/Documents/matrix/matrix.c:48;MOV	-0xf425c(%RBP),%EAX;  (9) 
0x14c4;/home/benbachir/Documents/matrix/matrix.c:48;CLTQ;  (9) 
0x14c6;/home/benbachir/Documents/matrix/matrix.c:48;MOV	-0xf4260(%RBP),%EDX;  (9) 
0x14cc;/home/benbachir/Documents/matrix/matrix.c:48;MOVSXD	%EDX,%RDX;  (9) 
0x14cf;/home/benbachir/Documents/matrix/matrix.c:48;IMUL	$0x1f4,%RDX,%RDX;  (9) 
0x14d6;/home/benbachir/Documents/matrix/matrix.c:48;ADD	%RDX,%RAX;  (9) 
0x14d9;/home/benbachir/Documents/matrix/matrix.c:48;MOV	-0xf4250(%RBP,%RAX,4),%EAX;  (9) 
0x14e0;/home/benbachir/Documents/matrix/matrix.c:48;MOV	%EAX,%ESI;  (9) 
0x14e2;/home/benbachir/Documents/matrix/matrix.c:48;LEA	0xb5c(%RIP),%RDI;  (9) 
0x14e9;/home/benbachir/Documents/matrix/matrix.c:48;MOV	$0,%EAX;  (9) 
0x14ee;/home/benbachir/Documents/matrix/matrix.c:48;CALL	10c0 <.plt.sec@start+0x30>;  (9) 
0x14f3;/home/benbachir/Documents/matrix/matrix.c:46;ADDL	$0x1,-0xf425c(%RBP);  (9) 
0x14fa;/home/benbachir/Documents/matrix/matrix.c:46;CMPL	$0x1f3,-0xf425c(%RBP);  (9) 
0x1504;/home/benbachir/Documents/matrix/matrix.c:46;JLE	14be <matrixMultiplication+0x161>;  (9) 
0x1506;/home/benbachir/Documents/matrix/matrix.c:50;MOV	$0xa,%EDI;(10) 
0x150b;/home/benbachir/Documents/matrix/matrix.c:50;CALL	1090 <.plt.sec@start>;(10) 
0x1510;/home/benbachir/Documents/matrix/matrix.c:44;ADDL	$0x1,-0xf4260(%RBP);(10) 
0x1517;/home/benbachir/Documents/matrix/matrix.c:44;CMPL	$0x1f3,-0xf4260(%RBP);(10) 
0x1521;/home/benbachir/Documents/matrix/matrix.c:44;JLE	14b2 <matrixMultiplication+0x155>;(10) 
0x1523;/home/benbachir/Documents/matrix/matrix.c:52;NOP;
0x1524;/home/benbachir/Documents/matrix/matrix.c:52;MOV	-0x8(%RBP),%RAX;
0x1528;/home/benbachir/Documents/matrix/matrix.c:52;XOR	%FS:0x28,%RAX;
0x1531;/home/benbachir/Documents/matrix/matrix.c:52;JE	1538 <matrixMultiplication+0x1db>;
0x1533;/home/benbachir/Documents/matrix/matrix.c:52;CALL	10b0 <.plt.sec@start+0x20>;
0x1538;/home/benbachir/Documents/matrix/matrix.c:52;LEAVE;
0x1539;/home/benbachir/Documents/matrix/matrix.c:52;RET;
0x153a;:0;NOPW	(%RAX,%RAX,1);
