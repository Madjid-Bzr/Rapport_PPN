address;source_location;insn;indent
0x1322;/home/arezki/multiplication/test1/mat.c:34;MOV	(%RSI,%R9,8),%R8;
0x1326;/home/arezki/multiplication/test1/mat.c:34;MOV	(%R8,%R11,1),%ECX;
0x132a;/home/arezki/multiplication/test1/mat.c:34;IMUL	(%RBX,%R9,4),%ECX;
0x132f;/home/arezki/multiplication/test1/mat.c:34;LEA	0x1(%R9),%R8;
0x1333;/home/arezki/multiplication/test1/mat.c:34;ADD	%ECX,%EAX;
0x1335;/home/arezki/multiplication/test1/mat.c:34;MOV	(%RSI,%R8,8),%RCX;
0x1339;/home/arezki/multiplication/test1/mat.c:34;MOV	%EAX,(%R10);
0x133c;/home/arezki/multiplication/test1/mat.c:34;MOV	(%RCX,%R11,1),%ECX;
0x1340;/home/arezki/multiplication/test1/mat.c:34;IMUL	(%RBX,%R8,4),%ECX;
0x1345;/home/arezki/multiplication/test1/mat.c:34;LEA	(%RAX,%RCX,1),%R8D;
0x1349;/home/arezki/multiplication/test1/mat.c:34;LEA	0x2(%R9),%RCX;
0x134d;/home/arezki/multiplication/test1/mat.c:34;MOV	(%RSI,%RCX,8),%RAX;
0x1351;/home/arezki/multiplication/test1/mat.c:34;MOV	%R8D,(%R10);
0x1354;/home/arezki/multiplication/test1/mat.c:34;MOV	(%RAX,%R11,1),%EAX;
0x1358;/home/arezki/multiplication/test1/mat.c:34;IMUL	(%RBX,%RCX,4),%EAX;
0x135c;/home/arezki/multiplication/test1/mat.c:34;LEA	(%R8,%RAX,1),%ECX;
0x1360;/home/arezki/multiplication/test1/mat.c:34;LEA	0x3(%R9),%RAX;
0x1364;/home/arezki/multiplication/test1/mat.c:34;MOV	(%RSI,%RAX,8),%R8;
0x1368;/home/arezki/multiplication/test1/mat.c:34;MOV	%ECX,(%R10);
0x136b;/home/arezki/multiplication/test1/mat.c:34;MOV	(%R8,%R11,1),%R8D;
0x136f;/home/arezki/multiplication/test1/mat.c:34;IMUL	(%RBX,%RAX,4),%R8D;
0x1374;/home/arezki/multiplication/test1/mat.c:34;LEA	(%RCX,%R8,1),%EAX;
0x1378;/home/arezki/multiplication/test1/mat.c:34;LEA	0x4(%R9),%R8;
0x137c;/home/arezki/multiplication/test1/mat.c:34;MOV	(%RSI,%R8,8),%RCX;
0x1380;/home/arezki/multiplication/test1/mat.c:34;MOV	%EAX,(%R10);
0x1383;/home/arezki/multiplication/test1/mat.c:34;MOV	(%RCX,%R11,1),%ECX;
0x1387;/home/arezki/multiplication/test1/mat.c:34;IMUL	(%RBX,%R8,4),%ECX;
0x138c;/home/arezki/multiplication/test1/mat.c:34;LEA	(%RAX,%RCX,1),%R8D;
0x1390;/home/arezki/multiplication/test1/mat.c:34;LEA	0x5(%R9),%RAX;
0x1394;/home/arezki/multiplication/test1/mat.c:34;MOV	(%RSI,%RAX,8),%RCX;
0x1398;/home/arezki/multiplication/test1/mat.c:34;MOV	%R8D,(%R10);
0x139b;/home/arezki/multiplication/test1/mat.c:34;MOV	(%RCX,%R11,1),%ECX;
0x139f;/home/arezki/multiplication/test1/mat.c:34;IMUL	(%RBX,%RAX,4),%ECX;
0x13a3;/home/arezki/multiplication/test1/mat.c:34;ADD	%R8D,%ECX;
0x13a6;/home/arezki/multiplication/test1/mat.c:34;LEA	0x6(%R9),%R8;
0x13aa;/home/arezki/multiplication/test1/mat.c:34;MOV	(%RSI,%R8,8),%RAX;
0x13ae;/home/arezki/multiplication/test1/mat.c:34;MOV	%ECX,(%R10);
0x13b1;/home/arezki/multiplication/test1/mat.c:34;MOV	(%RAX,%R11,1),%EAX;
0x13b5;/home/arezki/multiplication/test1/mat.c:34;IMUL	(%RBX,%R8,4),%EAX;
0x13ba;/home/arezki/multiplication/test1/mat.c:34;LEA	0x7(%R9),%R8;
0x13be;/home/arezki/multiplication/test1/mat.c:34;ADD	$0x8,%R9;
0x13c2;/home/arezki/multiplication/test1/mat.c:34;ADD	%EAX,%ECX;
0x13c4;/home/arezki/multiplication/test1/mat.c:34;MOV	(%RSI,%R8,8),%RAX;
0x13c8;/home/arezki/multiplication/test1/mat.c:34;MOV	%ECX,(%R10);
0x13cb;/home/arezki/multiplication/test1/mat.c:34;MOV	(%RAX,%R11,1),%EAX;
0x13cf;/home/arezki/multiplication/test1/mat.c:34;IMUL	(%RBX,%R8,4),%EAX;
0x13d4;/home/arezki/multiplication/test1/mat.c:34;ADD	%ECX,%EAX;
0x13d6;/home/arezki/multiplication/test1/mat.c:34;MOV	%EAX,(%R10);
0x13d9;/home/arezki/multiplication/test1/mat.c:33;CMP	%R9,%R12;
0x13dc;/home/arezki/multiplication/test1/mat.c:33;JNE	1322 <mul_matrix+0x142>;
