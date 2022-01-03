address;source_location;insn;indent
0x14be;/home/benbachir/Documents/matrix/matrix.c:48;MOV	-0xf425c(%RBP),%EAX;
0x14c4;/home/benbachir/Documents/matrix/matrix.c:48;CLTQ;
0x14c6;/home/benbachir/Documents/matrix/matrix.c:48;MOV	-0xf4260(%RBP),%EDX;
0x14cc;/home/benbachir/Documents/matrix/matrix.c:48;MOVSXD	%EDX,%RDX;
0x14cf;/home/benbachir/Documents/matrix/matrix.c:48;IMUL	$0x1f4,%RDX,%RDX;
0x14d6;/home/benbachir/Documents/matrix/matrix.c:48;ADD	%RDX,%RAX;
0x14d9;/home/benbachir/Documents/matrix/matrix.c:48;MOV	-0xf4250(%RBP,%RAX,4),%EAX;
0x14e0;/home/benbachir/Documents/matrix/matrix.c:48;MOV	%EAX,%ESI;
0x14e2;/home/benbachir/Documents/matrix/matrix.c:48;LEA	0xb5c(%RIP),%RDI;
0x14e9;/home/benbachir/Documents/matrix/matrix.c:48;MOV	$0,%EAX;
0x14ee;/home/benbachir/Documents/matrix/matrix.c:48;CALL	10c0 <.plt.sec@start+0x30>;
0x14f3;/home/benbachir/Documents/matrix/matrix.c:46;ADDL	$0x1,-0xf425c(%RBP);
0x14fa;/home/benbachir/Documents/matrix/matrix.c:46;CMPL	$0x1f3,-0xf425c(%RBP);
0x1504;/home/benbachir/Documents/matrix/matrix.c:46;JLE	14be <matrixMultiplication+0x161>;
