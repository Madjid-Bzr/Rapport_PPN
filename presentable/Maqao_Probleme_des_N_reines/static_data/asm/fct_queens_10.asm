address;source_location;insn;indent
0x144a;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:19;ENDBR64;
0x144e;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:19;PUSH	%RBP;
0x144f;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:19;MOV	%RSP,%RBP;
0x1452;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:19;SUB	$0x20,%RSP;
0x1456;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:19;MOV	%EDI,-0x14(%RBP);
0x1459;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:19;MOV	%ESI,-0x18(%RBP);
0x145c;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:19;MOV	%RDX,-0x20(%RBP);
0x1460;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:23;MOVL	$0,-0x4(%RBP);
0x1467;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:23;JMP	14b9 <check_column_ok+0x6f>;
0x1469;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;MOV	-0x4(%RBP),%EAX;(2) 
0x146c;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;CLTQ;(2) 
0x146e;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;LEA	(,%RAX,4),%RDX;(2) 
0x1476;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;MOV	-0x20(%RBP),%RAX;(2) 
0x147a;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;ADD	%RDX,%RAX;(2) 
0x147d;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;MOV	(%RAX),%EAX;(2) 
0x147f;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;CMP	%EAX,-0x18(%RBP);(2) 
0x1482;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;JE	14ae <check_column_ok+0x64>;(2) 
0x1484;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;MOV	-0x4(%RBP),%EAX;(2) 
0x1487;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;CLTQ;(2) 
0x1489;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;LEA	(,%RAX,4),%RDX;(2) 
0x1491;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;MOV	-0x20(%RBP),%RAX;(2) 
0x1495;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;ADD	%RDX,%RAX;(2) 
0x1498;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;MOV	(%RAX),%ECX;(2) 
0x149a;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;MOV	-0x4(%RBP),%EDX;(2) 
0x149d;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;MOV	-0x18(%RBP),%ESI;(2) 
0x14a0;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;MOV	-0x14(%RBP),%EAX;(2) 
0x14a3;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;MOV	%EAX,%EDI;(2) 
0x14a5;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;CALL	1404 <check_same_diagonal>;(2) 
0x14aa;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;TEST	%AL,%AL;(2) 
0x14ac;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:24;JE	14b5 <check_column_ok+0x6b>;(2) 
0x14ae;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:31;MOV	$0,%EAX;
0x14b3;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:31;JMP	14c6 <check_column_ok+0x7c>;
0x14b5;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:23;ADDL	$0x1,-0x4(%RBP);(2) 
0x14b9;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:23;MOV	-0x4(%RBP),%EAX;(2) 
0x14bc;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:23;CMP	-0x14(%RBP),%EAX;(2) 
0x14bf;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:23;JL	1469 <check_column_ok+0x1f>;(2) 
0x14c1;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:35;MOV	$0x1,%EAX;
0x14c6;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:38;LEAVE;
0x14c7;/home/madjid/Bureau/CHPS/Gl/tp-bgl-2-Madjid-Bzr/queens.c:38;RET;
