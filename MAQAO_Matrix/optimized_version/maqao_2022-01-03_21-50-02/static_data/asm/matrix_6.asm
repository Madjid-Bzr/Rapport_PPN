address;source_location;insn;indent
0x14b8;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	(%RDX,%RAX,1),%YMM5,%YMM11;
0x14bd;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	(%RCX,%RAX,1),%YMM1,%YMM12;
0x14c3;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0x20(%RDX,%RAX,1),%YMM5,%YMM14;
0x14c9;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM12,%YMM11,%YMM13;
0x14ce;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM13,(%RDX,%RAX,1);
0x14d3;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0x20(%RAX,%RCX,1),%YMM1,%YMM15;
0x14da;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0x40(%RDX,%RAX,1),%YMM5,%YMM2;
0x14e0;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM15,%YMM14,%YMM0;
0x14e5;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM0,0x20(%RDX,%RAX,1);
0x14eb;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0x40(%RAX,%RCX,1),%YMM1,%YMM6;
0x14f2;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0x60(%RDX,%RAX,1),%YMM5,%YMM7;
0x14f8;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM6,%YMM2,%YMM4;
0x14fc;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM4,0x40(%RDX,%RAX,1);
0x1502;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0x60(%RAX,%RCX,1),%YMM1,%YMM8;
0x1509;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0x80(%RDX,%RAX,1),%YMM5,%YMM10;
0x1512;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM8,%YMM7,%YMM9;
0x1517;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM9,0x60(%RDX,%RAX,1);
0x151d;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0x80(%RAX,%RCX,1),%YMM1,%YMM11;
0x1527;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0xa0(%RDX,%RAX,1),%YMM5,%YMM13;
0x1530;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM11,%YMM10,%YMM12;
0x1535;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM12,0x80(%RDX,%RAX,1);
0x153e;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0xa0(%RAX,%RCX,1),%YMM1,%YMM14;
0x1548;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0xc0(%RDX,%RAX,1),%YMM5,%YMM0;
0x1551;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM14,%YMM13,%YMM15;
0x1556;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM15,0xa0(%RDX,%RAX,1);
0x155f;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0xc0(%RAX,%RCX,1),%YMM1,%YMM2;
0x1569;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0xe0(%RDX,%RAX,1),%YMM5,%YMM7;
0x1572;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM2,%YMM0,%YMM6;
0x1576;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM6,0xc0(%RDX,%RAX,1);
0x157f;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0xe0(%RAX,%RCX,1),%YMM1,%YMM4;
0x1589;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0x100(%RDX,%RAX,1),%YMM5,%YMM9;
0x1592;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM4,%YMM7,%YMM8;
0x1596;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM8,0xe0(%RDX,%RAX,1);
0x159f;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0x100(%RAX,%RCX,1),%YMM1,%YMM10;
0x15a9;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPANDN	0x120(%RDX,%RAX,1),%YMM5,%YMM12;
0x15b2;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM10,%YMM9,%YMM11;
0x15b7;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM11,0x100(%RDX,%RAX,1);
0x15c0;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPMULLD	0x120(%RAX,%RCX,1),%YMM1,%YMM13;
0x15ca;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:37;VPADDD	%YMM13,%YMM12,%YMM14;
0x15cf;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:39;VMOVDQU	%YMM14,0x120(%RDX,%RAX,1);
0x15d8;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:34;ADD	$0x140,%RAX;
0x15de;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:34;CMP	$0x7c0,%RAX;
0x15e4;/home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:34;JNE	14b8 <matrixMultiplication+0xa8>;