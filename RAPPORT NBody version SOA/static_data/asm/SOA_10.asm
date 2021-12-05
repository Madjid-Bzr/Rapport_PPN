address;source_location;insn;indent
0x2298;/home/anism/Bureau/Test Nbody/SOA.c:148;MOVQ	$0,(%R9);
0x229f;/home/anism/Bureau/Test Nbody/SOA.c:149;XOR	%EDX,%EDX;
0x22a1;/home/anism/Bureau/Test Nbody/SOA.c:149;MOVQ	$0,(%R8);
0x22a8;/home/anism/Bureau/Test Nbody/SOA.c:151;TEST	$0x1,%R11B;
0x22ac;/home/anism/Bureau/Test Nbody/SOA.c:151;JE	2474 <compute_accelerations+0x224>;
0x22b2;/home/anism/Bureau/Test Nbody/SOA.c:152;TEST	%EAX,%EAX;
0x22b4;/home/anism/Bureau/Test Nbody/SOA.c:152;JE	2385 <compute_accelerations+0x135>;
0x22ba;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVSD	(%RDI,%RAX,8),%XMM4;
0x22bf;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVSD	(%RDI),%XMM3;
0x22c3;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVSD	(%RSI,%RAX,8),%XMM2;
0x22c8;/home/anism/Bureau/Test Nbody/SOA.c:154;SUBSD	(%RSI),%XMM2;
0x22cc;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVAPD	%XMM4,%XMM0;
0x22d0;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVSD	(%R10),%XMM6;
0x22d5;/home/anism/Bureau/Test Nbody/SOA.c:154;SUBSD	%XMM3,%XMM0;
0x22d9;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	0x3d4f(%RIP),%XMM6;
0x22e1;/home/anism/Bureau/Test Nbody/SOA.c:157;SUBSD	%XMM4,%XMM3;
0x22e5;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	%XMM2,%XMM2;
0x22e9;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	%XMM0,%XMM0;
0x22ed;/home/anism/Bureau/Test Nbody/SOA.c:154;ADDSD	%XMM2,%XMM0;
0x22f1;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVAPD	%XMM0,%XMM5;
0x22f5;/home/anism/Bureau/Test Nbody/SOA.c:154;SQRTSD	%XMM5,%XMM5;
0x22f9;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	%XMM5,%XMM0;
0x22fd;/home/anism/Bureau/Test Nbody/SOA.c:154;ADDSD	%XMM1,%XMM0;
0x2301;/home/anism/Bureau/Test Nbody/SOA.c:154;DIVSD	%XMM0,%XMM6;
0x2305;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVAPD	%XMM6,%XMM7;
0x2309;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	%XMM3,%XMM7;
0x230d;/home/anism/Bureau/Test Nbody/SOA.c:153;ADDSD	(%R9),%XMM7;
0x2312;/home/anism/Bureau/Test Nbody/SOA.c:153;MOVSD	%XMM7,(%R9);
0x2317;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVSD	(%RSI,%RAX,8),%XMM9;
0x231d;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVSD	(%RSI),%XMM10;
0x2322;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVSD	(%RDI,%RAX,8),%XMM8;
0x2328;/home/anism/Bureau/Test Nbody/SOA.c:162;SUBSD	(%RDI),%XMM8;
0x232d;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVAPD	%XMM9,%XMM11;
0x2332;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVSD	(%R10),%XMM0;
0x2337;/home/anism/Bureau/Test Nbody/SOA.c:162;SUBSD	%XMM10,%XMM11;
0x233c;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	0x3cec(%RIP),%XMM0;
0x2344;/home/anism/Bureau/Test Nbody/SOA.c:165;SUBSD	%XMM9,%XMM10;
0x2349;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	%XMM8,%XMM8;
0x234e;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	%XMM11,%XMM11;
0x2353;/home/anism/Bureau/Test Nbody/SOA.c:162;ADDSD	%XMM8,%XMM11;
0x2358;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVAPD	%XMM11,%XMM12;
0x235d;/home/anism/Bureau/Test Nbody/SOA.c:162;SQRTSD	%XMM12,%XMM12;
0x2362;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	%XMM12,%XMM11;
0x2367;/home/anism/Bureau/Test Nbody/SOA.c:162;ADDSD	%XMM1,%XMM11;
0x236c;/home/anism/Bureau/Test Nbody/SOA.c:162;DIVSD	%XMM11,%XMM0;
0x2371;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVAPD	%XMM0,%XMM13;
0x2376;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	%XMM10,%XMM13;
0x237b;/home/anism/Bureau/Test Nbody/SOA.c:161;ADDSD	(%R8),%XMM13;
0x2380;/home/anism/Bureau/Test Nbody/SOA.c:161;MOVSD	%XMM13,(%R8);
0x2385;/home/anism/Bureau/Test Nbody/SOA.c:151;MOV	$0x1,%EDX;
0x238a;/home/anism/Bureau/Test Nbody/SOA.c:151;JMP	2474 <compute_accelerations+0x224>;
0x2390;/home/anism/Bureau/Test Nbody/SOA.c:152;CMP	%ECX,%EAX;  (9) 
0x2392;/home/anism/Bureau/Test Nbody/SOA.c:152;JE	2470 <compute_accelerations+0x220>;  (9) 
0x2398;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVSD	(%RDI,%RAX,8),%XMM12;  (9) 
0x239e;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVSD	(%RDI,%RCX,8),%XMM13;  (9) 
0x23a4;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVSD	(%RSI,%RAX,8),%XMM15;  (9) 
0x23aa;/home/anism/Bureau/Test Nbody/SOA.c:154;SUBSD	(%RSI,%RCX,8),%XMM15;  (9) 
0x23b0;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVAPD	%XMM12,%XMM14;  (9) 
0x23b5;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVSD	(%R10,%RCX,8),%XMM0;  (9) 
0x23bb;/home/anism/Bureau/Test Nbody/SOA.c:154;SUBSD	%XMM13,%XMM14;  (9) 
0x23c0;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	0x3c68(%RIP),%XMM0;  (9) 
0x23c8;/home/anism/Bureau/Test Nbody/SOA.c:157;SUBSD	%XMM12,%XMM13;  (9) 
0x23cd;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	%XMM15,%XMM15;  (9) 
0x23d2;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	%XMM14,%XMM14;  (9) 
0x23d7;/home/anism/Bureau/Test Nbody/SOA.c:154;ADDSD	%XMM15,%XMM14;  (9) 
0x23dc;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVAPD	%XMM14,%XMM4;  (9) 
0x23e1;/home/anism/Bureau/Test Nbody/SOA.c:154;SQRTSD	%XMM4,%XMM4;  (9) 
0x23e5;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	%XMM4,%XMM14;  (9) 
0x23ea;/home/anism/Bureau/Test Nbody/SOA.c:154;ADDSD	%XMM1,%XMM14;  (9) 
0x23ef;/home/anism/Bureau/Test Nbody/SOA.c:154;DIVSD	%XMM14,%XMM0;  (9) 
0x23f4;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVAPD	%XMM0,%XMM3;  (9) 
0x23f8;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	%XMM13,%XMM3;  (9) 
0x23fd;/home/anism/Bureau/Test Nbody/SOA.c:153;ADDSD	(%R9),%XMM3;  (9) 
0x2402;/home/anism/Bureau/Test Nbody/SOA.c:153;MOVSD	%XMM3,(%R9);  (9) 
0x2407;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVSD	(%RSI,%RAX,8),%XMM6;  (9) 
0x240c;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVSD	(%RSI,%RCX,8),%XMM7;  (9) 
0x2411;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVSD	(%RDI,%RAX,8),%XMM5;  (9) 
0x2416;/home/anism/Bureau/Test Nbody/SOA.c:162;SUBSD	(%RDI,%RCX,8),%XMM5;  (9) 
0x241b;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVAPD	%XMM6,%XMM8;  (9) 
0x2420;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVSD	(%R10,%RCX,8),%XMM0;  (9) 
0x2426;/home/anism/Bureau/Test Nbody/SOA.c:162;SUBSD	%XMM7,%XMM8;  (9) 
0x242b;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	0x3bfd(%RIP),%XMM0;  (9) 
0x2433;/home/anism/Bureau/Test Nbody/SOA.c:165;SUBSD	%XMM6,%XMM7;  (9) 
0x2437;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	%XMM5,%XMM5;  (9) 
0x243b;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	%XMM8,%XMM8;  (9) 
0x2440;/home/anism/Bureau/Test Nbody/SOA.c:162;ADDSD	%XMM5,%XMM8;  (9) 
0x2445;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVAPD	%XMM8,%XMM9;  (9) 
0x244a;/home/anism/Bureau/Test Nbody/SOA.c:162;SQRTSD	%XMM9,%XMM9;  (9) 
0x244f;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	%XMM9,%XMM8;  (9) 
0x2454;/home/anism/Bureau/Test Nbody/SOA.c:162;ADDSD	%XMM1,%XMM8;  (9) 
0x2459;/home/anism/Bureau/Test Nbody/SOA.c:162;DIVSD	%XMM8,%XMM0;  (9) 
0x245e;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVAPD	%XMM0,%XMM2;  (9) 
0x2462;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	%XMM7,%XMM2;  (9) 
0x2466;/home/anism/Bureau/Test Nbody/SOA.c:161;ADDSD	(%R8),%XMM2;  (9) 
0x246b;/home/anism/Bureau/Test Nbody/SOA.c:161;MOVSD	%XMM2,(%R8);  (9) 
0x2470;/home/anism/Bureau/Test Nbody/SOA.c:151;LEA	0x1(%RCX),%RDX;  (9) 
0x2474;/home/anism/Bureau/Test Nbody/SOA.c:152;CMP	%EDX,%EAX;  (9) 
0x2476;/home/anism/Bureau/Test Nbody/SOA.c:152;JE	254f <compute_accelerations+0x2ff>;  (9) 
0x247c;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVSD	(%RDI,%RAX,8),%XMM14;  (9) 
0x2482;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVSD	(%RDI,%RDX,8),%XMM15;  (9) 
0x2488;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVSD	(%RSI,%RAX,8),%XMM3;  (9) 
0x248d;/home/anism/Bureau/Test Nbody/SOA.c:154;SUBSD	(%RSI,%RDX,8),%XMM3;  (9) 
0x2492;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVAPD	%XMM14,%XMM4;  (9) 
0x2497;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVSD	(%R10,%RDX,8),%XMM0;  (9) 
0x249d;/home/anism/Bureau/Test Nbody/SOA.c:154;SUBSD	%XMM15,%XMM4;  (9) 
0x24a2;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	0x3b86(%RIP),%XMM0;  (9) 
0x24aa;/home/anism/Bureau/Test Nbody/SOA.c:157;SUBSD	%XMM14,%XMM15;  (9) 
0x24af;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	%XMM3,%XMM3;  (9) 
0x24b3;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	%XMM4,%XMM4;  (9) 
0x24b7;/home/anism/Bureau/Test Nbody/SOA.c:154;ADDSD	%XMM3,%XMM4;  (9) 
0x24bb;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVAPD	%XMM4,%XMM5;  (9) 
0x24bf;/home/anism/Bureau/Test Nbody/SOA.c:154;SQRTSD	%XMM5,%XMM5;  (9) 
0x24c3;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	%XMM5,%XMM4;  (9) 
0x24c7;/home/anism/Bureau/Test Nbody/SOA.c:154;ADDSD	%XMM1,%XMM4;  (9) 
0x24cb;/home/anism/Bureau/Test Nbody/SOA.c:154;DIVSD	%XMM4,%XMM0;  (9) 
0x24cf;/home/anism/Bureau/Test Nbody/SOA.c:154;MOVAPD	%XMM0,%XMM2;  (9) 
0x24d3;/home/anism/Bureau/Test Nbody/SOA.c:154;MULSD	%XMM15,%XMM2;  (9) 
0x24d8;/home/anism/Bureau/Test Nbody/SOA.c:153;ADDSD	(%R9),%XMM2;  (9) 
0x24dd;/home/anism/Bureau/Test Nbody/SOA.c:153;MOVSD	%XMM2,(%R9);  (9) 
0x24e2;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVSD	(%RSI,%RAX,8),%XMM7;  (9) 
0x24e7;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVSD	(%RDI,%RAX,8),%XMM6;  (9) 
0x24ec;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVSD	(%RSI,%RDX,8),%XMM8;  (9) 
0x24f2;/home/anism/Bureau/Test Nbody/SOA.c:162;SUBSD	(%RDI,%RDX,8),%XMM6;  (9) 
0x24f7;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVAPD	%XMM7,%XMM9;  (9) 
0x24fc;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVSD	(%R10,%RDX,8),%XMM0;  (9) 
0x2502;/home/anism/Bureau/Test Nbody/SOA.c:162;SUBSD	%XMM8,%XMM9;  (9) 
0x2507;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	0x3b21(%RIP),%XMM0;  (9) 
0x250f;/home/anism/Bureau/Test Nbody/SOA.c:165;SUBSD	%XMM7,%XMM8;  (9) 
0x2514;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	%XMM6,%XMM6;  (9) 
0x2518;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	%XMM9,%XMM9;  (9) 
0x251d;/home/anism/Bureau/Test Nbody/SOA.c:162;ADDSD	%XMM6,%XMM9;  (9) 
0x2522;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVAPD	%XMM9,%XMM10;  (9) 
0x2527;/home/anism/Bureau/Test Nbody/SOA.c:162;SQRTSD	%XMM10,%XMM10;  (9) 
0x252c;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	%XMM10,%XMM9;  (9) 
0x2531;/home/anism/Bureau/Test Nbody/SOA.c:162;ADDSD	%XMM1,%XMM9;  (9) 
0x2536;/home/anism/Bureau/Test Nbody/SOA.c:162;DIVSD	%XMM9,%XMM0;  (9) 
0x253b;/home/anism/Bureau/Test Nbody/SOA.c:162;MOVAPD	%XMM0,%XMM11;  (9) 
0x2540;/home/anism/Bureau/Test Nbody/SOA.c:162;MULSD	%XMM8,%XMM11;  (9) 
0x2545;/home/anism/Bureau/Test Nbody/SOA.c:161;ADDSD	(%R8),%XMM11;  (9) 
0x254a;/home/anism/Bureau/Test Nbody/SOA.c:161;MOVSD	%XMM11,(%R8);  (9) 
0x254f;/home/anism/Bureau/Test Nbody/SOA.c:151;LEA	0x1(%RDX),%RCX;  (9) 
0x2553;/home/anism/Bureau/Test Nbody/SOA.c:151;CMP	%RDX,%R11;  (9) 
0x2556;/home/anism/Bureau/Test Nbody/SOA.c:151;JNE	2390 <compute_accelerations+0x140>;  (9) 
0x255c;/home/anism/Bureau/Test Nbody/SOA.c:146;LEA	0x1(%RAX),%RDX;
0x2560;/home/anism/Bureau/Test Nbody/SOA.c:146;ADD	$0x8,%R9;
0x2564;/home/anism/Bureau/Test Nbody/SOA.c:146;ADD	$0x8,%R8;
0x2568;/home/anism/Bureau/Test Nbody/SOA.c:146;CMP	%RAX,%R11;
0x256b;/home/anism/Bureau/Test Nbody/SOA.c:146;JE	2578 <compute_accelerations+0x328>;
0x256d;/home/anism/Bureau/Test Nbody/SOA.c:146;MOV	%RDX,%RAX;
0x2570;/home/anism/Bureau/Test Nbody/SOA.c:146;JMP	2298 <compute_accelerations+0x48>;
