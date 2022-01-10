address;source_location;insn;indent
0x19460;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;PUSH	%R15;
0x19462;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;PUSH	%R14;
0x19464;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;PUSH	%R13;
0x19466;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;PUSH	%R12;
0x19468;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;PUSH	%RBP;
0x19469;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;PUSH	%RBX;
0x1946a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;SUB	$0x68,%RSP;
0x1946e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	0x20(%RDI),%RAX;
0x19472;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	0x18(%RDI),%RDX;
0x19476;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	(%RAX),%EAX;
0x19478;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	(%RDX),%R12D;
0x1947b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;CMP	$0x2,%EAX;
0x1947e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;JLE	196f4 <add_._omp_fn.0+0x294>;
0x19484;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;CMP	$0x2,%R12D;
0x19488;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;JLE	196f4 <add_._omp_fn.0+0x294>;
0x1948e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	%RDI,%RBX;
0x19491;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;LEA	-0x2(%RAX),%R14D;
0x19495;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;LEA	-0x2(%R12),%EBP;
0x1949a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;CALL	2060 <@plt_start@+0x40>;
0x1949f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	%EAX,%R13D;
0x194a2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;CALL	2120 <@plt_start@+0x100>;
0x194a7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;XOR	%EDX,%EDX;
0x194a9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	%EAX,%ESI;
0x194ab;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	%R14D,%EAX;
0x194ae;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;IMUL	%EBP,%EAX;
0x194b1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;DIV	%R13D;
0x194b4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	%EAX,%ECX;
0x194b6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;CMP	%EDX,%ESI;
0x194b8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;JB	19788 <add_._omp_fn.0+0x328>;
0x194be;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;IMUL	%ECX,%ESI;
0x194c1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;LEA	(%RSI,%RDX,1),%EAX;
0x194c4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;LEA	(%RCX,%RAX,1),%EDX;
0x194c7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;CMP	%EDX,%EAX;
0x194c9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;JAE	196f4 <add_._omp_fn.0+0x294>;
0x194cf;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;XOR	%EDX,%EDX;
0x194d1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	0x50(%RBX),%RDI;
0x194d5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOV	(%RBX),%R8;
0x194d8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;DIV	%EBP;
0x194da;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOV	0x8(%RBX),%R9;
0x194de;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	%RDI,0x8(%RSP);
0x194e3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	0x48(%RBX),%RDI;
0x194e7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	%RDI,0x10(%RSP);
0x194ec;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	0x40(%RBX),%RDI;
0x194f0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	%RDI,0x18(%RSP);
0x194f5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	0x38(%RBX),%RDI;
0x194f9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	%RDI,0x20(%RSP);
0x194fe;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	0x30(%RBX),%RDI;
0x19502;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	%RDI,0x28(%RSP);
0x19507;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	0x28(%RBX),%RDI;
0x1950b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	%RDI,0x30(%RSP);
0x19510;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;LEA	-0x1(%R12),%EDI;
0x19515;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;MOV	%EDI,0x3c(%RSP);
0x19519;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;LEA	0x1(%RAX),%ESI;
0x1951c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;MOV	0x10(%RBX),%RAX;
0x19520;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;LEA	0x1(%RDX),%R11D;
0x19524;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;MOV	%ESI,0x4c(%RSP);
0x19528;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;MOV	(%RAX),%R13D;
0x1952b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;CMP	$0x2,%R13D;
0x1952f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;JLE	196f4 <add_._omp_fn.0+0x294>;
0x19535;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;LEA	-0x2(%R13),%R14D;
0x19539;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;LEA	-0x1(%RCX),%EAX;
0x1953c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;XOR	%EBX,%EBX;
0x1953e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSXD	%ESI,%RBP;
0x19541;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOV	%EAX,0x38(%RSP);
0x19545;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOV	%R14D,%EAX;
0x19548;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;SHR	$0x1,%EAX;
0x1954a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;LEA	(%RAX,%RAX,4),%RAX;
0x1954e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;SAL	$0x4,%RAX;
0x19552;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOV	%RAX,0x40(%RSP);
0x19557;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOV	%R14D,%EAX;
0x1955a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;AND	$-0x2,%EAX;
0x1955d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOV	%EAX,0x48(%RSP);
0x19561;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOV	%R14D,%EAX;
0x19564;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;OR	$0x1,%EAX;
0x19567;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;CLTQ;
0x19569;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;LEA	(%RAX,%RAX,4),%RDI;
0x1956d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;LEA	-0x3(%R13),%EAX;
0x19571;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;LEA	(%RAX,%RAX,4),%RAX;
0x19575;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOV	%RAX,0x50(%RSP);
0x1957a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;LEA	0x58(%R8),%RAX;
0x1957e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOV	%RAX,0x58(%RSP);
0x19583;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;NOPL	(%RAX,%RAX,1);
0x19588;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOV	0x18(%RSP),%RAX;(106) 
0x1958d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSXD	%R11D,%RSI;(106) 
0x19590;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOV	0x10(%RSP),%RCX;(106) 
0x19595;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;IMUL	%RSI,%RAX;(106) 
0x19599;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;IMUL	%RBP,%RCX;(106) 
0x1959d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADD	0x8(%RSP),%RCX;(106) 
0x195a2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;IMUL	0x30(%RSP),%RSI;(106) 
0x195a8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADD	%RAX,%RCX;(106) 
0x195ab;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOV	0x28(%RSP),%RAX;(106) 
0x195b0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;LEA	0x80(,%RCX,8),%R10;(106) 
0x195b8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;LEA	0x6(%RCX),%R15;(106) 
0x195bc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;IMUL	%RBP,%RAX;(106) 
0x195c0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADD	0x20(%RSP),%RAX;(106) 
0x195c5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADD	%RAX,%RSI;(106) 
0x195c8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;LEA	-0x50(%R8,%R10,1),%RAX;(106) 
0x195cd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;LEA	0x30(,%RSI,8),%R12;(106) 
0x195d5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;LEA	(%R9,%R12,1),%RDX;(106) 
0x195d9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;LEA	0x50(%R9,%R12,1),%R12;(106) 
0x195de;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;CMP	%R12,%RAX;(106) 
0x195e1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;SETAE	%R12B;(106) 
0x195e5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADD	%R8,%R10;(106) 
0x195e8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;CMP	%R10,%RDX;(106) 
0x195eb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;SETAE	%R10B;(106) 
0x195ef;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;OR	%R10B,%R12B;(106) 
0x195f2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;JE	19703 <add_._omp_fn.0+0x2a3>;(106) 
0x195f8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;CMP	$0x3,%R13D;(106) 
0x195fc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;JE	19703 <add_._omp_fn.0+0x2a3>;(106) 
0x19602;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOV	0x40(%RSP),%R15;(106) 
0x19607;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;LEA	(%RAX,%R15,1),%R10;(106) 
0x1960b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;NOPL	(%RAX,%RAX,1);(106) 
0x19610;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPD	0x10(%RDX),%XMM5;  (107) 
0x19615;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPD	0x20(%RDX),%XMM6;  (107) 
0x1961a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADD	$0x50,%RAX;  (107) 
0x1961e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADD	$0x50,%RDX;  (107) 
0x19622;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPD	-0x40(%RAX),%XMM3;  (107) 
0x19627;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPD	-0x30(%RAX),%XMM2;  (107) 
0x1962c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPD	-0x20(%RDX),%XMM7;  (107) 
0x19631;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPD	-0x20(%RAX),%XMM1;  (107) 
0x19636;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPD	-0x10(%RAX),%XMM0;  (107) 
0x1963b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPD	-0x50(%RAX),%XMM4;  (107) 
0x19640;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDPD	%XMM5,%XMM3;  (107) 
0x19644;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDPD	%XMM6,%XMM2;  (107) 
0x19648;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPD	-0x10(%RDX),%XMM5;  (107) 
0x1964d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPD	-0x50(%RDX),%XMM6;  (107) 
0x19652;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDPD	%XMM7,%XMM1;  (107) 
0x19656;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDPD	%XMM5,%XMM0;  (107) 
0x1965a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDPD	%XMM6,%XMM4;  (107) 
0x1965e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPS	%XMM3,-0x40(%RAX);  (107) 
0x19662;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPS	%XMM2,-0x30(%RAX);  (107) 
0x19666;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPS	%XMM1,-0x20(%RAX);  (107) 
0x1966a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPS	%XMM4,-0x50(%RAX);  (107) 
0x1966e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVUPS	%XMM0,-0x10(%RAX);  (107) 
0x19672;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;CMP	%R10,%RAX;  (107) 
0x19675;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;JNE	19610 <add_._omp_fn.0+0x1b0>;  (107) 
0x19677;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;CMP	0x48(%RSP),%R14D;(106) 
0x1967c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;JE	196d7 <add_._omp_fn.0+0x277>;(106) 
0x1967e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADD	%RDI,%RCX;(106) 
0x19681;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADD	%RDI,%RSI;(106) 
0x19684;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;LEA	(%R8,%RCX,8),%RAX;(106) 
0x19688;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;LEA	(%R9,%RSI,8),%RDX;(106) 
0x1968c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	0x8(%RAX),%XMM0;(106) 
0x19691;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDSD	0x8(%RDX),%XMM0;(106) 
0x19696;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	%XMM0,0x8(%RAX);(106) 
0x1969b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	0x10(%RAX),%XMM0;(106) 
0x196a0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDSD	0x10(%RDX),%XMM0;(106) 
0x196a5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	%XMM0,0x10(%RAX);(106) 
0x196aa;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	0x18(%RAX),%XMM0;(106) 
0x196af;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDSD	0x18(%RDX),%XMM0;(106) 
0x196b4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	%XMM0,0x18(%RAX);(106) 
0x196b9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	0x20(%RAX),%XMM0;(106) 
0x196be;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDSD	0x20(%RDX),%XMM0;(106) 
0x196c3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	%XMM0,0x20(%RAX);(106) 
0x196c8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	0x28(%RAX),%XMM0;(106) 
0x196cd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDSD	0x28(%RDX),%XMM0;(106) 
0x196d2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	%XMM0,0x28(%RAX);(106) 
0x196d7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;CMP	%EBX,0x38(%RSP);(106) 
0x196db;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;JE	196f4 <add_._omp_fn.0+0x294>;(106) 
0x196dd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADD	$0x1,%R11D;(106) 
0x196e1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;CMP	%R11D,0x3c(%RSP);(106) 
0x196e6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;JLE	19773 <add_._omp_fn.0+0x313>;(106) 
0x196ec;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADD	$0x1,%EBX;(106) 
0x196ef;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;JMP	19588 <add_._omp_fn.0+0x128>;(106) 
0x196f4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;ADD	$0x68,%RSP;
0x196f8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;POP	%RBX;
0x196f9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;POP	%RBP;
0x196fa;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;POP	%R12;
0x196fc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;POP	%R13;
0x196fe;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;POP	%R14;
0x19700;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;POP	%R15;
0x19702;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;RET;
0x19703;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	0x58(%RSP),%RSI;(106) 
0x19708;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;ADD	0x50(%RSP),%RCX;(106) 
0x1970d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;LEA	(%R8,%R15,8),%RAX;(106) 
0x19711;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;LEA	(%RSI,%RCX,8),%RCX;(106) 
0x19715;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;NOPL	(%RAX);(106) 
0x19718;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	(%RAX),%XMM0;  (105) 
0x1971c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDSD	(%RDX),%XMM0;  (105) 
0x19720;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADD	$0x28,%RAX;  (105) 
0x19724;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADD	$0x28,%RDX;  (105) 
0x19728;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	%XMM0,-0x28(%RAX);  (105) 
0x1972d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	-0x20(%RAX),%XMM0;  (105) 
0x19732;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDSD	-0x20(%RDX),%XMM0;  (105) 
0x19737;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	%XMM0,-0x20(%RAX);  (105) 
0x1973c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	-0x18(%RAX),%XMM0;  (105) 
0x19741;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDSD	-0x18(%RDX),%XMM0;  (105) 
0x19746;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	%XMM0,-0x18(%RAX);  (105) 
0x1974b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	-0x10(%RAX),%XMM0;  (105) 
0x19750;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDSD	-0x10(%RDX),%XMM0;  (105) 
0x19755;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	%XMM0,-0x10(%RAX);  (105) 
0x1975a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	-0x8(%RAX),%XMM0;  (105) 
0x1975f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;ADDSD	-0x8(%RDX),%XMM0;  (105) 
0x19764;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:29;MOVSD	%XMM0,-0x8(%RAX);  (105) 
0x19769;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;CMP	%RAX,%RCX;  (105) 
0x1976c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;JNE	19718 <add_._omp_fn.0+0x2b8>;  (105) 
0x1976e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;JMP	196d7 <add_._omp_fn.0+0x277>;(106) 
0x19773;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:27;ADDL	$0x1,0x4c(%RSP);(106) 
0x19778;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOV	$0x1,%R11D;(106) 
0x1977e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;MOVSXD	0x4c(%RSP),%RBP;(106) 
0x19783;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;JMP	196ec <add_._omp_fn.0+0x28c>;(106) 
0x19788;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;ADD	$0x1,%ECX;
0x1978b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;XOR	%EDX,%EDX;
0x1978d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/add.f90:24;JMP	194be <add_._omp_fn.0+0x5e>;
0x19792;:0;NOPW	%CS:(%RAX,%RAX,1);
0x1979d;:0;NOPL	(%RAX);
