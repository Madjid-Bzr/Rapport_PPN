address;source_location;insn;indent
0x7ea;/home/arezki/multiplication/teste 0/mat.c:8;PUSH	%RBP;
0x7eb;/home/arezki/multiplication/teste 0/mat.c:8;MOV	%RSP,%RBP;
0x7ee;/home/arezki/multiplication/teste 0/mat.c:8;SUB	$0x20,%RSP;
0x7f2;/home/arezki/multiplication/teste 0/mat.c:8;MOV	%RDI,-0x18(%RBP);
0x7f6;/home/arezki/multiplication/teste 0/mat.c:8;MOV	%ESI,-0x1c(%RBP);
0x7f9;/home/arezki/multiplication/teste 0/mat.c:12;MOVL	$0,-0xc(%RBP);
0x800;/home/arezki/multiplication/teste 0/mat.c:12;JMP	870 <randomize+0x86>;
0x802;/home/arezki/multiplication/teste 0/mat.c:13;MOVL	$0,-0x8(%RBP);(1) 
0x809;/home/arezki/multiplication/teste 0/mat.c:13;JMP	864 <randomize+0x7a>;(1) 
0x80b;/home/arezki/multiplication/teste 0/mat.c:14;CALL	6c0 <@plt_start@+0x70>;  (0) 
0x810;/home/arezki/multiplication/teste 0/mat.c:14;MOV	%EAX,%ECX;  (0) 
0x812;/home/arezki/multiplication/teste 0/mat.c:14;MOV	$0x51eb851f,%EDX;  (0) 
0x817;/home/arezki/multiplication/teste 0/mat.c:14;MOV	%ECX,%EAX;  (0) 
0x819;/home/arezki/multiplication/teste 0/mat.c:14;IMUL	%EDX;  (0) 
0x81b;/home/arezki/multiplication/teste 0/mat.c:14;SAR	$0x5,%EDX;  (0) 
0x81e;/home/arezki/multiplication/teste 0/mat.c:14;MOV	%ECX,%EAX;  (0) 
0x820;/home/arezki/multiplication/teste 0/mat.c:14;SAR	$0x1f,%EAX;  (0) 
0x823;/home/arezki/multiplication/teste 0/mat.c:14;SUB	%EAX,%EDX;  (0) 
0x825;/home/arezki/multiplication/teste 0/mat.c:14;MOV	%EDX,%EAX;  (0) 
0x827;/home/arezki/multiplication/teste 0/mat.c:14;MOV	%EAX,-0x4(%RBP);  (0) 
0x82a;/home/arezki/multiplication/teste 0/mat.c:14;MOV	-0x4(%RBP),%EAX;  (0) 
0x82d;/home/arezki/multiplication/teste 0/mat.c:14;IMUL	$0x64,%EAX,%EAX;  (0) 
0x830;/home/arezki/multiplication/teste 0/mat.c:14;SUB	%EAX,%ECX;  (0) 
0x832;/home/arezki/multiplication/teste 0/mat.c:14;MOV	%ECX,%EAX;  (0) 
0x834;/home/arezki/multiplication/teste 0/mat.c:14;MOV	%EAX,-0x4(%RBP);  (0) 
0x837;/home/arezki/multiplication/teste 0/mat.c:15;MOV	-0xc(%RBP),%EAX;  (0) 
0x83a;/home/arezki/multiplication/teste 0/mat.c:15;CLTQ;  (0) 
0x83c;/home/arezki/multiplication/teste 0/mat.c:15;LEA	(,%RAX,8),%RDX;  (0) 
0x844;/home/arezki/multiplication/teste 0/mat.c:15;MOV	-0x18(%RBP),%RAX;  (0) 
0x848;/home/arezki/multiplication/teste 0/mat.c:15;ADD	%RDX,%RAX;  (0) 
0x84b;/home/arezki/multiplication/teste 0/mat.c:15;MOV	(%RAX),%RAX;  (0) 
0x84e;/home/arezki/multiplication/teste 0/mat.c:15;MOV	-0x8(%RBP),%EDX;  (0) 
0x851;/home/arezki/multiplication/teste 0/mat.c:15;MOVSXD	%EDX,%RDX;  (0) 
0x854;/home/arezki/multiplication/teste 0/mat.c:15;SAL	$0x2,%RDX;  (0) 
0x858;/home/arezki/multiplication/teste 0/mat.c:15;ADD	%RAX,%RDX;  (0) 
0x85b;/home/arezki/multiplication/teste 0/mat.c:15;MOV	-0x4(%RBP),%EAX;  (0) 
0x85e;/home/arezki/multiplication/teste 0/mat.c:15;MOV	%EAX,(%RDX);  (0) 
0x860;/home/arezki/multiplication/teste 0/mat.c:13;ADDL	$0x1,-0x8(%RBP);  (0) 
0x864;/home/arezki/multiplication/teste 0/mat.c:13;MOV	-0x8(%RBP),%EAX;  (0) 
0x867;/home/arezki/multiplication/teste 0/mat.c:13;CMP	-0x1c(%RBP),%EAX;  (0) 
0x86a;/home/arezki/multiplication/teste 0/mat.c:13;JL	80b <randomize+0x21>;  (0) 
0x86c;/home/arezki/multiplication/teste 0/mat.c:12;ADDL	$0x1,-0xc(%RBP);(1) 
0x870;/home/arezki/multiplication/teste 0/mat.c:12;MOV	-0xc(%RBP),%EAX;(1) 
0x873;/home/arezki/multiplication/teste 0/mat.c:12;CMP	-0x1c(%RBP),%EAX;(1) 
0x876;/home/arezki/multiplication/teste 0/mat.c:12;JL	802 <randomize+0x18>;(1) 
0x878;/home/arezki/multiplication/teste 0/mat.c:18;NOP;
0x879;/home/arezki/multiplication/teste 0/mat.c:18;LEAVE;
0x87a;/home/arezki/multiplication/teste 0/mat.c:18;RET;
