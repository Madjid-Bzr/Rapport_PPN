address;source_location;insn;indent
0x2508;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:88;MOVQ	$0,(%RSI);
0x250f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:91;MOV	%RBX,%RAX;
0x2512;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:89;MOVQ	$0,(%RCX);
0x2519;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:91;CMP	%EBX,%EBP;
0x251b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:91;JLE	2792 <compute_accelerations+0x2e2>;
0x2521;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:91;MOV	%EBP,%EDX;
0x2523;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:91;SUB	%EBX,%EDX;
0x2525;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:91;AND	$0x1,%EDX;
0x2528;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:91;JE	2600 <compute_accelerations+0x150>;
0x252e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVSD	(%R10,%RBX,8),%XMM4;
0x2534;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVSD	(%R9,%RBX,8),%XMM3;
0x253a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;LEA	0x1(%RBX),%RAX;
0x253e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;SUBSD	(%RDI),%XMM3;
0x2542;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVSD	(%R11,%RBX,8),%XMM0;
0x2548;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	0x3ae0(%RIP),%XMM0;
0x2550;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVAPD	%XMM4,%XMM5;
0x2554;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;SUBSD	(%R8),%XMM5;
0x2559;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	%XMM3,%XMM3;
0x255d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVAPD	%XMM5,%XMM2;
0x2561;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	%XMM5,%XMM2;
0x2565;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;ADDSD	%XMM3,%XMM2;
0x2569;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVAPD	%XMM2,%XMM6;
0x256d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;SQRTSD	%XMM6,%XMM6;
0x2571;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	%XMM6,%XMM2;
0x2575;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;ADDSD	%XMM1,%XMM2;
0x2579;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;DIVSD	%XMM2,%XMM0;
0x257d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	%XMM5,%XMM0;
0x2581;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;ADDSD	(%RSI),%XMM0;
0x2585;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVSD	%XMM0,(%RSI);
0x2589;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVSD	(%R9,%RBX,8),%XMM4;
0x258f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVSD	(%R10,%RBX,8),%XMM7;
0x2595;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;SUBSD	(%R8),%XMM7;
0x259a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVSD	(%R11,%RBX,8),%XMM11;
0x25a0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	0x3a87(%RIP),%XMM11;
0x25a9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVAPD	%XMM4,%XMM8;
0x25ae;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;SUBSD	(%RDI),%XMM8;
0x25b3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	%XMM7,%XMM7;
0x25b7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVAPD	%XMM8,%XMM9;
0x25bc;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	%XMM8,%XMM9;
0x25c1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;ADDSD	%XMM7,%XMM9;
0x25c6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVAPD	%XMM9,%XMM10;
0x25cb;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;SQRTSD	%XMM10,%XMM10;
0x25d0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	%XMM10,%XMM9;
0x25d5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;ADDSD	%XMM1,%XMM9;
0x25da;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;DIVSD	%XMM9,%XMM11;
0x25df;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	%XMM8,%XMM11;
0x25e4;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;ADDSD	(%RCX),%XMM11;
0x25e9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVSD	%XMM11,(%RCX);
0x25ee;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:91;CMP	%EAX,%EBP;
0x25f0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:91;JLE	2792 <compute_accelerations+0x2e2>;
0x25f6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:91;NOPW	%CS:(%RAX,%RAX,1);
0x2600;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVSD	(%R10,%RAX,8),%XMM4;  (10) 
0x2606;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVSD	(%R9,%RAX,8),%XMM13;  (10) 
0x260c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;LEA	0x1(%RAX),%RDX;  (10) 
0x2610;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;SUBSD	(%RDI),%XMM13;  (10) 
0x2615;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVSD	(%R11,%RAX,8),%XMM5;  (10) 
0x261b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	0x3a0d(%RIP),%XMM5;  (10) 
0x2623;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVAPD	%XMM4,%XMM12;  (10) 
0x2628;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;SUBSD	(%R8),%XMM12;  (10) 
0x262d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	%XMM13,%XMM13;  (10) 
0x2632;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVAPD	%XMM12,%XMM14;  (10) 
0x2637;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	%XMM12,%XMM14;  (10) 
0x263c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;ADDSD	%XMM13,%XMM14;  (10) 
0x2641;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVAPD	%XMM14,%XMM15;  (10) 
0x2646;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;SQRTSD	%XMM15,%XMM15;  (10) 
0x264b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	%XMM15,%XMM14;  (10) 
0x2650;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;ADDSD	%XMM1,%XMM14;  (10) 
0x2655;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;DIVSD	%XMM14,%XMM5;  (10) 
0x265a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	%XMM12,%XMM5;  (10) 
0x265f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;ADDSD	(%RSI),%XMM5;  (10) 
0x2663;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVSD	%XMM5,(%RSI);  (10) 
0x2667;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVSD	(%R9,%RAX,8),%XMM4;  (10) 
0x266d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVSD	(%R10,%RAX,8),%XMM3;  (10) 
0x2673;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;SUBSD	(%R8),%XMM3;  (10) 
0x2678;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVSD	(%R11,%RAX,8),%XMM0;  (10) 
0x267e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;ADD	$0x2,%RAX;  (10) 
0x2682;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	0x39a6(%RIP),%XMM0;  (10) 
0x268a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVAPD	%XMM4,%XMM6;  (10) 
0x268e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;SUBSD	(%RDI),%XMM6;  (10) 
0x2692;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	%XMM3,%XMM3;  (10) 
0x2696;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVAPD	%XMM6,%XMM2;  (10) 
0x269a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	%XMM6,%XMM2;  (10) 
0x269e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;ADDSD	%XMM3,%XMM2;  (10) 
0x26a2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVAPD	%XMM2,%XMM7;  (10) 
0x26a6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;SQRTSD	%XMM7,%XMM7;  (10) 
0x26aa;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	%XMM7,%XMM2;  (10) 
0x26ae;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;ADDSD	%XMM1,%XMM2;  (10) 
0x26b2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;DIVSD	%XMM2,%XMM0;  (10) 
0x26b6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	%XMM6,%XMM0;  (10) 
0x26ba;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;ADDSD	(%RCX),%XMM0;  (10) 
0x26be;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVSD	%XMM0,(%RCX);  (10) 
0x26c2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVSD	(%R10,%RDX,8),%XMM4;  (10) 
0x26c8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVSD	(%R9,%RDX,8),%XMM9;  (10) 
0x26ce;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;SUBSD	(%RDI),%XMM9;  (10) 
0x26d3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVSD	(%R11,%RDX,8),%XMM12;  (10) 
0x26d9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	0x394e(%RIP),%XMM12;  (10) 
0x26e2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVAPD	%XMM4,%XMM8;  (10) 
0x26e7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;SUBSD	(%R8),%XMM8;  (10) 
0x26ec;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	%XMM9,%XMM9;  (10) 
0x26f1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVAPD	%XMM8,%XMM10;  (10) 
0x26f6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	%XMM8,%XMM10;  (10) 
0x26fb;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;ADDSD	%XMM9,%XMM10;  (10) 
0x2700;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVAPD	%XMM10,%XMM11;  (10) 
0x2705;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;SQRTSD	%XMM11,%XMM11;  (10) 
0x270a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	%XMM11,%XMM10;  (10) 
0x270f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;ADDSD	%XMM1,%XMM10;  (10) 
0x2714;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;DIVSD	%XMM10,%XMM12;  (10) 
0x2719;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MULSD	%XMM8,%XMM12;  (10) 
0x271e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;ADDSD	(%RSI),%XMM12;  (10) 
0x2723;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:94;MOVSD	%XMM12,(%RSI);  (10) 
0x2728;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVSD	(%R9,%RDX,8),%XMM4;  (10) 
0x272e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVSD	(%R10,%RDX,8),%XMM13;  (10) 
0x2734;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;SUBSD	(%R8),%XMM13;  (10) 
0x2739;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVSD	(%R11,%RDX,8),%XMM3;  (10) 
0x273f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	0x38e9(%RIP),%XMM3;  (10) 
0x2747;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVAPD	%XMM4,%XMM14;  (10) 
0x274c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;SUBSD	(%RDI),%XMM14;  (10) 
0x2751;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	%XMM13,%XMM13;  (10) 
0x2756;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVAPD	%XMM14,%XMM15;  (10) 
0x275b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	%XMM14,%XMM15;  (10) 
0x2760;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;ADDSD	%XMM13,%XMM15;  (10) 
0x2765;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVAPD	%XMM15,%XMM5;  (10) 
0x276a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;SQRTSD	%XMM5,%XMM5;  (10) 
0x276e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	%XMM5,%XMM15;  (10) 
0x2773;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;ADDSD	%XMM1,%XMM15;  (10) 
0x2778;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;DIVSD	%XMM15,%XMM3;  (10) 
0x277d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MULSD	%XMM14,%XMM3;  (10) 
0x2782;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;ADDSD	(%RCX),%XMM3;  (10) 
0x2786;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:96;MOVSD	%XMM3,(%RCX);  (10) 
0x278a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:91;CMP	%EAX,%EBP;  (10) 
0x278c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:91;JG	2600 <compute_accelerations+0x150>;  (10) 
0x2792;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:87;ADD	$0x1,%RBX;
0x2796;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:87;ADD	$0x8,%RSI;
0x279a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:87;ADD	$0x8,%RCX;
0x279e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:87;ADD	$0x8,%R8;
0x27a2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:87;ADD	$0x8,%RDI;
0x27a6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:87;CMP	%RBX,%R12;
0x27a9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:87;JNE	2508 <compute_accelerations+0x58>;
