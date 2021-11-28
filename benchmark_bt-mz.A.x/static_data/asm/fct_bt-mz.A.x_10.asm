address;source_location;insn;indent
0x41f0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;PUSH	%R15;
0x41f2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;MOV	%RDI,%R15;
0x41f5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;PUSH	%R14;
0x41f7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;PUSH	%R13;
0x41f9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;PUSH	%R12;
0x41fb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;PUSH	%RBP;
0x41fc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;PUSH	%RBX;
0x41fd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;SUB	$0x1d8,%RSP;
0x4204;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;MOV	0x30(%RDI),%RAX;
0x4208;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;MOV	%RAX,0x58(%RSP);
0x420d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;MOV	0x28(%RDI),%RAX;
0x4211;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;MOV	%RAX,0x60(%RSP);
0x4216;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;MOV	0x20(%RDI),%RAX;
0x421a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;MOV	%RAX,0x50(%RSP);
0x421f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOV	0x18(%RDI),%RAX;
0x4223;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOV	(%RAX),%EBX;
0x4225;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOV	0x10(%RDI),%RAX;
0x4229;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOV	(%RAX),%EAX;
0x422b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOV	%EAX,0x70(%RSP);
0x422f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;CALL	2060 <@plt_start@+0x40>;
0x4234;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOV	%EAX,0x80(%RSP);
0x423b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;CALL	2120 <@plt_start@+0x100>;
0x4240;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOV	%EAX,0x74(%RSP);
0x4244;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;TEST	%EBX,%EBX;
0x4246;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;JLE	471f <initialize_._omp_fn.0+0x52f>;
0x424c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOV	0x70(%RSP),%EAX;
0x4250;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;TEST	%EAX,%EAX;
0x4252;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;JLE	4280 <initialize_._omp_fn.0+0x90>;
0x4254;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;IMUL	%EBX,%EAX;
0x4257;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;XOR	%EDX,%EDX;
0x4259;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;DIVL	0x80(%RSP);
0x4260;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOV	%EAX,%ESI;
0x4262;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;CMP	%EDX,0x74(%RSP);
0x4266;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;JB	52d1 <initialize_._omp_fn.0+0x10e1>;
0x426c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOV	0x74(%RSP),%EAX;
0x4270;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;IMUL	%ESI,%EAX;
0x4273;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;ADD	%EDX,%EAX;
0x4275;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;LEA	(%RSI,%RAX,1),%EDX;
0x4278;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;CMP	%EDX,%EAX;
0x427a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;JB	4412 <initialize_._omp_fn.0+0x222>;
0x4280;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOVSD	0x1d0a0(%RIP),%XMM7;
0x4288;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;MOVQ	$0,0x98(%RSP);
0x4294;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;MOVSD	%XMM7,0x8(%RSP);
0x429a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;MOV	0x70(%RSP),%EAX;
0x429e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;TEST	%EAX,%EAX;
0x42a0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;JLE	4d81 <initialize_._omp_fn.0+0xb91>;
0x42a6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;IMUL	%EBX,%EAX;
0x42a9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;XOR	%EDX,%EDX;
0x42ab;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;DIVL	0x80(%RSP);
0x42b2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;MOV	%EAX,%R14D;
0x42b5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;CMP	%EDX,0x74(%RSP);
0x42b9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;JB	52db <initialize_._omp_fn.0+0x10eb>;
0x42bf;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;MOV	0x74(%RSP),%R9D;
0x42c4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;IMUL	%R14D,%R9D;
0x42c8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;LEA	(%R9,%RDX,1),%EAX;
0x42cc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;LEA	(%R14,%RAX,1),%EDX;
0x42d0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;CMP	%EDX,%EAX;
0x42d2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;JAE	4d81 <initialize_._omp_fn.0+0xb91>;
0x42d8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;XOR	%EDX,%EDX;
0x42da;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;PXOR	%XMM7,%XMM7;
0x42de;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;LEA	-0x1(%R14),%EBX;
0x42e2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;XOR	%R14D,%R14D;
0x42e5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;DIVL	0x70(%RSP);
0x42e9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	%EBX,0x20(%RSP);
0x42ed;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;LEA	0xb0(%RSP),%R13;
0x42f5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;LEA	0xa8(%RSP),%R12;
0x42fd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;LEA	0xa0(%RSP),%RBP;
0x4305;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;LEA	0x98(%RSP),%RBX;
0x430d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	%RBX,0x28(%RSP);
0x4312;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	%R14D,%EBX;
0x4315;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	%R12,%R14;
0x4318;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	%R15,%R12;
0x431b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	%R13,%R15;
0x431e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	%RBP,%R13;
0x4321;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;CVTSI2SD	%EAX,%XMM7;
0x4325;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	%EAX,0x30(%RSP);
0x4329;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;CLTQ;
0x432b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	%EDX,%EBP;
0x432d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	%RAX,0x10(%RSP);
0x4332;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOVSD	%XMM7,0x18(%RSP);
0x4338;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;JMP	4343 <initialize_._omp_fn.0+0x153>;
0x433a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;NOPW	(%RAX,%RAX,1);
0x4340;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;ADD	$0x1,%EBX;(23) 
0x4343;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:104;MOVSD	0x18(%RSP),%XMM0;(23) 
0x4349;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:106;MOV	%R15,%RCX;(23) 
0x434c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:106;MOV	%R14,%RDX;(23) 
0x434f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:106;MOV	%R13,%RSI;(23) 
0x4352;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:104;MULSD	0x215fe(%RIP),%XMM0;(23) 
0x435a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:106;MOV	0x28(%RSP),%RDI;(23) 
0x435f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:104;MOVSD	%XMM0,0xa8(%RSP);(23) 
0x4368;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:105;PXOR	%XMM0,%XMM0;(23) 
0x436c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:105;CVTSI2SD	%EBP,%XMM0;(23) 
0x4370;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:105;MULSD	0x215e8(%RIP),%XMM0;(23) 
0x4378;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:105;MOVSD	%XMM0,0xa0(%RSP);(23) 
0x4381;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:106;CALL	5ac0 <exact_solution_>;(23) 
0x4386;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	0x10(%RSP),%RAX;(23) 
0x438b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;IMUL	0x60(%RSP),%RAX;(23) 
0x4391;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOVAPD	0xb0(%RSP),%XMM6;(23) 
0x439a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	0x58(%RSP),%RDI;(23) 
0x439f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOVAPD	0xc0(%RSP),%XMM7;(23) 
0x43a8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOVSD	0xd0(%RSP),%XMM0;(23) 
0x43b1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;LEA	(%RAX,%RDI,1),%RDX;(23) 
0x43b5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOVSXD	%EBP,%RAX;(23) 
0x43b8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;IMUL	0x50(%RSP),%RAX;(23) 
0x43be;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;ADD	%RDX,%RAX;(23) 
0x43c1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	(%R12),%RDX;(23) 
0x43c5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;LEA	0x8(%RDX,%RAX,8),%RCX;(23) 
0x43ca;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOVUPS	%XMM6,(%RCX);(23) 
0x43cd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOVUPS	%XMM7,0x10(%RCX);(23) 
0x43d1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOVSD	%XMM0,0x28(%RDX,%RAX,8);(23) 
0x43d7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;CMP	0x20(%RSP),%EBX;(23) 
0x43db;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;JE	4560 <initialize_._omp_fn.0+0x370>;(23) 
0x43e1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;ADD	$0x1,%EBP;(23) 
0x43e4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;CMP	0x70(%RSP),%EBP;(23) 
0x43e8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;JL	4340 <initialize_._omp_fn.0+0x150>;(23) 
0x43ee;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;ADDL	$0x1,0x30(%RSP);(23) 
0x43f3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOVSXD	0x30(%RSP),%RAX;(23) 
0x43f8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;PXOR	%XMM7,%XMM7;(23) 
0x43fc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;XOR	%EBP,%EBP;(23) 
0x43fe;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;CVTSI2SD	%EAX,%XMM7;(23) 
0x4402;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	%RAX,0x10(%RSP);(23) 
0x4407;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOVSD	%XMM7,0x18(%RSP);(23) 
0x440d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;JMP	4340 <initialize_._omp_fn.0+0x150>;(23) 
0x4412;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;XOR	%EDX,%EDX;
0x4414;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;MOV	0x8(%R15),%R11;
0x4418;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;DIVL	0x70(%RSP);
0x441c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;MOV	(%R11),%R9D;
0x441f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;MOV	%EDX,0x20(%RSP);
0x4423;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;MOV	%EDX,%ECX;
0x4425;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOV	(%R15),%RDX;
0x4428;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOV	%EAX,0x18(%RSP);
0x442c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOV	%EAX,0x10(%RSP);
0x4430;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;TEST	%R9D,%R9D;
0x4433;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;JLE	5318 <initialize_._omp_fn.0+0x1128>;
0x4439;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;LEA	-0x1(%RSI),%EAX;
0x443c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVSD	0x1cee4(%RIP),%XMM1;
0x4444;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOV	%R9D,%R12D;
0x4447;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;XOR	%EDI,%EDI;
0x4449;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOV	%EAX,0x78(%RSP);
0x444d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOV	%R9D,%EAX;
0x4450;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;LEA	-0x1(%R9),%R8D;
0x4454;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;AND	$-0x2,%R12D;
0x4458;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;SHR	$0x1,%EAX;
0x445a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOV	%R15,0x28(%RSP);
0x445f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVSXD	0x18(%RSP),%R13;
0x4464;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOV	%R11,0x30(%RSP);
0x4469;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;LEA	(%RAX,%RAX,4),%R14;
0x446d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOV	0x60(%RSP),%R15;
0x4472;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOV	0x58(%RSP),%R11;
0x4477;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;SAL	$0x4,%R14;
0x447b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVAPD	0x1cfbd(%RIP),%XMM0;
0x4483;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVSD	%XMM1,0x8(%RSP);
0x4489;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;NOPL	(%RAX);
0x4490;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOV	%R13,%RAX;(26) 
0x4493;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;IMUL	%R15,%RAX;(26) 
0x4497;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;LEA	(%RAX,%R11,1),%RSI;(26) 
0x449b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVSXD	%ECX,%RAX;(26) 
0x449e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;IMUL	0x50(%RSP),%RAX;(26) 
0x44a4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;ADD	%RSI,%RAX;(26) 
0x44a7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;CMP	$0x2,%R8D;(26) 
0x44ab;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;JBE	52ca <initialize_._omp_fn.0+0x10da>;(26) 
0x44b1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;LEA	0x8(%RDX,%RAX,8),%RSI;(26) 
0x44b6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;LEA	(%R14,%RSI,1),%R10;(26) 
0x44ba;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;NOPW	(%RAX,%RAX,1);(26) 
0x44c0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVUPS	%XMM0,(%RSI);  (27) 
0x44c3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;ADD	$0x50,%RSI;  (27) 
0x44c7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVUPS	%XMM0,-0x40(%RSI);  (27) 
0x44cb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVUPS	%XMM0,-0x30(%RSI);  (27) 
0x44cf;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVUPS	%XMM0,-0x20(%RSI);  (27) 
0x44d3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVUPS	%XMM0,-0x10(%RSI);  (27) 
0x44d7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;CMP	%RSI,%R10;  (27) 
0x44da;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;JNE	44c0 <initialize_._omp_fn.0+0x2d0>;  (27) 
0x44dc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;MOV	%R12D,%ESI;(26) 
0x44df;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;CMP	%R12D,%R9D;(26) 
0x44e2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;JE	4541 <initialize_._omp_fn.0+0x351>;(26) 
0x44e4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVSXD	%ESI,%R10;(26) 
0x44e7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;LEA	(%R10,%R10,4),%R10;(26) 
0x44eb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;LEA	(%RAX,%R10,1),%RBX;(26) 
0x44ef;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;LEA	0x8(%RDX,%RBX,8),%RBP;(26) 
0x44f4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVUPS	%XMM0,(%RBP);(26) 
0x44f8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVUPS	%XMM0,0x10(%RBP);(26) 
0x44fc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVSD	%XMM1,0x28(%RDX,%RBX,8);(26) 
0x4502;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;LEA	0x1(%RSI),%EBX;(26) 
0x4505;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;CMP	%EBX,%R9D;(26) 
0x4508;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;JLE	4541 <initialize_._omp_fn.0+0x351>;(26) 
0x450a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;LEA	0x5(%RAX,%R10,1),%RBX;(26) 
0x450f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;ADD	$0x2,%ESI;(26) 
0x4512;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;LEA	0x8(%RDX,%RBX,8),%RBP;(26) 
0x4517;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVUPS	%XMM0,(%RBP);(26) 
0x451b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVUPS	%XMM0,0x10(%RBP);(26) 
0x451f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVSD	%XMM1,0x28(%RDX,%RBX,8);(26) 
0x4525;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;CMP	%ESI,%R9D;(26) 
0x4528;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;JLE	4541 <initialize_._omp_fn.0+0x351>;(26) 
0x452a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;LEA	0xa(%RAX,%R10,1),%RAX;(26) 
0x452f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;LEA	0x8(%RDX,%RAX,8),%RSI;(26) 
0x4534;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVUPS	%XMM0,(%RSI);(26) 
0x4537;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVUPS	%XMM0,0x10(%RSI);(26) 
0x453b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOVSD	%XMM1,0x28(%RDX,%RAX,8);(26) 
0x4541;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;CMP	%EDI,0x78(%RSP);(26) 
0x4545;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;JE	4dac <initialize_._omp_fn.0+0xbbc>;(26) 
0x454b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;ADD	$0x1,%ECX;(26) 
0x454e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;CMP	%ECX,0x70(%RSP);(26) 
0x4552;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;JLE	4d9b <initialize_._omp_fn.0+0xbab>;(26) 
0x4558;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;ADD	$0x1,%EDI;(26) 
0x455b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;JMP	4490 <initialize_._omp_fn.0+0x2a0>;(26) 
0x4560;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:37;MOV	0x18(%R12),%RAX;
0x4565;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:119;MOVSD	0x8(%RSP),%XMM6;
0x456b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:119;MOV	%R12,%R15;
0x456e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:119;MOVSD	%XMM6,0x98(%RSP);
0x4577;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:119;MOV	(%RAX),%EBX;
0x4579;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:119;MOV	0x10(%R12),%RAX;
0x457e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:119;MOV	(%RAX),%EAX;
0x4580;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:119;MOV	%EAX,0x70(%RSP);
0x4584;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;MOV	0x8(%R12),%RAX;
0x4589;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;MOV	(%RAX),%ECX;
0x458b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;TEST	%EBX,%EBX;
0x458d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;JLE	473c <initialize_._omp_fn.0+0x54c>;
0x4593;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;MOV	0x70(%RSP),%EAX;
0x4597;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;TEST	%EAX,%EAX;
0x4599;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;JLE	473c <initialize_._omp_fn.0+0x54c>;
0x459f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;IMUL	%EAX,%EBX;
0x45a2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;XOR	%EDX,%EDX;
0x45a4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;MOV	%EBX,%EAX;
0x45a6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;DIVL	0x80(%RSP);
0x45ad;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;MOV	%EAX,%EBX;
0x45af;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;CMP	%EDX,0x74(%RSP);
0x45b3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;JB	52e6 <initialize_._omp_fn.0+0x10f6>;
0x45b9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;MOV	0x74(%RSP),%R9D;
0x45be;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;IMUL	%EBX,%R9D;
0x45c2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;LEA	(%R9,%RDX,1),%EAX;
0x45c6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;LEA	(%RBX,%RAX,1),%EDX;
0x45c9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;CMP	%EDX,%EAX;
0x45cb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;JAE	473c <initialize_._omp_fn.0+0x54c>;
0x45d1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;XOR	%EDX,%EDX;
0x45d3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;PXOR	%XMM7,%XMM7;
0x45d7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;SUB	$0x1,%EBX;
0x45da;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;XOR	%R14D,%R14D;
0x45dd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;DIVL	0x70(%RSP);
0x45e1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOV	%EBX,0x20(%RSP);
0x45e5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;LEA	0xb0(%RSP),%R13;
0x45ed;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;LEA	0xa8(%RSP),%R12;
0x45f5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;LEA	0xa0(%RSP),%RBP;
0x45fd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;LEA	0x98(%RSP),%RBX;
0x4605;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOV	%RBX,0x30(%RSP);
0x460a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOV	%R14D,%EBX;
0x460d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOV	%R12,%R14;
0x4610;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOV	%R15,%R12;
0x4613;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOV	%R13,%R15;
0x4616;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOV	%RBP,%R13;
0x4619;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOV	%EAX,0x38(%RSP);
0x461d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;LEA	-0x1(%RCX),%EAX;
0x4620;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;MOV	%EDX,%EBP;
0x4622;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;CLTQ;
0x4624;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;LEA	(%RAX,%RAX,4),%RSI;
0x4628;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOVSXD	0x38(%RSP),%RAX;
0x462d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOV	%RSI,0x28(%RSP);
0x4632;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;CVTSI2SD	%EAX,%XMM7;
0x4636;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOV	%RAX,0x10(%RSP);
0x463b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOVSD	%XMM7,0x18(%RSP);
0x4641;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;JMP	464b <initialize_._omp_fn.0+0x45b>;
0x4643;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;NOPL	(%RAX,%RAX,1);
0x4648;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;ADD	$0x1,%EBX;(22) 
0x464b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:123;MOVSD	0x18(%RSP),%XMM0;(22) 
0x4651;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:125;MOV	%R15,%RCX;(22) 
0x4654;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:125;MOV	%R14,%RDX;(22) 
0x4657;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:125;MOV	%R13,%RSI;(22) 
0x465a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:123;MULSD	0x212f6(%RIP),%XMM0;(22) 
0x4662;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:125;MOV	0x30(%RSP),%RDI;(22) 
0x4667;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:123;MOVSD	%XMM0,0xa8(%RSP);(22) 
0x4670;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:124;PXOR	%XMM0,%XMM0;(22) 
0x4674;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:124;CVTSI2SD	%EBP,%XMM0;(22) 
0x4678;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:124;MULSD	0x212e0(%RIP),%XMM0;(22) 
0x4680;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:124;MOVSD	%XMM0,0xa0(%RSP);(22) 
0x4689;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:125;CALL	5ac0 <exact_solution_>;(22) 
0x468e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOV	0x10(%RSP),%RAX;(22) 
0x4693;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;IMUL	0x60(%RSP),%RAX;(22) 
0x4699;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOVAPD	0xb0(%RSP),%XMM6;(22) 
0x46a2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOV	0x58(%RSP),%RDI;(22) 
0x46a7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOVAPD	0xc0(%RSP),%XMM7;(22) 
0x46b0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOVSD	0xd0(%RSP),%XMM0;(22) 
0x46b9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;LEA	(%RAX,%RDI,1),%RDX;(22) 
0x46bd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOVSXD	%EBP,%RAX;(22) 
0x46c0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;IMUL	0x50(%RSP),%RAX;(22) 
0x46c6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;ADD	%RDX,%RAX;(22) 
0x46c9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOV	(%R12),%RDX;(22) 
0x46cd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;ADD	0x28(%RSP),%RAX;(22) 
0x46d2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;LEA	0x8(%RDX,%RAX,8),%RCX;(22) 
0x46d7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOVUPS	%XMM6,(%RCX);(22) 
0x46da;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOVUPS	%XMM7,0x10(%RCX);(22) 
0x46de;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOVSD	%XMM0,0x28(%RDX,%RAX,8);(22) 
0x46e4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;CMP	%EBX,0x20(%RSP);(22) 
0x46e8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;JE	4d79 <initialize_._omp_fn.0+0xb89>;(22) 
0x46ee;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;ADD	$0x1,%EBP;(22) 
0x46f1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;CMP	%EBP,0x70(%RSP);(22) 
0x46f5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;JG	4648 <initialize_._omp_fn.0+0x458>;(22) 
0x46fb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;ADDL	$0x1,0x38(%RSP);(22) 
0x4700;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOVSXD	0x38(%RSP),%RAX;(22) 
0x4705;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;PXOR	%XMM6,%XMM6;(22) 
0x4709;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;XOR	%EBP,%EBP;(22) 
0x470b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;CVTSI2SD	%EAX,%XMM6;(22) 
0x470f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOV	%RAX,0x10(%RSP);(22) 
0x4714;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOVSD	%XMM6,0x18(%RSP);(22) 
0x471a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;JMP	4648 <initialize_._omp_fn.0+0x458>;(22) 
0x471f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOVSD	0x1cc01(%RIP),%XMM7;
0x4727;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;MOVSD	%XMM7,0x8(%RSP);
0x472d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:119;MOVSD	0x8(%RSP),%XMM7;
0x4733;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:119;MOVSD	%XMM7,0x98(%RSP);
0x473c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:119;CALL	2190 <@plt_start@+0x170>;
0x4741;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;MOV	0x18(%R15),%RAX;
0x4745;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:137;MOVQ	$0,0xa0(%RSP);
0x4751;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;MOV	(%RAX),%ECX;
0x4753;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;MOV	0x8(%R15),%RAX;
0x4757;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;MOV	(%RAX),%R14D;
0x475a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;TEST	%ECX,%ECX;
0x475c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;JLE	5332 <initialize_._omp_fn.0+0x1142>;
0x4762;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;TEST	%R14D,%R14D;
0x4765;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;JLE	4d5f <initialize_._omp_fn.0+0xb6f>;
0x476b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;MOV	%ECX,%EAX;
0x476d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;XOR	%EDX,%EDX;
0x476f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;IMUL	%R14D,%EAX;
0x4773;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;DIVL	0x80(%RSP);
0x477a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;MOV	%EAX,%ESI;
0x477c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;CMP	%EDX,0x74(%RSP);
0x4780;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;JB	52fa <initialize_._omp_fn.0+0x110a>;
0x4786;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;MOV	0x74(%RSP),%R9D;
0x478b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;IMUL	%ESI,%R9D;
0x478f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;LEA	(%R9,%RDX,1),%EAX;
0x4793;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;LEA	(%RSI,%RAX,1),%EDX;
0x4796;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;CMP	%EDX,%EAX;
0x4798;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;JAE	4d5f <initialize_._omp_fn.0+0xb6f>;
0x479e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;XOR	%EDX,%EDX;
0x47a0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;LEA	0xb0(%RSP),%R13;
0x47a8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;SUB	$0x1,%ESI;
0x47ab;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;XOR	%R10D,%R10D;
0x47ae;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;PXOR	%XMM6,%XMM6;
0x47b2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;LEA	0xa8(%RSP),%R12;
0x47ba;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;LEA	0xa0(%RSP),%RBP;
0x47c2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	%R14D,0x30(%RSP);
0x47c7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;DIV	%R14D;
0x47ca;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	%ESI,0x20(%RSP);
0x47ce;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;LEA	0x98(%RSP),%RBX;
0x47d6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	%R13,%R14;
0x47d9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	%R12,%R13;
0x47dc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	%RBP,%R12;
0x47df;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	%RBX,0x28(%RSP);
0x47e4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	%R15,%RBP;
0x47e7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	%R10D,%R15D;
0x47ea;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;CVTSI2SD	%EAX,%XMM6;
0x47ee;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	%EAX,0x38(%RSP);
0x47f2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;CLTQ;
0x47f4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	%EDX,%EBX;
0x47f6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	%RAX,0x10(%RSP);
0x47fb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOVSD	%XMM6,0x18(%RSP);
0x4801;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;JMP	480c <initialize_._omp_fn.0+0x61c>;
0x4803;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;NOPL	(%RAX,%RAX,1);
0x4808;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;ADD	$0x1,%R15D;(21) 
0x480c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:141;MOVSD	0x18(%RSP),%XMM0;(21) 
0x4812;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:143;MOV	%R14,%RCX;(21) 
0x4815;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:143;MOV	%R13,%RDX;(21) 
0x4818;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:143;MOV	%R12,%RSI;(21) 
0x481b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:141;MULSD	0x21135(%RIP),%XMM0;(21) 
0x4823;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:143;MOV	0x28(%RSP),%RDI;(21) 
0x4828;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:141;MOVSD	%XMM0,0xa8(%RSP);(21) 
0x4831;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:142;PXOR	%XMM0,%XMM0;(21) 
0x4835;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:142;CVTSI2SD	%EBX,%XMM0;(21) 
0x4839;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:142;MULSD	0x21127(%RIP),%XMM0;(21) 
0x4841;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:142;MOVSD	%XMM0,0x98(%RSP);(21) 
0x484a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:143;CALL	5ac0 <exact_solution_>;(21) 
0x484f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOVSXD	%EBX,%RDX;(21) 
0x4852;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	0x10(%RSP),%RAX;(21) 
0x4857;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;IMUL	0x60(%RSP),%RAX;(21) 
0x485d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;LEA	(%RDX,%RDX,4),%RDX;(21) 
0x4861;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;ADD	0x58(%RSP),%RAX;(21) 
0x4866;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOVAPD	0xb0(%RSP),%XMM6;(21) 
0x486f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOVAPD	0xc0(%RSP),%XMM7;(21) 
0x4878;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;ADD	%RDX,%RAX;(21) 
0x487b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	(%RBP),%RDX;(21) 
0x487f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOVSD	0xd0(%RSP),%XMM0;(21) 
0x4888;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;LEA	0x8(%RDX,%RAX,8),%RCX;(21) 
0x488d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOVUPS	%XMM6,(%RCX);(21) 
0x4890;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOVUPS	%XMM7,0x10(%RCX);(21) 
0x4894;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOVSD	%XMM0,0x28(%RDX,%RAX,8);(21) 
0x489a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;CMP	%R15D,0x20(%RSP);(21) 
0x489f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;JE	48d2 <initialize_._omp_fn.0+0x6e2>;(21) 
0x48a1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;ADD	$0x1,%EBX;(21) 
0x48a4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;CMP	%EBX,0x30(%RSP);(21) 
0x48a8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;JG	4808 <initialize_._omp_fn.0+0x618>;(21) 
0x48ae;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;ADDL	$0x1,0x38(%RSP);(21) 
0x48b3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOVSXD	0x38(%RSP),%RAX;(21) 
0x48b8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;PXOR	%XMM6,%XMM6;(21) 
0x48bc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;XOR	%EBX,%EBX;(21) 
0x48be;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;CVTSI2SD	%EAX,%XMM6;(21) 
0x48c2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	%RAX,0x10(%RSP);(21) 
0x48c7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOVSD	%XMM6,0x18(%RSP);(21) 
0x48cd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;JMP	4808 <initialize_._omp_fn.0+0x618>;(21) 
0x48d2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;MOV	0x18(%RBP),%RAX;
0x48d6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:156;MOVSD	0x8(%RSP),%XMM7;
0x48dc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:156;MOV	%RBP,%R15;
0x48df;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:156;MOVSD	%XMM7,0xa0(%RSP);
0x48e8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:156;MOV	(%RAX),%ECX;
0x48ea;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:156;MOV	0x8(%RBP),%RAX;
0x48ee;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:156;MOV	(%RAX),%R14D;
0x48f1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;MOV	0x10(%RBP),%RAX;
0x48f5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;MOV	(%RAX),%ESI;
0x48f7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;TEST	%ECX,%ECX;
0x48f9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;JLE	4a8a <initialize_._omp_fn.0+0x89a>;
0x48ff;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;TEST	%R14D,%R14D;
0x4902;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;JLE	4a8a <initialize_._omp_fn.0+0x89a>;
0x4908;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;IMUL	%R14D,%ECX;
0x490c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;XOR	%EDX,%EDX;
0x490e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;MOV	%ECX,%EAX;
0x4910;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;DIVL	0x80(%RSP);
0x4917;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;MOV	%EAX,%ECX;
0x4919;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;CMP	%EDX,0x74(%RSP);
0x491d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;JB	530e <initialize_._omp_fn.0+0x111e>;
0x4923;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;MOV	0x74(%RSP),%R9D;
0x4928;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;IMUL	%ECX,%R9D;
0x492c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;LEA	(%R9,%RDX,1),%EAX;
0x4930;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;LEA	(%RCX,%RAX,1),%EDX;
0x4933;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;CMP	%EDX,%EAX;
0x4935;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;JAE	4a8a <initialize_._omp_fn.0+0x89a>;
0x493b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;XOR	%EDX,%EDX;
0x493d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;PXOR	%XMM7,%XMM7;
0x4941;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;LEA	-0x1(%RCX),%EBX;
0x4944;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;XOR	%R10D,%R10D;
0x4947;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;DIV	%R14D;
0x494a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	%EBX,0x28(%RSP);
0x494e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	%R14D,0x38(%RSP);
0x4953;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;LEA	0xb0(%RSP),%R13;
0x495b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;LEA	0xa8(%RSP),%R12;
0x4963;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;LEA	0xa0(%RSP),%RBP;
0x496b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;LEA	0x98(%RSP),%RBX;
0x4973;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	%R13,%R14;
0x4976;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	%R12,%R13;
0x4979;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	%RBX,0x30(%RSP);
0x497e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	%RBP,%R12;
0x4981;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	%R15,%RBP;
0x4984;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	%R10D,%R15D;
0x4987;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	%EAX,0x40(%RSP);
0x498b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;LEA	-0x1(%RSI),%EAX;
0x498e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;MOV	%EDX,%EBX;
0x4990;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;CLTQ;
0x4992;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;IMUL	0x50(%RSP),%RAX;
0x4998;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	%RAX,0x20(%RSP);
0x499d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOVSXD	0x40(%RSP),%RAX;
0x49a2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;CVTSI2SD	%EAX,%XMM7;
0x49a6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	%RAX,0x10(%RSP);
0x49ab;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOVSD	%XMM7,0x18(%RSP);
0x49b1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;JMP	49bc <initialize_._omp_fn.0+0x7cc>;
0x49b3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;NOPL	(%RAX,%RAX,1);
0x49b8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;ADD	$0x1,%R15D;(20) 
0x49bc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:160;MOVSD	0x18(%RSP),%XMM0;(20) 
0x49c2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:162;MOV	%R14,%RCX;(20) 
0x49c5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:162;MOV	%R13,%RDX;(20) 
0x49c8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:162;MOV	%R12,%RSI;(20) 
0x49cb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:160;MULSD	0x20f85(%RIP),%XMM0;(20) 
0x49d3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:162;MOV	0x30(%RSP),%RDI;(20) 
0x49d8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:160;MOVSD	%XMM0,0xa8(%RSP);(20) 
0x49e1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:161;PXOR	%XMM0,%XMM0;(20) 
0x49e5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:161;CVTSI2SD	%EBX,%XMM0;(20) 
0x49e9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:161;MULSD	0x20f77(%RIP),%XMM0;(20) 
0x49f1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:161;MOVSD	%XMM0,0x98(%RSP);(20) 
0x49fa;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:162;CALL	5ac0 <exact_solution_>;(20) 
0x49ff;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOVSXD	%EBX,%RDX;(20) 
0x4a02;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	0x10(%RSP),%RAX;(20) 
0x4a07;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;IMUL	0x60(%RSP),%RAX;(20) 
0x4a0d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;LEA	(%RDX,%RDX,4),%RDX;(20) 
0x4a11;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;ADD	0x58(%RSP),%RAX;(20) 
0x4a16;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;ADD	0x20(%RSP),%RAX;(20) 
0x4a1b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOVAPD	0xb0(%RSP),%XMM6;(20) 
0x4a24;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;ADD	%RDX,%RAX;(20) 
0x4a27;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	(%RBP),%RDX;(20) 
0x4a2b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOVAPD	0xc0(%RSP),%XMM7;(20) 
0x4a34;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOVSD	0xd0(%RSP),%XMM0;(20) 
0x4a3d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;LEA	0x8(%RDX,%RAX,8),%RCX;(20) 
0x4a42;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOVUPS	%XMM6,(%RCX);(20) 
0x4a45;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOVUPS	%XMM7,0x10(%RCX);(20) 
0x4a49;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOVSD	%XMM0,0x28(%RDX,%RAX,8);(20) 
0x4a4f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;CMP	%R15D,0x28(%RSP);(20) 
0x4a54;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;JE	4a87 <initialize_._omp_fn.0+0x897>;(20) 
0x4a56;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;ADD	$0x1,%EBX;(20) 
0x4a59;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;CMP	%EBX,0x38(%RSP);(20) 
0x4a5d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;JG	49b8 <initialize_._omp_fn.0+0x7c8>;(20) 
0x4a63;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;ADDL	$0x1,0x40(%RSP);(20) 
0x4a68;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOVSXD	0x40(%RSP),%RAX;(20) 
0x4a6d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;PXOR	%XMM7,%XMM7;(20) 
0x4a71;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;XOR	%EBX,%EBX;(20) 
0x4a73;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;CVTSI2SD	%EAX,%XMM7;(20) 
0x4a77;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	%RAX,0x10(%RSP);(20) 
0x4a7c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOVSD	%XMM7,0x18(%RSP);(20) 
0x4a82;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;JMP	49b8 <initialize_._omp_fn.0+0x7c8>;(20) 
0x4a87;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;MOV	%RBP,%R15;
0x4a8a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:164;CALL	2190 <@plt_start@+0x170>;
0x4a8f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;MOV	0x10(%R15),%RAX;
0x4a93;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:174;MOVQ	$0,0xa8(%RSP);
0x4a9f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:174;MOV	(%RAX),%EAX;
0x4aa1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:174;CLTD;
0x4aa2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:174;IDIVL	0x80(%RSP);
0x4aa9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:174;CMP	0x74(%RSP),%EDX;
0x4aad;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:174;JG	52f0 <initialize_._omp_fn.0+0x1100>;
0x4ab3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;MOV	%EDX,%EDI;
0x4ab5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;MOV	%EAX,%ECX;
0x4ab7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;MOV	0x74(%RSP),%ESI;
0x4abb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;IMUL	%ECX,%ESI;
0x4abe;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;ADD	%EDI,%ESI;
0x4ac0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;ADD	%ESI,%ECX;
0x4ac2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;MOV	%ESI,0x20(%RSP);
0x4ac6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;MOV	%ECX,0x30(%RSP);
0x4aca;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;CMP	%ECX,%ESI;
0x4acc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;JGE	4bf3 <initialize_._omp_fn.0+0xa03>;
0x4ad2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;MOVSXD	%ESI,%RAX;
0x4ad5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;IMUL	0x50(%RSP),%RAX;
0x4adb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;MOV	0x58(%RSP),%RBX;
0x4ae0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;LEA	0x1(%RBX,%RAX,1),%RAX;
0x4ae5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;MOV	%RAX,0x28(%RSP);
0x4aea;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;LEA	0xb0(%RSP),%RAX;
0x4af2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;MOV	%RAX,0x18(%RSP);
0x4af7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;NOPW	(%RAX,%RAX,1);
0x4b00;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:177;PXOR	%XMM0,%XMM0;(18) 
0x4b04;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;MOV	0x8(%R15),%RAX;(18) 
0x4b08;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:177;CVTSI2SDL	0x20(%RSP),%XMM0;(18) 
0x4b0e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:177;MULSD	0x20e4a(%RIP),%XMM0;(18) 
0x4b16;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;MOV	(%RAX),%EAX;(18) 
0x4b18;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;MOV	%EAX,0x10(%RSP);(18) 
0x4b1c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:177;MOVSD	%XMM0,0xa0(%RSP);(18) 
0x4b25;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;TEST	%EAX,%EAX;(18) 
0x4b27;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;JLE	4bc8 <initialize_._omp_fn.0+0x9d8>;(18) 
0x4b2d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;MOV	0x28(%RSP),%R14;(18) 
0x4b32;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;LEA	0xa8(%RSP),%R13;(18) 
0x4b3a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;XOR	%EBX,%EBX;(18) 
0x4b3c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;LEA	0xa0(%RSP),%R12;(18) 
0x4b44;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;LEA	0x98(%RSP),%RBP;(18) 
0x4b4c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;MOV	%R13,%RAX;(18) 
0x4b4f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;MOV	%R12,%R13;(18) 
0x4b52;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;MOV	%RBP,%R12;(18) 
0x4b55;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;MOV	%R14,%RBP;(18) 
0x4b58;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;MOV	%RAX,%R14;(18) 
0x4b5b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;NOPL	(%RAX,%RAX,1);(18) 
0x4b60;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:179;PXOR	%XMM0,%XMM0;  (19) 
0x4b64;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:180;MOV	0x18(%RSP),%RCX;  (19) 
0x4b69;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:180;MOV	%R14,%RDX;  (19) 
0x4b6c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:180;MOV	%R13,%RSI;  (19) 
0x4b6f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:179;CVTSI2SD	%EBX,%XMM0;  (19) 
0x4b73;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:179;MULSD	0x20ded(%RIP),%XMM0;  (19) 
0x4b7b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:180;MOV	%R12,%RDI;  (19) 
0x4b7e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;ADD	$0x1,%EBX;  (19) 
0x4b81;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:179;MOVSD	%XMM0,0x98(%RSP);  (19) 
0x4b8a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:180;CALL	5ac0 <exact_solution_>;  (19) 
0x4b8f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:182;MOV	(%R15),%RDX;  (19) 
0x4b92;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:182;MOVAPD	0xb0(%RSP),%XMM6;  (19) 
0x4b9b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:182;MOVAPD	0xc0(%RSP),%XMM7;  (19) 
0x4ba4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:182;MOVSD	0xd0(%RSP),%XMM0;  (19) 
0x4bad;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:182;LEA	(%RDX,%RBP,8),%RCX;  (19) 
0x4bb1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:182;MOVUPS	%XMM6,(%RCX);  (19) 
0x4bb4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:182;MOVUPS	%XMM7,0x10(%RCX);  (19) 
0x4bb8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:182;MOVSD	%XMM0,0x20(%RDX,%RBP,8);  (19) 
0x4bbe;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:182;ADD	$0x5,%RBP;  (19) 
0x4bc2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;CMP	%EBX,0x10(%RSP);  (19) 
0x4bc6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;JNE	4b60 <initialize_._omp_fn.0+0x970>;  (19) 
0x4bc8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;ADDL	$0x1,0x20(%RSP);(18) 
0x4bcd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;MOV	0x50(%RSP),%RBX;(18) 
0x4bd2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;MOV	0x20(%RSP),%EAX;(18) 
0x4bd6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;ADD	%RBX,0x28(%RSP);(18) 
0x4bdb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;CMP	%EAX,0x30(%RSP);(18) 
0x4bdf;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;JNE	4b00 <initialize_._omp_fn.0+0x910>;(18) 
0x4be5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;MOV	0x10(%R15),%RAX;
0x4be9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;MOV	(%RAX),%EAX;
0x4beb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;CLTD;
0x4bec;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:178;IDIVL	0x80(%RSP);
0x4bf3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:191;MOV	0x18(%R15),%RCX;
0x4bf7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:192;MOVSD	0x8(%RSP),%XMM6;
0x4bfd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:192;MOVSD	%XMM6,0xa8(%RSP);
0x4c06;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:191;MOV	(%RCX),%ECX;
0x4c08;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:191;CMP	%EDX,0x74(%RSP);
0x4c0c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:191;JL	5304 <initialize_._omp_fn.0+0x1114>;
0x4c12;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:191;MOV	0x74(%RSP),%ESI;
0x4c16;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:191;IMUL	%EAX,%ESI;
0x4c19;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:191;LEA	(%RSI,%RDX,1),%EDI;
0x4c1c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:191;ADD	%EDI,%EAX;
0x4c1e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:191;MOV	%EDI,0x18(%RSP);
0x4c22;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:191;MOV	%EAX,0x28(%RSP);
0x4c26;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:191;CMP	%EAX,%EDI;
0x4c28;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:191;JGE	4d4d <initialize_._omp_fn.0+0xb5d>;
0x4c2e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:191;LEA	-0x1(%RCX),%EAX;
0x4c31;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:191;MOV	0x58(%RSP),%RSI;
0x4c36;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;CLTQ;
0x4c38;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;IMUL	0x60(%RSP),%RAX;
0x4c3e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;LEA	0x1(%RSI,%RAX,1),%RDX;
0x4c43;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;MOVSXD	%EDI,%RAX;
0x4c46;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;IMUL	0x50(%RSP),%RAX;
0x4c4c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;ADD	%RDX,%RAX;
0x4c4f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;MOV	%RAX,0x20(%RSP);
0x4c54;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;LEA	0xb0(%RSP),%RAX;
0x4c5c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;MOV	%RAX,0x10(%RSP);
0x4c61;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;NOPL	(%RAX);
0x4c68;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:195;PXOR	%XMM0,%XMM0;(16) 
0x4c6c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;MOV	0x8(%R15),%RAX;(16) 
0x4c70;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:195;CVTSI2SDL	0x18(%RSP),%XMM0;(16) 
0x4c76;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:195;MULSD	0x20ce2(%RIP),%XMM0;(16) 
0x4c7e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;MOV	(%RAX),%EAX;(16) 
0x4c80;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;MOV	%EAX,0x8(%RSP);(16) 
0x4c84;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:195;MOVSD	%XMM0,0xa0(%RSP);(16) 
0x4c8d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;TEST	%EAX,%EAX;(16) 
0x4c8f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;JLE	4d30 <initialize_._omp_fn.0+0xb40>;(16) 
0x4c95;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;MOV	0x20(%RSP),%R14;(16) 
0x4c9a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;LEA	0xa8(%RSP),%R13;(16) 
0x4ca2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;XOR	%EBX,%EBX;(16) 
0x4ca4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;LEA	0xa0(%RSP),%R12;(16) 
0x4cac;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;LEA	0x98(%RSP),%RBP;(16) 
0x4cb4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;MOV	%R13,%RAX;(16) 
0x4cb7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;MOV	%R12,%R13;(16) 
0x4cba;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;MOV	%RBP,%R12;(16) 
0x4cbd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;MOV	%R14,%RBP;(16) 
0x4cc0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;MOV	%RAX,%R14;(16) 
0x4cc3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;NOPL	(%RAX,%RAX,1);(16) 
0x4cc8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:197;PXOR	%XMM0,%XMM0;  (17) 
0x4ccc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:198;MOV	0x10(%RSP),%RCX;  (17) 
0x4cd1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:198;MOV	%R14,%RDX;  (17) 
0x4cd4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:198;MOV	%R13,%RSI;  (17) 
0x4cd7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:197;CVTSI2SD	%EBX,%XMM0;  (17) 
0x4cdb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:197;MULSD	0x20c85(%RIP),%XMM0;  (17) 
0x4ce3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:198;MOV	%R12,%RDI;  (17) 
0x4ce6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;ADD	$0x1,%EBX;  (17) 
0x4ce9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:197;MOVSD	%XMM0,0x98(%RSP);  (17) 
0x4cf2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:198;CALL	5ac0 <exact_solution_>;  (17) 
0x4cf7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;MOV	(%R15),%RDX;  (17) 
0x4cfa;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;MOVAPD	0xb0(%RSP),%XMM6;  (17) 
0x4d03;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;MOVAPD	0xc0(%RSP),%XMM7;  (17) 
0x4d0c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;MOVSD	0xd0(%RSP),%XMM0;  (17) 
0x4d15;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;LEA	(%RDX,%RBP,8),%RCX;  (17) 
0x4d19;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;MOVUPS	%XMM6,(%RCX);  (17) 
0x4d1c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;MOVUPS	%XMM7,0x10(%RCX);  (17) 
0x4d20;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;MOVSD	%XMM0,0x20(%RDX,%RBP,8);  (17) 
0x4d26;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:200;ADD	$0x5,%RBP;  (17) 
0x4d2a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;CMP	%EBX,0x8(%RSP);  (17) 
0x4d2e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;JNE	4cc8 <initialize_._omp_fn.0+0xad8>;  (17) 
0x4d30;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;ADDL	$0x1,0x18(%RSP);(16) 
0x4d35;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;MOV	0x50(%RSP),%RBX;(16) 
0x4d3a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;MOV	0x18(%RSP),%EAX;(16) 
0x4d3e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;ADD	%RBX,0x20(%RSP);(16) 
0x4d43;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;CMP	%EAX,0x28(%RSP);(16) 
0x4d47;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;JNE	4c68 <initialize_._omp_fn.0+0xa78>;(16) 
0x4d4d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;ADD	$0x1d8,%RSP;
0x4d54;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;POP	%RBX;
0x4d55;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;POP	%RBP;
0x4d56;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;POP	%R12;
0x4d58;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;POP	%R13;
0x4d5a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;POP	%R14;
0x4d5c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;POP	%R15;
0x4d5e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:24;RET;
0x4d5f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;MOV	0x10(%R15),%RAX;
0x4d63;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:156;MOVSD	0x8(%RSP),%XMM7;
0x4d69;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:156;MOVSD	%XMM7,0xa0(%RSP);
0x4d72;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;MOV	(%RAX),%ESI;
0x4d74;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;JMP	48ff <initialize_._omp_fn.0+0x70f>;
0x4d79;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;MOV	%R12,%R15;
0x4d7c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:155;JMP	473c <initialize_._omp_fn.0+0x54c>;
0x4d81;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;MOV	0x8(%R15),%RAX;
0x4d85;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:119;MOVSD	0x8(%RSP),%XMM6;
0x4d8b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:119;MOVSD	%XMM6,0x98(%RSP);
0x4d94;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;MOV	(%RAX),%ECX;
0x4d96;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;JMP	4593 <initialize_._omp_fn.0+0x3a3>;
0x4d9b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:118;ADDL	$0x1,0x10(%RSP);(26) 
0x4da0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;XOR	%ECX,%ECX;(26) 
0x4da2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOVSXD	0x10(%RSP),%R13;(26) 
0x4da7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;JMP	4558 <initialize_._omp_fn.0+0x368>;(26) 
0x4dac;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOV	0x28(%RSP),%R15;
0x4db1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOV	0x30(%RSP),%R11;
0x4db6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOV	0x20(%RSP),%EAX;
0x4dba;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;PXOR	%XMM6,%XMM6;
0x4dbe;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;MOV	%R15,%R14;
0x4dc1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOVL	$0,0x7c(%RSP);
0x4dc9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;LEA	0xb0(%RSP),%R13;
0x4dd1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	%EAX,0x6c(%RSP);
0x4dd5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	0x18(%RSP),%EAX;
0x4dd9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;CVTSI2SD	%EAX,%XMM6;
0x4ddd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOV	%EAX,0x84(%RSP);
0x4de4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOVSD	%XMM6,0x88(%RSP);
0x4ded;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;NOPL	(%RAX);
0x4df0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:54;MOVSD	0x88(%RSP),%XMM0;(24) 
0x4df9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;MOV	(%R11),%EAX;(24) 
0x4dfc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:54;MULSD	0x20b54(%RIP),%XMM0;(24) 
0x4e04;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;MOV	%EAX,0x18(%RSP);(24) 
0x4e08;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:54;MOVSD	%XMM0,0xa8(%RSP);(24) 
0x4e11;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:55;PXOR	%XMM0,%XMM0;(24) 
0x4e15;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:55;CVTSI2SDL	0x6c(%RSP),%XMM0;(24) 
0x4e1b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:55;MULSD	0x20b3d(%RIP),%XMM0;(24) 
0x4e23;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:55;MOVSD	%XMM0,0xa0(%RSP);(24) 
0x4e2c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;TEST	%EAX,%EAX;(24) 
0x4e2e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;JLE	524a <initialize_._omp_fn.0+0x105a>;(24) 
0x4e34;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOVSXD	0x6c(%RSP),%RDX;(24) 
0x4e39;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;IMUL	0x50(%RSP),%RDX;(24) 
0x4e3f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;XOR	%R15D,%R15D;(24) 
0x4e42;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;MOV	%R14,%R9;(24) 
0x4e45;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOVSXD	0x84(%RSP),%RAX;(24) 
0x4e4d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;IMUL	0x60(%RSP),%RAX;(24) 
0x4e53;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOV	%R15D,%R14D;(24) 
0x4e56;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;LEA	0xa8(%RSP),%R12;(24) 
0x4e5e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;ADD	0x58(%RSP),%RAX;(24) 
0x4e63;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;LEA	0xa0(%RSP),%RBP;(24) 
0x4e6b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;LEA	0x98(%RSP),%RBX;(24) 
0x4e73;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;LEA	0x1(%RAX,%RDX,1),%R8;(24) 
0x4e78;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;LEA	0xe0(%RSP),%RAX;(24) 
0x4e80;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOV	%RAX,0x40(%RSP);(24) 
0x4e85;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;LEA	0x158(%RSP),%RAX;(24) 
0x4e8d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOV	%R8,%R15;(24) 
0x4e90;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOV	%RAX,0x28(%RSP);(24) 
0x4e95;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;LEA	0x108(%RSP),%RAX;(24) 
0x4e9d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOV	%RAX,0x48(%RSP);(24) 
0x4ea2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;LEA	0x180(%RSP),%RAX;(24) 
0x4eaa;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOV	%RAX,0x30(%RSP);(24) 
0x4eaf;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;LEA	0x130(%RSP),%RAX;(24) 
0x4eb7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOV	%RAX,0x20(%RSP);(24) 
0x4ebc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;LEA	0x1a8(%RSP),%RAX;(24) 
0x4ec4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOV	%RAX,0x38(%RSP);(24) 
0x4ec9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;NOPL	(%RAX);(24) 
0x4ed0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:57;PXOR	%XMM0,%XMM0;  (25) 
0x4ed4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:61;MOV	0x40(%RSP),%RCX;  (25) 
0x4ed9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:61;MOV	%R12,%RDX;  (25) 
0x4edc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:61;MOV	%RBP,%RSI;  (25) 
0x4edf;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:57;CVTSI2SD	%R14D,%XMM0;  (25) 
0x4ee4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:61;MOV	%R13,%RDI;  (25) 
0x4ee7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:61;MOV	%R9,0x10(%RSP);  (25) 
0x4eec;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;ADD	$0x1,%R14D;  (25) 
0x4ef0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:57;MULSD	0x20a70(%RIP),%XMM0;  (25) 
0x4ef8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:61;MOVQ	$0,0xb0(%RSP);  (25) 
0x4f04;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:57;MOVSD	%XMM0,0x98(%RSP);  (25) 
0x4f0d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:61;CALL	5ac0 <exact_solution_>;  (25) 
0x4f12;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:61;MOV	0x28(%RSP),%RCX;  (25) 
0x4f17;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:61;MOV	%R12,%RDX;  (25) 
0x4f1a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:61;MOV	%RBP,%RSI;  (25) 
0x4f1d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:61;MOVSD	0x8(%RSP),%XMM5;  (25) 
0x4f23;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:61;MOV	%R13,%RDI;  (25) 
0x4f26;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:61;MOVSD	%XMM5,0xb0(%RSP);  (25) 
0x4f2f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:61;CALL	5ac0 <exact_solution_>;  (25) 
0x4f34;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:66;MOV	0x48(%RSP),%RCX;  (25) 
0x4f39;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:66;MOV	%R12,%RDX;  (25) 
0x4f3c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:66;MOV	%R13,%RSI;  (25) 
0x4f3f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:66;MOVQ	$0,0xb0(%RSP);  (25) 
0x4f4b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:66;MOV	%RBX,%RDI;  (25) 
0x4f4e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:66;CALL	5ac0 <exact_solution_>;  (25) 
0x4f53;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:66;MOV	0x30(%RSP),%RCX;  (25) 
0x4f58;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:66;MOV	%R12,%RDX;  (25) 
0x4f5b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:66;MOV	%R13,%RSI;  (25) 
0x4f5e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:66;MOVSD	0x8(%RSP),%XMM5;  (25) 
0x4f64;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:66;MOV	%RBX,%RDI;  (25) 
0x4f67;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:66;MOVSD	%XMM5,0xb0(%RSP);  (25) 
0x4f70;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:66;CALL	5ac0 <exact_solution_>;  (25) 
0x4f75;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:71;MOV	0x20(%RSP),%RCX;  (25) 
0x4f7a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:71;MOV	%R13,%RDX;  (25) 
0x4f7d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:71;MOV	%RBP,%RSI;  (25) 
0x4f80;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:71;MOVQ	$0,0xb0(%RSP);  (25) 
0x4f8c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:71;MOV	%RBX,%RDI;  (25) 
0x4f8f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:71;CALL	5ac0 <exact_solution_>;  (25) 
0x4f94;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:71;MOV	0x38(%RSP),%RCX;  (25) 
0x4f99;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:71;MOV	%R13,%RDX;  (25) 
0x4f9c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:71;MOV	%RBP,%RSI;  (25) 
0x4f9f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:71;MOVSD	0x8(%RSP),%XMM5;  (25) 
0x4fa5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:71;MOV	%RBX,%RDI;  (25) 
0x4fa8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:71;MOVSD	%XMM5,0xb0(%RSP);  (25) 
0x4fb1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:71;CALL	5ac0 <exact_solution_>;  (25) 
0x4fb6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MOVSD	0x8(%RSP),%XMM5;  (25) 
0x4fbc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOV	0x10(%RSP),%R9;  (25) 
0x4fc1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MOVSD	0x98(%RSP),%XMM2;  (25) 
0x4fca;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MOVSD	0x158(%RSP),%XMM14;  (25) 
0x4fd4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MOVSD	0x160(%RSP),%XMM4;  (25) 
0x4fdd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MOVAPD	%XMM5,%XMM7;  (25) 
0x4fe1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MOVAPD	%XMM5,%XMM6;  (25) 
0x4fe5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MOVSD	0x168(%RSP),%XMM11;  (25) 
0x4fef;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MULSD	%XMM2,%XMM14;  (25) 
0x4ff4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;SUBSD	%XMM2,%XMM7;  (25) 
0x4ff8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOV	(%R9),%RDX;  (25) 
0x4ffb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MOVSD	0xa0(%RSP),%XMM1;  (25) 
0x5004;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MOVSD	0x180(%RSP),%XMM13;  (25) 
0x500e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MULSD	%XMM2,%XMM4;  (25) 
0x5012;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MOVSD	0x190(%RSP),%XMM10;  (25) 
0x501c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MULSD	%XMM2,%XMM11;  (25) 
0x5021;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;SUBSD	%XMM1,%XMM6;  (25) 
0x5025;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;MOVSD	0xa8(%RSP),%XMM0;  (25) 
0x502e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;MOVSD	0x1a8(%RSP),%XMM12;  (25) 
0x5038;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MULSD	%XMM1,%XMM13;  (25) 
0x503d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MOVAPD	%XMM7,%XMM3;  (25) 
0x5041;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;MOVSD	0x1b8(%RSP),%XMM8;  (25) 
0x504b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;LEA	(%RDX,%R15,8),%RCX;  (25) 
0x504f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MULSD	%XMM1,%XMM10;  (25) 
0x5054;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;UNPCKLPD	%XMM3,%XMM3;  (25) 
0x5058;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;SUBSD	%XMM0,%XMM5;  (25) 
0x505c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;MULSD	%XMM0,%XMM12;  (25) 
0x5061;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;MULSD	%XMM0,%XMM8;  (25) 
0x5066;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;UNPCKLPD	%XMM4,%XMM14;  (25) 
0x506b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MOVAPD	0xe0(%RSP),%XMM4;  (25) 
0x5074;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MULSD	0x100(%RSP),%XMM7;  (25) 
0x507d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MOVAPD	%XMM5,%XMM9;  (25) 
0x5082;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MULPD	%XMM3,%XMM4;  (25) 
0x5086;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;UNPCKLPD	%XMM9,%XMM9;  (25) 
0x508b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MULPD	0xf0(%RSP),%XMM3;  (25) 
0x5094;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;MULSD	0x150(%RSP),%XMM5;  (25) 
0x509d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;ADDPD	%XMM4,%XMM14;  (25) 
0x50a2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MOVSD	0x170(%RSP),%XMM4;  (25) 
0x50ab;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MULSD	%XMM2,%XMM4;  (25) 
0x50af;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MULSD	0x178(%RSP),%XMM2;  (25) 
0x50b8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;UNPCKLPD	%XMM4,%XMM11;  (25) 
0x50bd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MOVSD	0x188(%RSP),%XMM4;  (25) 
0x50c6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;ADDPD	%XMM3,%XMM11;  (25) 
0x50cb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;MOVAPD	%XMM6,%XMM3;  (25) 
0x50cf;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:76;ADDSD	%XMM7,%XMM2;  (25) 
0x50d3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MULSD	%XMM1,%XMM4;  (25) 
0x50d7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;UNPCKLPD	%XMM3,%XMM3;  (25) 
0x50db;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MULSD	0x128(%RSP),%XMM6;  (25) 
0x50e4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;UNPCKLPD	%XMM4,%XMM13;  (25) 
0x50e9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MOVUPD	0x108(%RSP),%XMM4;  (25) 
0x50f2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MULPD	%XMM3,%XMM4;  (25) 
0x50f6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;ADDPD	%XMM4,%XMM13;  (25) 
0x50fb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MOVSD	0x198(%RSP),%XMM4;  (25) 
0x5104;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MULSD	%XMM1,%XMM4;  (25) 
0x5108;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MULSD	0x1a0(%RSP),%XMM1;  (25) 
0x5111;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;UNPCKLPD	%XMM4,%XMM10;  (25) 
0x5116;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MOVUPD	0x118(%RSP),%XMM4;  (25) 
0x511f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;ADDSD	%XMM6,%XMM1;  (25) 
0x5123;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;MULPD	%XMM4,%XMM3;  (25) 
0x5127;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;MOVAPD	0x130(%RSP),%XMM4;  (25) 
0x5130;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;MULPD	%XMM9,%XMM4;  (25) 
0x5135;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;MULPD	0x140(%RSP),%XMM9;  (25) 
0x513f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:78;ADDPD	%XMM3,%XMM10;  (25) 
0x5144;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;MOVSD	0x1b0(%RSP),%XMM3;  (25) 
0x514d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;MULSD	%XMM0,%XMM3;  (25) 
0x5151;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;UNPCKLPD	%XMM3,%XMM12;  (25) 
0x5156;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;MOVSD	0x1c0(%RSP),%XMM3;  (25) 
0x515f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;ADDPD	%XMM4,%XMM12;  (25) 
0x5164;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOVAPD	%XMM13,%XMM4;  (25) 
0x5169;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;MULSD	%XMM0,%XMM3;  (25) 
0x516d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;ADDPD	%XMM14,%XMM4;  (25) 
0x5172;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;MULSD	0x1c8(%RSP),%XMM0;  (25) 
0x517b;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;ADDPD	%XMM12,%XMM4;  (25) 
0x5180;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;UNPCKLPD	%XMM3,%XMM8;  (25) 
0x5185;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOVAPD	%XMM13,%XMM3;  (25) 
0x518a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MULPD	%XMM14,%XMM3;  (25) 
0x518f;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;ADDPD	%XMM9,%XMM8;  (25) 
0x5194;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOVAPD	%XMM10,%XMM9;  (25) 
0x5199;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MULPD	%XMM12,%XMM14;  (25) 
0x519e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:80;ADDSD	%XMM5,%XMM0;  (25) 
0x51a2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MULPD	%XMM12,%XMM13;  (25) 
0x51a7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MULPD	%XMM11,%XMM9;  (25) 
0x51ac;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MULPD	%XMM3,%XMM12;  (25) 
0x51b1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;SUBPD	%XMM3,%XMM4;  (25) 
0x51b5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOVAPD	%XMM10,%XMM3;  (25) 
0x51ba;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;ADDPD	%XMM11,%XMM3;  (25) 
0x51bf;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MULPD	%XMM8,%XMM11;  (25) 
0x51c4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MULPD	%XMM8,%XMM10;  (25) 
0x51c9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;SUBPD	%XMM14,%XMM4;  (25) 
0x51ce;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;ADDPD	%XMM8,%XMM3;  (25) 
0x51d3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MULPD	%XMM9,%XMM8;  (25) 
0x51d8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;SUBPD	%XMM13,%XMM4;  (25) 
0x51dd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;SUBPD	%XMM9,%XMM3;  (25) 
0x51e2;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;ADDPD	%XMM12,%XMM4;  (25) 
0x51e7;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;SUBPD	%XMM11,%XMM3;  (25) 
0x51ec;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOVUPS	%XMM4,(%RCX);  (25) 
0x51ef;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOVAPD	%XMM2,%XMM4;  (25) 
0x51f3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;SUBPD	%XMM10,%XMM3;  (25) 
0x51f8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MULSD	%XMM1,%XMM4;  (25) 
0x51fc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;ADDPD	%XMM8,%XMM3;  (25) 
0x5201;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOVUPS	%XMM3,0x10(%RCX);  (25) 
0x5205;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOVAPD	%XMM2,%XMM3;  (25) 
0x5209;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;ADDSD	%XMM1,%XMM3;  (25) 
0x520d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MULSD	%XMM0,%XMM2;  (25) 
0x5211;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MULSD	%XMM0,%XMM1;  (25) 
0x5215;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;ADDSD	%XMM0,%XMM3;  (25) 
0x5219;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MULSD	%XMM4,%XMM0;  (25) 
0x521d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;SUBSD	%XMM4,%XMM3;  (25) 
0x5221;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;SUBSD	%XMM2,%XMM3;  (25) 
0x5225;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOVAPD	%XMM3,%XMM2;  (25) 
0x5229;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;SUBSD	%XMM1,%XMM2;  (25) 
0x522d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;ADDSD	%XMM2,%XMM0;  (25) 
0x5231;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;MOVSD	%XMM0,0x20(%RDX,%R15,8);  (25) 
0x5238;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:84;ADD	$0x5,%R15;  (25) 
0x523c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;CMP	%R14D,0x18(%RSP);  (25) 
0x5241;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;JNE	4ed0 <initialize_._omp_fn.0+0xce0>;  (25) 
0x5247;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;MOV	%R9,%R14;(24) 
0x524a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;MOV	0x7c(%RSP),%EDI;(24) 
0x524e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;CMP	%EDI,0x78(%RSP);(24) 
0x5252;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;JE	5271 <initialize_._omp_fn.0+0x1081>;(24) 
0x5254;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;ADDL	$0x1,0x6c(%RSP);(24) 
0x5259;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;MOV	0x6c(%RSP),%EAX;(24) 
0x525d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;CMP	%EAX,0x70(%RSP);(24) 
0x5261;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;JLE	52a0 <initialize_._omp_fn.0+0x10b0>;(24) 
0x5263;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;ADDL	$0x1,0x7c(%RSP);(24) 
0x5268;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;MOV	0x8(%R14),%R11;(24) 
0x526c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;JMP	4df0 <initialize_._omp_fn.0+0xc00>;(24) 
0x5271;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;MOV	0x18(%R14),%RAX;
0x5275;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:56;MOV	%R14,%R15;
0x5278;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;MOVQ	$0,0x98(%RSP);
0x5284;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;MOV	(%RAX),%EBX;
0x5286;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;MOV	0x10(%R14),%RAX;
0x528a;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;MOV	(%RAX),%EAX;
0x528c;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;MOV	%EAX,0x70(%RSP);
0x5290;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;TEST	%EBX,%EBX;
0x5292;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;JG	429a <initialize_._omp_fn.0+0xaa>;
0x5298;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;JMP	472d <initialize_._omp_fn.0+0x53d>;
0x529d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;NOPL	(%RAX);
0x52a0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;ADDL	$0x1,0x84(%RSP);(24) 
0x52a8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;MOV	0x84(%RSP),%EAX;(24) 
0x52af;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:100;PXOR	%XMM6,%XMM6;(24) 
0x52b3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOVL	$0,0x6c(%RSP);(24) 
0x52bb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;CVTSI2SD	%EAX,%XMM6;(24) 
0x52bf;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;MOVSD	%XMM6,0x88(%RSP);(24) 
0x52c8;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:108;JMP	5263 <initialize_._omp_fn.0+0x1073>;(24) 
0x52ca;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;XOR	%ESI,%ESI;(26) 
0x52cc;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;JMP	44e4 <initialize_._omp_fn.0+0x2f4>;(26) 
0x52d1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:35;ADD	$0x1,%ESI;
0x52d4;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;XOR	%EDX,%EDX;
0x52d6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;JMP	426c <initialize_._omp_fn.0+0x7c>;
0x52db;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:32;ADD	$0x1,%R14D;
0x52df;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;XOR	%EDX,%EDX;
0x52e1;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;JMP	42bf <initialize_._omp_fn.0+0xcf>;
0x52e6;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:127;ADD	$0x1,%EBX;
0x52e9;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;XOR	%EDX,%EDX;
0x52eb;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;JMP	45b9 <initialize_._omp_fn.0+0x3c9>;
0x52f0;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:145;LEA	0x1(%RAX),%ECX;
0x52f3;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;XOR	%EDI,%EDI;
0x52f5;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;JMP	4ab7 <initialize_._omp_fn.0+0x8c7>;
0x52fa;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:175;ADD	$0x1,%ESI;
0x52fd;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;XOR	%EDX,%EDX;
0x52ff;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;JMP	4786 <initialize_._omp_fn.0+0x596>;
0x5304;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:138;ADD	$0x1,%EAX;
0x5307;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:192;XOR	%EDX,%EDX;
0x5309;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:192;JMP	4c12 <initialize_._omp_fn.0+0xa22>;
0x530e;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:192;ADD	$0x1,%ECX;
0x5311;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;XOR	%EDX,%EDX;
0x5313;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;JMP	4923 <initialize_._omp_fn.0+0x733>;
0x5318;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;MOVSD	0x1c008(%RIP),%XMM7;
0x5320;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;LEA	-0x1(%RSI),%EAX;
0x5323;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;MOV	%EAX,0x78(%RSP);
0x5327;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;MOVSD	%XMM7,0x8(%RSP);
0x532d;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:196;JMP	4db6 <initialize_._omp_fn.0+0xbc6>;
0x5332;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:156;MOVSD	0x8(%RSP),%XMM6;
0x5338;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:156;MOVSD	%XMM6,0xa0(%RSP);
0x5341;/home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/initialize.f90:156;JMP	4a8a <initialize_._omp_fn.0+0x89a>;
0x5346;:0;NOPW	%CS:(%RAX,%RAX,1);
