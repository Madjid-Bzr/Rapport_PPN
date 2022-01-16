address;source_location;insn;indent
0x2a50;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:135;ENDBR64;
0x2a54;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:135;PUSH	%RBX;
0x2a55;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:136;MOV	0x45d5(%RIP),%EBX;
0x2a5b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:136;TEST	%EBX,%EBX;
0x2a5d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:136;JLE	2c01 <compute_accelerations+0x1b1>;
0x2a63;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:136;MOV	0x45b6(%RIP),%R11;
0x2a6a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;MOV	0x45d7(%RIP),%R9;
0x2a71;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:136;XOR	%EDI,%EDI;
0x2a73;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:138;VXORPD	%XMM4,%XMM4,%XMM4;
0x2a77;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;VMOVSD	0x45a9(%RIP),%XMM3;
0x2a7f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;MOV	0x45b2(%RIP),%RCX;
0x2a86;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;LEA	-0x1(%RBX),%R10D;
0x2a8a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;VMOVAPD	0x259e(%RIP),%XMM2;
0x2a92;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;MOV	%R11,%R8;
0x2a95;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;NOPL	(%RAX);
0x2a98;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:138;VMOVUPS	%XMM4,(%RCX);(11) 
0x2a9c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:138;MOV	%R11,%RAX;(11) 
0x2a9f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:138;XOR	%EDX,%EDX;(11) 
0x2aa1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:138;TEST	$0x1,%R10B;(11) 
0x2aa5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:138;JE	2b7f <compute_accelerations+0x12f>;(11) 
0x2aab;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:142;TEST	%EDI,%EDI;(11) 
0x2aad;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:142;JE	2b0a <compute_accelerations+0xba>;(11) 
0x2aaf;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VMOVUPD	(%R11),%XMM6;(11) 
0x2ab4;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VMOVUPD	(%R8),%XMM0;(11) 
0x2ab9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;VMULSD	(%R9),%XMM3,%XMM5;(11) 
0x2abe;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VPERMILPD	$0x3,%XMM6,%XMM11;(11) 
0x2ac4;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VPERMILPD	$0x3,%XMM0,%XMM10;(11) 
0x2aca;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VPERMILPD	$0,%XMM6,%XMM8;(11) 
0x2ad0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VSUBPD	%XMM11,%XMM10,%XMM12;(11) 
0x2ad5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VPERMILPD	$0,%XMM0,%XMM1;(11) 
0x2adb;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VSUBPD	%XMM0,%XMM6,%XMM7;(11) 
0x2adf;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VSUBPD	%XMM8,%XMM1,%XMM9;(11) 
0x2ae4;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:88;VMULPD	%XMM12,%XMM12,%XMM13;(11) 
0x2ae9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VMOVDDUP	%XMM5,%XMM15;(11) 
0x2aed;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:88;VFMADD231PD	%XMM9,%XMM9,%XMM13;(11) 
0x2af2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;VSQRTPD	%XMM13,%XMM14;(11) 
0x2af7;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;VFMADD132PD	%XMM14,%XMM2,%XMM13;(11) 
0x2afc;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VDIVPD	%XMM13,%XMM15,%XMM6;(11) 
0x2b01;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:64;VFMADD132PD	%XMM7,%XMM4,%XMM6;(11) 
0x2b06;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VMOVUPS	%XMM6,(%RCX);(11) 
0x2b0a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:141;LEA	0x10(%R11),%RAX;(11) 
0x2b0e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:141;MOV	$0x1,%EDX;(11) 
0x2b13;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:141;JMP	2b7f <compute_accelerations+0x12f>;(11) 
0x2b15;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:141;NOPL	(%RAX);
0x2b18;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:142;CMP	%ESI,%EDI;  (10) 
0x2b1a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:142;JE	2b77 <compute_accelerations+0x127>;  (10) 
0x2b1c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VMOVUPD	(%RAX),%XMM10;  (10) 
0x2b20;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VMOVUPD	(%R8),%XMM0;  (10) 
0x2b25;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;VMULSD	(%R9,%RSI,8),%XMM3,%XMM5;  (10) 
0x2b2b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VPERMILPD	$0x3,%XMM10,%XMM13;  (10) 
0x2b31;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VPERMILPD	$0x3,%XMM0,%XMM12;  (10) 
0x2b37;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VPERMILPD	$0,%XMM10,%XMM8;  (10) 
0x2b3d;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VSUBPD	%XMM13,%XMM12,%XMM14;  (10) 
0x2b42;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VPERMILPD	$0,%XMM0,%XMM1;  (10) 
0x2b48;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VSUBPD	%XMM0,%XMM10,%XMM7;  (10) 
0x2b4c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VSUBPD	%XMM8,%XMM1,%XMM11;  (10) 
0x2b51;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:88;VMULPD	%XMM14,%XMM14,%XMM15;  (10) 
0x2b56;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VMOVDDUP	%XMM5,%XMM9;  (10) 
0x2b5a;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:88;VFMADD231PD	%XMM11,%XMM11,%XMM15;  (10) 
0x2b5f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;VSQRTPD	%XMM15,%XMM6;  (10) 
0x2b64;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;VFMADD132PD	%XMM6,%XMM2,%XMM15;  (10) 
0x2b69;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VDIVPD	%XMM15,%XMM9,%XMM10;  (10) 
0x2b6e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:64;VFMADD213PD	(%RCX),%XMM7,%XMM10;  (10) 
0x2b73;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VMOVUPS	%XMM10,(%RCX);  (10) 
0x2b77;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:141;ADD	$0x10,%RAX;  (10) 
0x2b7b;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:141;LEA	0x1(%RSI),%RDX;  (10) 
0x2b7f;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:142;CMP	%EDX,%EDI;  (10) 
0x2b81;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:142;JE	2bde <compute_accelerations+0x18e>;  (10) 
0x2b83;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VMOVUPD	(%RAX),%XMM9;  (10) 
0x2b87;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VMOVUPD	(%R8),%XMM0;  (10) 
0x2b8c;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;VMULSD	(%R9,%RDX,8),%XMM3,%XMM5;  (10) 
0x2b92;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VPERMILPD	$0x3,%XMM9,%XMM12;  (10) 
0x2b98;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VPERMILPD	$0x3,%XMM0,%XMM11;  (10) 
0x2b9e;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VPERMILPD	$0,%XMM9,%XMM8;  (10) 
0x2ba4;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VSUBPD	%XMM12,%XMM11,%XMM13;  (10) 
0x2ba9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VPERMILPD	$0,%XMM0,%XMM1;  (10) 
0x2baf;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VSUBPD	%XMM0,%XMM9,%XMM7;  (10) 
0x2bb3;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:80;VSUBPD	%XMM8,%XMM1,%XMM10;  (10) 
0x2bb8;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:88;VMULPD	%XMM13,%XMM13,%XMM14;  (10) 
0x2bbd;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VMOVDDUP	%XMM5,%XMM6;  (10) 
0x2bc1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:88;VFMADD231PD	%XMM10,%XMM10,%XMM14;  (10) 
0x2bc6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;VSQRTPD	%XMM14,%XMM15;  (10) 
0x2bcb;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:144;VFMADD132PD	%XMM15,%XMM2,%XMM14;  (10) 
0x2bd0;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VDIVPD	%XMM14,%XMM6,%XMM9;  (10) 
0x2bd5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:64;VFMADD213PD	(%RCX),%XMM7,%XMM9;  (10) 
0x2bda;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:143;VMOVUPS	%XMM9,(%RCX);  (10) 
0x2bde;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:141;LEA	0x1(%RDX),%RSI;  (10) 
0x2be2;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:141;ADD	$0x10,%RAX;  (10) 
0x2be6;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:141;CMP	%RDX,%R10;  (10) 
0x2be9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:141;JNE	2b18 <compute_accelerations+0xc8>;  (10) 
0x2bef;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:136;INC	%EDI;(11) 
0x2bf1;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:136;ADD	$0x10,%RCX;(11) 
0x2bf5;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:136;ADD	$0x10,%R8;(11) 
0x2bf9;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:136;CMP	%EDI,%EBX;(11) 
0x2bfb;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:136;JNE	2a98 <compute_accelerations+0x48>;(11) 
0x2c01;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:147;POP	%RBX;
0x2c02;/home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:147;RET;
0x2c03;:0;NOPW	%CS:(%RAX,%RAX,1);
0x2c0e;:0;XCHG	%AX,%AX;
