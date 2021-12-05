_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "26 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 26 FP arithmetical operations:\n - 12: addition or subtraction\n - 10: multiply\n - 2: divide\n - 2: square root\nThe binary loop is loading 112 bytes (14 double precision FP elements).\nThe binary loop is storing 32 bytes (4 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.18 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 58\nnb uops            : 58\nloop length        : 272\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.20\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 11.60 cycles\nfront end            : 11.60 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n------------------------------------------------------------------------------\nuops   | 13.00 | 13.00 | 7.00 | 7.00 | 2.00 | 6.00 | 6.00 | 2.00 | 2.00 | 2.00\ncycles | 13.00 | 13.00 | 7.00 | 7.00 | 2.00 | 6.00 | 6.00 | 2.00 | 2.00 | 2.00\n\nCycles executing div or sqrt instructions: 17.00-20.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 11.60\nDispatch  : 13.00\nDIV/SQRT  : 17.00-20.00\nOverall L1: 17.00-20.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 14%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 12%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 66%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 6%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 14%\nload    : 12%\nstore   : 12%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 25%\nINT+FP\nall     : 13%\nload    : 12%\nstore   : 9%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 18%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.60 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (1.60 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2298\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------------------------\nMOVQ $0,(%R9)                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 2       | 0.50\nXOR %EDX,%EDX                          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVQ $0,(%R8)                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 2       | 0.50\nTEST $0x1,%R11B                        | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJE 2474 <compute_accelerations+0x224>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nTEST %EAX,%EAX                         | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJE 2385 <compute_accelerations+0x135>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOVSD (%RDI,%RAX,8),%XMM4              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RDI),%XMM3                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RSI,%RAX,8),%XMM2              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%RSI),%XMM2                     | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM4,%XMM0                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVSD (%R10),%XMM6                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD %XMM3,%XMM0                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD 0x3d4f(%RIP),%XMM6               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nSUBSD %XMM4,%XMM3                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD %XMM2,%XMM2                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMULSD %XMM0,%XMM0                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM2,%XMM0                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM0,%XMM5                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM5,%XMM5                     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-19   | 4.50-6\nMULSD %XMM5,%XMM0                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM1,%XMM0                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nDIVSD %XMM0,%XMM6                      | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-15   | 4\nMOVAPD %XMM6,%XMM7                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM3,%XMM7                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD (%R9),%XMM7                      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVSD %XMM7,(%R9)                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOVSD (%RSI,%RAX,8),%XMM9              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RSI),%XMM10                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RDI,%RAX,8),%XMM8              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%RDI),%XMM8                     | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM9,%XMM11                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVSD (%R10),%XMM0                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD %XMM10,%XMM11                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD 0x3cec(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nSUBSD %XMM9,%XMM10                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD %XMM8,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMULSD %XMM11,%XMM11                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM8,%XMM11                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM11,%XMM12                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM12,%XMM12                   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-19   | 4.50-6\nMULSD %XMM12,%XMM11                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM1,%XMM11                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nDIVSD %XMM11,%XMM0                     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-15   | 4\nMOVAPD %XMM0,%XMM13                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM10,%XMM13                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD (%R8),%XMM13                     | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVSD %XMM13,(%R8)                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV $0x1,%EDX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJMP 2474 <compute_accelerations+0x224> | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\nLEA 0x1(%RAX),%RDX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nADD $0x8,%R9                           | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nADD $0x8,%R8                           | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCMP %RAX,%R11                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJE 2578 <compute_accelerations+0x328>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOV %RDX,%RAX                          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nJMP 2298 <compute_accelerations+0x48>  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\n",
        },
      },
      header = {
        "4% of peak computational performance is used (1.30 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 20.00 to 5.00 cycles (4.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 20.00 to 13.00 cycles (1.54x speedup).\n",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=tigerlake.\nCQA target is Tiger_lake_8c (11th generation Intel Core processors based on Tiger Lake microarchitecture) but specialization flags are -march=x86-64\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "26 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 26 FP arithmetical operations:\n - 12: addition or subtraction\n - 10: multiply\n - 2: divide\n - 2: square root\nThe binary loop is loading 112 bytes (14 double precision FP elements).\nThe binary loop is storing 32 bytes (4 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.18 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 58\nnb uops            : 58\nloop length        : 272\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.20\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 11.60 cycles\nfront end            : 11.60 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n------------------------------------------------------------------------------\nuops   | 13.00 | 13.00 | 7.00 | 7.00 | 2.00 | 6.00 | 6.00 | 2.00 | 2.00 | 2.00\ncycles | 13.00 | 13.00 | 7.00 | 7.00 | 2.00 | 6.00 | 6.00 | 2.00 | 2.00 | 2.00\n\nCycles executing div or sqrt instructions: 17.00-20.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 11.60\nDispatch  : 13.00\nDIV/SQRT  : 17.00-20.00\nOverall L1: 17.00-20.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 14%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 12%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 66%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : 6%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 14%\nload    : 12%\nstore   : 12%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 25%\nINT+FP\nall     : 13%\nload    : 12%\nstore   : 9%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 18%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.60 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (1.60 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2298\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------------------------\nMOVQ $0,(%R9)                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 2       | 0.50\nXOR %EDX,%EDX                          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVQ $0,(%R8)                          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 2       | 0.50\nTEST $0x1,%R11B                        | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJE 2474 <compute_accelerations+0x224>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nTEST %EAX,%EAX                         | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJE 2385 <compute_accelerations+0x135>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOVSD (%RDI,%RAX,8),%XMM4              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RDI),%XMM3                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RSI,%RAX,8),%XMM2              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%RSI),%XMM2                     | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM4,%XMM0                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVSD (%R10),%XMM6                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD %XMM3,%XMM0                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD 0x3d4f(%RIP),%XMM6               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nSUBSD %XMM4,%XMM3                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD %XMM2,%XMM2                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMULSD %XMM0,%XMM0                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM2,%XMM0                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM0,%XMM5                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM5,%XMM5                     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-19   | 4.50-6\nMULSD %XMM5,%XMM0                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM1,%XMM0                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nDIVSD %XMM0,%XMM6                      | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-15   | 4\nMOVAPD %XMM6,%XMM7                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM3,%XMM7                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD (%R9),%XMM7                      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVSD %XMM7,(%R9)                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOVSD (%RSI,%RAX,8),%XMM9              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RSI),%XMM10                    | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RDI,%RAX,8),%XMM8              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%RDI),%XMM8                     | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM9,%XMM11                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVSD (%R10),%XMM0                     | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD %XMM10,%XMM11                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD 0x3cec(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nSUBSD %XMM9,%XMM10                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD %XMM8,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMULSD %XMM11,%XMM11                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM8,%XMM11                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM11,%XMM12                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM12,%XMM12                   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-19   | 4.50-6\nMULSD %XMM12,%XMM11                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM1,%XMM11                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nDIVSD %XMM11,%XMM0                     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-15   | 4\nMOVAPD %XMM0,%XMM13                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM10,%XMM13                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD (%R8),%XMM13                     | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVSD %XMM13,(%R8)                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV $0x1,%EDX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJMP 2474 <compute_accelerations+0x224> | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\nLEA 0x1(%RAX),%RDX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nADD $0x8,%R9                           | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nADD $0x8,%R8                           | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCMP %RAX,%R11                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJE 2578 <compute_accelerations+0x328>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOV %RDX,%RAX                          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nJMP 2298 <compute_accelerations+0x48>  | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0       | 1-2\n",
        },
      },
      header = {
        "4% of peak computational performance is used (1.30 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 20.00 to 5.00 cycles (4.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 20.00 to 13.00 cycles (1.54x speedup).\n",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=tigerlake.\nCQA target is Tiger_lake_8c (11th generation Intel Core processors based on Tiger Lake microarchitecture) but specialization flags are -march=x86-64\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/anism/Bureau/Test Nbody/SOA.c:146-165.\n",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Too many paths. Rerun with max-paths=18\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 18 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 18,
  },
}
