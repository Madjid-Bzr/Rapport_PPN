address;source_location;insn;indent
0x85b;/home/arezki/prog/multi.c:19;PUSH	%RBP;
0x85c;/home/arezki/prog/multi.c:19;MOV	%RSP,%RBP;
0x85f;/home/arezki/prog/multi.c:19;MOV	%RDI,-0x18(%RBP);
0x863;/home/arezki/prog/multi.c:19;MOV	%RSI,-0x20(%RBP);
0x867;/home/arezki/prog/multi.c:19;MOV	%RDX,-0x28(%RBP);
0x86b;/home/arezki/prog/multi.c:19;MOV	%ECX,-0x2c(%RBP);
0x86e;/home/arezki/prog/multi.c:21;MOVL	$0,-0xc(%RBP);
0x875;/home/arezki/prog/multi.c:21;JMP	921 <Multiplication+0xc6>;
0x87a;/home/arezki/prog/multi.c:22;MOVL	$0,-0x8(%RBP);(4) 
0x881;/home/arezki/prog/multi.c:22;JMP	911 <Multiplication+0xb6>;(4) 
0x886;/home/arezki/prog/multi.c:23;MOVL	$0,-0x4(%RBP);  (3) 
0x88d;/home/arezki/prog/multi.c:23;JMP	905 <Multiplication+0xaa>;  (3) 
0x88f;/home/arezki/prog/multi.c:24;MOV	-0xc(%RBP),%EAX;    (2) 
0x892;/home/arezki/prog/multi.c:24;CLTQ;    (2) 
0x894;/home/arezki/prog/multi.c:24;IMUL	$0x7d0,%RAX,%RDX;    (2) 
0x89b;/home/arezki/prog/multi.c:24;MOV	-0x28(%RBP),%RAX;    (2) 
0x89f;/home/arezki/prog/multi.c:24;ADD	%RAX,%RDX;    (2) 
0x8a2;/home/arezki/prog/multi.c:24;MOV	-0x8(%RBP),%EAX;    (2) 
0x8a5;/home/arezki/prog/multi.c:24;CLTQ;    (2) 
0x8a7;/home/arezki/prog/multi.c:24;MOV	(%RDX,%RAX,4),%ECX;    (2) 
0x8aa;/home/arezki/prog/multi.c:24;MOV	-0xc(%RBP),%EAX;    (2) 
0x8ad;/home/arezki/prog/multi.c:24;CLTQ;    (2) 
0x8af;/home/arezki/prog/multi.c:24;IMUL	$0x7d0,%RAX,%RDX;    (2) 
0x8b6;/home/arezki/prog/multi.c:24;MOV	-0x18(%RBP),%RAX;    (2) 
0x8ba;/home/arezki/prog/multi.c:24;ADD	%RAX,%RDX;    (2) 
0x8bd;/home/arezki/prog/multi.c:24;MOV	-0x4(%RBP),%EAX;    (2) 
0x8c0;/home/arezki/prog/multi.c:24;CLTQ;    (2) 
0x8c2;/home/arezki/prog/multi.c:24;MOV	(%RDX,%RAX,4),%EDX;    (2) 
0x8c5;/home/arezki/prog/multi.c:24;MOV	-0x4(%RBP),%EAX;    (2) 
0x8c8;/home/arezki/prog/multi.c:24;CLTQ;    (2) 
0x8ca;/home/arezki/prog/multi.c:24;IMUL	$0x7d0,%RAX,%RSI;    (2) 
0x8d1;/home/arezki/prog/multi.c:24;MOV	-0x20(%RBP),%RAX;    (2) 
0x8d5;/home/arezki/prog/multi.c:24;ADD	%RAX,%RSI;    (2) 
0x8d8;/home/arezki/prog/multi.c:24;MOV	-0x8(%RBP),%EAX;    (2) 
0x8db;/home/arezki/prog/multi.c:24;CLTQ;    (2) 
0x8dd;/home/arezki/prog/multi.c:24;MOV	(%RSI,%RAX,4),%EAX;    (2) 
0x8e0;/home/arezki/prog/multi.c:24;IMUL	%EDX,%EAX;    (2) 
0x8e3;/home/arezki/prog/multi.c:24;MOV	-0xc(%RBP),%EDX;    (2) 
0x8e6;/home/arezki/prog/multi.c:24;MOVSXD	%EDX,%RDX;    (2) 
0x8e9;/home/arezki/prog/multi.c:24;IMUL	$0x7d0,%RDX,%RSI;    (2) 
0x8f0;/home/arezki/prog/multi.c:24;MOV	-0x28(%RBP),%RDX;    (2) 
0x8f4;/home/arezki/prog/multi.c:24;ADD	%RSI,%RDX;    (2) 
0x8f7;/home/arezki/prog/multi.c:24;ADD	%EAX,%ECX;    (2) 
0x8f9;/home/arezki/prog/multi.c:24;MOV	-0x8(%RBP),%EAX;    (2) 
0x8fc;/home/arezki/prog/multi.c:24;CLTQ;    (2) 
0x8fe;/home/arezki/prog/multi.c:24;MOV	%ECX,(%RDX,%RAX,4);    (2) 
0x901;/home/arezki/prog/multi.c:23;ADDL	$0x1,-0x4(%RBP);    (2) 
0x905;/home/arezki/prog/multi.c:23;MOV	-0x4(%RBP),%EAX;    (2) 
0x908;/home/arezki/prog/multi.c:23;CMP	-0x2c(%RBP),%EAX;    (2) 
0x90b;/home/arezki/prog/multi.c:23;JL	88f <Multiplication+0x34>;    (2) 
0x90d;/home/arezki/prog/multi.c:22;ADDL	$0x1,-0x8(%RBP);  (3) 
0x911;/home/arezki/prog/multi.c:22;MOV	-0x8(%RBP),%EAX;  (3) 
0x914;/home/arezki/prog/multi.c:22;CMP	-0x2c(%RBP),%EAX;  (3) 
0x917;/home/arezki/prog/multi.c:22;JL	886 <Multiplication+0x2b>;  (3) 
0x91d;/home/arezki/prog/multi.c:21;ADDL	$0x1,-0xc(%RBP);(4) 
0x921;/home/arezki/prog/multi.c:21;MOV	-0xc(%RBP),%EAX;(4) 
0x924;/home/arezki/prog/multi.c:21;CMP	-0x2c(%RBP),%EAX;(4) 
0x927;/home/arezki/prog/multi.c:21;JL	87a <Multiplication+0x1f>;(4) 
0x92d;/home/arezki/prog/multi.c:30;NOP;
0x92e;/home/arezki/prog/multi.c:30;POP	%RBP;
0x92f;/home/arezki/prog/multi.c:30;RET;
