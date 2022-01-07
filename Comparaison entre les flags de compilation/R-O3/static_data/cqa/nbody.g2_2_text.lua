_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "15 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 19 FP arithmetical operations:\n - 9: addition or subtraction (5 inside FMA instructions)\n - 8: multiply (5 inside FMA instructions)\n - 1: divide\n - 1: square root\nThe binary loop is loading 24 bytes (6 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.79 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 22\nnb uops            : 21\nloop length        : 108\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 13\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.33\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 4.80 cycles\nfront end            : 4.80 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n----------------------------------------------------------------------------\nuops   | 7.50 | 7.50 | 3.00 | 3.00 | 0.00 | 1.00 | 2.00 | 0.00 | 0.00 | 0.00\ncycles | 7.50 | 7.50 | 3.00 | 3.00 | 0.00 | 1.00 | 2.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: 6.00\nLongest recurrence chain latency (RecMII): 4.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 4.80\nDispatch  : 7.50\nDIV/SQRT  : 6.00\nData deps.: 4.00\nOverall L1: 7.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 6%\nload    : 6%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 7.50 cycles. At this rate:\n - 2% of peak load performance is reached (3.20 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1b80\n\nInstruction                       | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7 | P8 | P9 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------------------\nVMOVSS (%R14,%RBX,4),%XMM3        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVSUBSS (%R14,%R12,4),%XMM3,%XMM13 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVSS (%R15,%RBX,4),%XMM4        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVSUBSS (%R15,%R12,4),%XMM4,%XMM12 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVSS (%R13,%RBX,4),%XMM2        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVSUBSS (%R13,%R12,4),%XMM2,%XMM14 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULSS %XMM13,%XMM13,%XMM0        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD231SS %XMM12,%XMM12,%XMM0   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD231SS %XMM14,%XMM14,%XMM0   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVADDSS %XMM11,%XMM0,%XMM0         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVUCOMISS %XMM0,%XMM9              | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 1       | 1\nJA 1fbd <move_particles+0x4ad>    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0  | 0  | 0  | 0       | 0.50-1\nVSQRTSS %XMM0,%XMM0,%XMM0         | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 12      | 3\nADD $0x1,%RBX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nVMULSS %XMM0,%XMM0,%XMM3          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULSS %XMM0,%XMM3,%XMM2          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVDIVSS %XMM2,%XMM10,%XMM0         | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 11      | 3\nVFMADD231SS %XMM12,%XMM0,%XMM5    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD231SS %XMM13,%XMM0,%XMM6    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD231SS %XMM14,%XMM0,%XMM7    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nCMP %RBX,%RDI                     | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nJNE 1b80 <move_particles+0x70>    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0  | 0  | 0  | 0       | 0.50-1\n",
        },
      },
      header = {
        "3% of peak computational performance is used (2.53 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n16 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 7.50 to 0.75 cycles (10.00x speedup).",
        },
        {
          workaround = " -  - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n - Reduce the number of FP add instructions\n - Reduce the number of FP multiply/FMA instructions\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of divide and square root operations (the divide/square root unit is a bottleneck)\n - execution of FP add operations (the FP add unit is a bottleneck)\n - execution of FP multiply or FMA (fused multiply-add) operations (the FP multiply/FMA unit is a bottleneck)\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 5 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "14 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 18 FP arithmetical operations:\n - 9: addition or subtraction (5 inside FMA instructions)\n - 8: multiply (5 inside FMA instructions)\n - 1: divide\nThe binary loop is loading 92 bytes (23 single precision FP elements).\nThe binary loop is storing 60 bytes (15 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.12 FP operations per loaded or stored byte.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 47\nnb uops            : 48\nloop length        : 237\nused x86 registers : 10\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 11\nADD-SUB / MUL ratio: 1.33\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 10.20 cycles\nfront end            : 10.20 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n----------------------------------------------------------------------------\nuops   | 7.00 | 7.00 | 9.50 | 9.50 | 6.00 | 2.00 | 3.00 | 6.00 | 6.00 | 6.00\ncycles | 7.00 | 7.00 | 9.50 | 9.50 | 6.00 | 2.00 | 3.00 | 6.00 | 6.00 | 6.00\n\nCycles executing div or sqrt instructions: 3.00\nLongest recurrence chain latency (RecMII): 4.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 10.20\nDispatch  : 9.50\nDIV/SQRT  : 3.00\nData deps.: 4.00\nOverall L1: 10.20\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 2%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 50%\nINT+FP\nall     : 2%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 50%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 6%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 15%\nINT+FP\nall     : 7%\nload    : 7%\nstore   : 8%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 15%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 10.20 cycles. At this rate:\n - 7% of peak load performance is reached (9.02 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 9% of peak store performance is reached (5.88 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 10.20 to 9.50 cycles (1.07x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1b80\n\nInstruction                       | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------------------\nVMOVSS (%R14,%RBX,4),%XMM3        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS (%R14,%R12,4),%XMM3,%XMM13 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS (%R15,%RBX,4),%XMM4        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS (%R15,%R12,4),%XMM4,%XMM12 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS (%R13,%RBX,4),%XMM2        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS (%R13,%R12,4),%XMM2,%XMM14 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMULSS %XMM13,%XMM13,%XMM0        | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVFMADD231SS %XMM12,%XMM12,%XMM0   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVFMADD231SS %XMM14,%XMM14,%XMM0   | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVADDSS %XMM11,%XMM0,%XMM0         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVUCOMISS %XMM0,%XMM9              | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1       | 1\nJA 1fbd <move_particles+0x4ad>    | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOV %RDI,-0x70(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nADD $0x1,%RBX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV %RAX,-0x58(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV %RDX,-0x50(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV %RCX,-0x48(%RBP)              | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM8,-0x64(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM7,-0x3c(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM6,-0x38(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM5,-0x34(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM14,-0x60(%RBP)         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM13,-0x5c(%RBP)         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS %XMM12,-0x40(%RBP)         | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nCALL 1140 <.plt.sec@start+0x50>   | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nVMOVSS -0x5c(%RBP),%XMM7          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOV -0x70(%RBP),%RDI              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nVMULSS %XMM0,%XMM0,%XMM15         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x38(%RBP),%XMM6          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMOVSS 0x1115(%RIP),%XMM10        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMOVSS -0x40(%RBP),%XMM9          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMOVSS -0x34(%RBP),%XMM5          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nCMP %RDI,%RBX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS -0x60(%RBP),%XMM4          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOV -0x48(%RBP),%RCX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x50(%RBP),%RDX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x58(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nVMULSS %XMM0,%XMM15,%XMM8         | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVDIVSS %XMM8,%XMM10,%XMM11        | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 11      | 3\nVMOVSS -0x64(%RBP),%XMM8          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVFMADD231SS %XMM7,%XMM11,%XMM6    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x3c(%RBP),%XMM7          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVFMADD231SS %XMM9,%XMM11,%XMM5    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVXORPS %XMM9,%XMM9,%XMM9          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nVFMADD231SS %XMM4,%XMM11,%XMM7    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS 0x10d0(%RIP),%XMM11        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nJNE 1b80 <move_particles+0x70>    | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "2% of peak computational performance is used (1.76 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 10.20 to 8.40 cycles (1.21x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 7% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 10.20 to 0.73 cycles (13.93x speedup).",
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
          txt = "Detected 5 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "14 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 18.5 FP arithmetical operations:\n - 9: addition or subtraction (5 inside FMA instructions)\n - 8: multiply (5 inside FMA instructions)\n - 1: divide\n - 0.50: square root\nThe binary loop is loading 58 bytes (14 single precision FP elements).\nThe binary loop is storing 30 bytes (7 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.21 FP operations per loaded or stored byte.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is potentially data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 34.50\nnb uops            : 34.50\nloop length        : 172.50\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 5.50\nADD-SUB / MUL ratio: 1.33\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nmicro-operation queue: 7.50 cycles\nfront end            : 7.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n----------------------------------------------------------------------------\nuops   | 7.25 | 7.25 | 6.25 | 6.25 | 3.00 | 1.50 | 2.50 | 3.00 | 3.00 | 3.00\ncycles | 7.25 | 7.25 | 6.25 | 6.25 | 3.00 | 1.50 | 2.50 | 3.00 | 3.00 | 3.00\n\nCycles executing div or sqrt instructions: 4.50\nLongest recurrence chain latency (RecMII): 4.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 7.50\nDispatch  : 8.50\nDIV/SQRT  : 4.50\nData deps.: 4.00\nOverall L1: 8.85\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 1%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 25%\nINT+FP\nall     : 1%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 25%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 6%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 10%\nINT+FP\nall     : 7%\nload    : 6%\nstore   : 8%\nmul     : 6%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 6%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 8.85 cycles. At this rate:\n - 4% of peak load performance is reached (6.11 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (2.94 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "3% of peak computational performance is used (2.15 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 7% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 8.85 to 0.74 cycles (11.94x speedup).",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 5 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/anism/Bureau/Comparaison/nbody2.c:89-103,133.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
      "The structure of this loop is probably <if then [else] end>.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 2,
  },
}
