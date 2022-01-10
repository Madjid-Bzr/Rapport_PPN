_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "18 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 25 FP arithmetical operations:\n - 12: addition or subtraction (8 inside FMA instructions)\n - 11: multiply (8 inside FMA instructions)\n - 1: divide\n - 1: square root\nThe binary loop is loading 84 bytes (21 single precision FP elements).\nThe binary loop is storing 52 bytes (13 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.18 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 57\nnb uops            : 58\nloop length        : 273\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 7\nADD-SUB / MUL ratio: 1.33\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 12.80 cycles\nfront end            : 12.80 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n----------------------------------------------------------------------------\nuops   | 9.50 | 9.50 | 9.00 | 9.00 | 5.50 | 4.00 | 6.00 | 5.50 | 5.50 | 5.50\ncycles | 9.50 | 9.50 | 9.00 | 9.00 | 5.50 | 4.00 | 6.00 | 5.50 | 5.50 | 5.50\n\nCycles executing div or sqrt instructions: 6.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.80\nDispatch  : 9.50\nDIV/SQRT  : 6.00\nOverall L1: 12.80\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 10%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 80%\nINT+FP\nall     : 9%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 80%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 8%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 21%\nINT+FP\nall     : 8%\nload    : 6%\nstore   : 8%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 21%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 12.80 cycles. At this rate:\n - 5% of peak load performance is reached (6.56 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 6% of peak store performance is reached (4.06 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 12.80 to 9.50 cycles (1.35x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1b60\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------------------------\nXOR %ECX,%ECX                          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nVMOVAPS %XMM4,%XMM14                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nVMOVAPS %XMM4,%XMM13                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nVMOVAPS %XMM4,%XMM12                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nTEST $0x1,%DIL                         | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJNE 1c45 <move_particles+0x135>        | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nVMOVSS (%R13),%XMM3                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS (%R13,%RBX,4),%XMM3,%XMM13      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS (%R14),%XMM8                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS (%R14,%RBX,4),%XMM8,%XMM12      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS (%R12),%XMM2                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS (%R12,%RBX,4),%XMM2,%XMM14      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMULSS %XMM13,%XMM13,%XMM0             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVFMADD231SS %XMM12,%XMM12,%XMM0        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVFMADD231SS %XMM14,%XMM14,%XMM0        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVADDSS %XMM7,%XMM0,%XMM0               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVUCOMISS %XMM0,%XMM4                   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 1\nJA 21bf <move_particles+0x6af>         | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nVSQRTSS %XMM0,%XMM0,%XMM0              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 12      | 3\nVMULSS %XMM0,%XMM0,%XMM1               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMOV $0x1,%ECX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMULSS %XMM0,%XMM1,%XMM9               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVDIVSS %XMM9,%XMM6,%XMM10              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 11      | 3\nVFMADD132SS %XMM10,%XMM4,%XMM12        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVFMADD132SS %XMM10,%XMM4,%XMM13        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVFMADD132SS %XMM10,%XMM4,%XMM14        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nJMP 1c45 <move_particles+0x135>        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\nVFMADD213SS (%RDX,%RBX,4),%XMM5,%XMM12 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nLEA 0x1(%RBX),%R8                      | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS %XMM12,(%RDX,%RBX,4)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVFMADD213SS (%RAX,%RBX,4),%XMM5,%XMM13 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM13,(%RAX,%RBX,4)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVFMADD213SS (%R15,%RBX,4),%XMM5,%XMM14 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM14,(%R15,%RBX,4)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nCMP %RBX,%RCX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJE 1cf0 <move_particles+0x1e0>         | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOV %R8,%RBX                           | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nJMP 1b60 <move_particles+0x50>         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\nMOV %RDI,-0x50(%RBP)                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV %RAX,-0x40(%RBP)                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV %RDX,-0x38(%RBP)                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM14,-0x60(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM13,-0x58(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM12,-0x48(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM5,-0x44(%RBP)               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nCALL 1140 <.plt.sec@start+0x50>        | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOV -0x38(%RBP),%RDX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x40(%RBP),%RAX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nVXORPS %XMM4,%XMM4,%XMM4               | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nVMOVSS -0x44(%RBP),%XMM5               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOV -0x50(%RBP),%RDI                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nVMOVSS -0x48(%RBP),%XMM12              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMOVSS -0x58(%RBP),%XMM13              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMOVSS 0xf1d(%RIP),%XMM6               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMOVSS -0x60(%RBP),%XMM14              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMOVSS 0xf18(%RIP),%XMM7               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nJMP 1bbd <move_particles+0xad>         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "3% of peak computational performance is used (1.95 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 12.80 to 9.80 cycles (1.31x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 12.80 to 0.86 cycles (14.95x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 8 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "18 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 25 FP arithmetical operations:\n - 12: addition or subtraction (8 inside FMA instructions)\n - 11: multiply (8 inside FMA instructions)\n - 1: divide\n - 1: square root\nThe binary loop is loading 84 bytes (21 single precision FP elements).\nThe binary loop is storing 52 bytes (13 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.18 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 57\nnb uops            : 58\nloop length        : 273\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 7\nADD-SUB / MUL ratio: 1.33\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 12.80 cycles\nfront end            : 12.80 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n----------------------------------------------------------------------------\nuops   | 9.50 | 9.50 | 9.00 | 9.00 | 5.50 | 4.00 | 6.00 | 5.50 | 5.50 | 5.50\ncycles | 9.50 | 9.50 | 9.00 | 9.00 | 5.50 | 4.00 | 6.00 | 5.50 | 5.50 | 5.50\n\nCycles executing div or sqrt instructions: 6.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.80\nDispatch  : 9.50\nDIV/SQRT  : 6.00\nOverall L1: 12.80\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 10%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 80%\nINT+FP\nall     : 9%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 80%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 8%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 21%\nINT+FP\nall     : 8%\nload    : 6%\nstore   : 8%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 21%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 12.80 cycles. At this rate:\n - 5% of peak load performance is reached (6.56 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 6% of peak store performance is reached (4.06 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 12.80 to 9.50 cycles (1.35x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1b60\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------------------------\nXOR %ECX,%ECX                          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nVMOVAPS %XMM4,%XMM14                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nVMOVAPS %XMM4,%XMM13                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nVMOVAPS %XMM4,%XMM12                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nTEST $0x1,%DIL                         | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJNE 1c45 <move_particles+0x135>        | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nVMOVSS (%R13),%XMM3                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS (%R13,%RBX,4),%XMM3,%XMM13      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS (%R14),%XMM8                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS (%R14,%RBX,4),%XMM8,%XMM12      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS (%R12),%XMM2                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS (%R12,%RBX,4),%XMM2,%XMM14      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMULSS %XMM13,%XMM13,%XMM0             | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVFMADD231SS %XMM12,%XMM12,%XMM0        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVFMADD231SS %XMM14,%XMM14,%XMM0        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVADDSS %XMM7,%XMM0,%XMM0               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVUCOMISS %XMM0,%XMM4                   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 1\nJA 21bf <move_particles+0x6af>         | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nVSQRTSS %XMM0,%XMM0,%XMM0              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 12      | 3\nVMULSS %XMM0,%XMM0,%XMM1               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMOV $0x1,%ECX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMULSS %XMM0,%XMM1,%XMM9               | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVDIVSS %XMM9,%XMM6,%XMM10              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 11      | 3\nVFMADD132SS %XMM10,%XMM4,%XMM12        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVFMADD132SS %XMM10,%XMM4,%XMM13        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVFMADD132SS %XMM10,%XMM4,%XMM14        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nJMP 1c45 <move_particles+0x135>        | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\nVFMADD213SS (%RDX,%RBX,4),%XMM5,%XMM12 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nLEA 0x1(%RBX),%R8                      | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS %XMM12,(%RDX,%RBX,4)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVFMADD213SS (%RAX,%RBX,4),%XMM5,%XMM13 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM13,(%RAX,%RBX,4)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVFMADD213SS (%R15,%RBX,4),%XMM5,%XMM14 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM14,(%R15,%RBX,4)            | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nCMP %RBX,%RCX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJE 1cf0 <move_particles+0x1e0>         | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOV %R8,%RBX                           | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nJMP 1b60 <move_particles+0x50>         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\nMOV %RDI,-0x50(%RBP)                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV %RAX,-0x40(%RBP)                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV %RDX,-0x38(%RBP)                   | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM14,-0x60(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM13,-0x58(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM12,-0x48(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM5,-0x44(%RBP)               | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nCALL 1140 <.plt.sec@start+0x50>        | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOV -0x38(%RBP),%RDX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x40(%RBP),%RAX                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nVXORPS %XMM4,%XMM4,%XMM4               | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nVMOVSS -0x44(%RBP),%XMM5               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOV -0x50(%RBP),%RDI                   | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nVMOVSS -0x48(%RBP),%XMM12              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMOVSS -0x58(%RBP),%XMM13              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMOVSS 0xf1d(%RIP),%XMM6               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMOVSS -0x60(%RBP),%XMM14              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMOVSS 0xf18(%RIP),%XMM7               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nJMP 1bbd <move_particles+0xad>         | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "3% of peak computational performance is used (1.95 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 12.80 to 9.80 cycles (1.31x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 12.80 to 0.86 cycles (14.95x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 8 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/anism/Bureau/Comparaison/nbody1.c:81-114.\n",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Too many paths. Rerun with max-paths=18\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 18 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 18,
  },
}
