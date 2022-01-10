_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Recompile with march=broadwell.\nCQA target is Core_M5x (Intel Core M-5xxx Processor, 5th generation Intel Core processors based on Broadwell microarchitecture) but specialization flags are -march=x86-64\n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: if array 'foo' is 32 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 32) and use it instead of 'foo' in the loop.\n",
          details = " - MOVUPD: 4 occurrences\n - MOVUPS: 2 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 6 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n12 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 25 FP arithmetical operations:\n - 12: addition or subtraction\n - 9: multiply\n - 2: divide\n - 2: square root\nThe binary loop is loading 72 bytes (9 double precision FP elements).\nThe binary loop is storing 32 bytes (4 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.24 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 41\nnb uops            : 40\nloop length        : 173\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 11\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.20\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 10.00 cycles\nfront end            : 10.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 7.25 | 7.25 | 2.50 | 2.50 | 2.00 | 7.25 | 7.25 | 2.00\ncycles | 7.25 | 7.25 | 2.50 | 2.50 | 2.00 | 7.25 | 7.25 | 2.00\n\nCycles executing div or sqrt instructions: 16.00-22.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 10.00\nDispatch  : 7.25\nDIV/SQRT  : 16.00-22.00\nOverall L1: 16.00-22.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 74%\nload    : 80%\nstore   : 100%\nmul     : 80%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 28%\nINT+FP\nall     : 64%\nload    : 80%\nstore   : 100%\nmul     : 80%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 18%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 15%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 15%\nFP\nall     : 43%\nload    : 45%\nstore   : 50%\nmul     : 45%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 50%\nother   : 32%\nINT+FP\nall     : 39%\nload    : 45%\nstore   : 50%\nmul     : 45%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 50%\nother   : 26%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 22.00 cycles. At this rate:\n - 5% of peak load performance is reached (3.27 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (1.45 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 29c8\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------\nMOVUPS %XMM3,(%RCX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV %R11,%RAX                          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nXOR %EDX,%EDX                          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nTEST $0x1,%R10B                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 2afa <compute_accelerations+0x17a>  | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nTEST %EDI,%EDI                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 2a54 <compute_accelerations+0xd4>   | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nMOVUPD (%R8),%XMM5                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD (%R11),%XMM0                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD (%R11),%XMM9                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVSD (%R9),%XMM4                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVAPD %XMM5,%XMM6                     | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOVAPD %XMM5,%XMM8                     | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nUNPCKLPD %XMM0,%XMM0                   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVUPD (%R11),%XMM7                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nUNPCKLPD %XMM5,%XMM6                   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nUNPCKHPD %XMM5,%XMM8                   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nUNPCKHPD %XMM9,%XMM9                   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nSUBPD %XMM0,%XMM6                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nSUBPD %XMM9,%XMM8                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMULSD %XMM2,%XMM4                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBPD %XMM5,%XMM7                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMULPD %XMM8,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nMULPD %XMM6,%XMM6                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nUNPCKLPD %XMM4,%XMM4                   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nADDPD %XMM6,%XMM8                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nSQRTPD %XMM8,%XMM10                    | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 8-14\nMULPD %XMM10,%XMM8                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM1,%XMM8                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nDIVPD %XMM8,%XMM4                      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 8\nMULPD %XMM7,%XMM4                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM3,%XMM4                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM4,(%RCX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nLEA 0x10(%R11),%RAX                    | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nMOV $0x1,%EDX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJMP 2afa <compute_accelerations+0x17a> | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0    | 0       | 1-2\nADD $0x1,%EDI                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nADD $0x10,%RCX                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nADD $0x10,%R8                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %EBX,%EDI                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 29c8 <compute_accelerations+0x48>  | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "7% of peak computational performance is used (1.14 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "64% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 80% of SSE/AVX loads are used in vector version.\n - 80% of SSE/AVX multiply instructions are used in vector version.\n - 18% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 39% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 22.00 to 10.00 cycles (2.20x speedup).\n",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=broadwell.\nCQA target is Core_M5x (Intel Core M-5xxx Processor, 5th generation Intel Core processors based on Broadwell microarchitecture) but specialization flags are -march=x86-64\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Recompile with march=broadwell.\nCQA target is Core_M5x (Intel Core M-5xxx Processor, 5th generation Intel Core processors based on Broadwell microarchitecture) but specialization flags are -march=x86-64\n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: if array 'foo' is 32 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 32) and use it instead of 'foo' in the loop.\n",
          details = " - MOVUPD: 4 occurrences\n - MOVUPS: 2 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 6 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n12 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 25 FP arithmetical operations:\n - 12: addition or subtraction\n - 9: multiply\n - 2: divide\n - 2: square root\nThe binary loop is loading 72 bytes (9 double precision FP elements).\nThe binary loop is storing 32 bytes (4 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.24 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 41\nnb uops            : 40\nloop length        : 173\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 11\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.20\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 10.00 cycles\nfront end            : 10.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 7.25 | 7.25 | 2.50 | 2.50 | 2.00 | 7.25 | 7.25 | 2.00\ncycles | 7.25 | 7.25 | 2.50 | 2.50 | 2.00 | 7.25 | 7.25 | 2.00\n\nCycles executing div or sqrt instructions: 16.00-22.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 10.00\nDispatch  : 7.25\nDIV/SQRT  : 16.00-22.00\nOverall L1: 16.00-22.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 74%\nload    : 80%\nstore   : 100%\nmul     : 80%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 28%\nINT+FP\nall     : 64%\nload    : 80%\nstore   : 100%\nmul     : 80%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 100%\nother   : 18%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 15%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 15%\nFP\nall     : 43%\nload    : 45%\nstore   : 50%\nmul     : 45%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 50%\nother   : 32%\nINT+FP\nall     : 39%\nload    : 45%\nstore   : 50%\nmul     : 45%\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 50%\nother   : 26%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 22.00 cycles. At this rate:\n - 5% of peak load performance is reached (3.27 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 4% of peak store performance is reached (1.45 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 29c8\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------\nMOVUPS %XMM3,(%RCX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOV %R11,%RAX                          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nXOR %EDX,%EDX                          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nTEST $0x1,%R10B                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 2afa <compute_accelerations+0x17a>  | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nTEST %EDI,%EDI                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 2a54 <compute_accelerations+0xd4>   | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nMOVUPD (%R8),%XMM5                     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD (%R11),%XMM0                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD (%R11),%XMM9                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVSD (%R9),%XMM4                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVAPD %XMM5,%XMM6                     | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOVAPD %XMM5,%XMM8                     | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nUNPCKLPD %XMM0,%XMM0                   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nMOVUPD (%R11),%XMM7                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nUNPCKLPD %XMM5,%XMM6                   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nUNPCKHPD %XMM5,%XMM8                   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nUNPCKHPD %XMM9,%XMM9                   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nSUBPD %XMM0,%XMM6                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nSUBPD %XMM9,%XMM8                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMULSD %XMM2,%XMM4                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBPD %XMM5,%XMM7                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMULPD %XMM8,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nMULPD %XMM6,%XMM6                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nUNPCKLPD %XMM4,%XMM4                   | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nADDPD %XMM6,%XMM8                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nSQRTPD %XMM8,%XMM10                    | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 8-14\nMULPD %XMM10,%XMM8                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM1,%XMM8                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nDIVPD %XMM8,%XMM4                      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 8\nMULPD %XMM7,%XMM4                      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM3,%XMM4                      | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM4,(%RCX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nLEA 0x10(%R11),%RAX                    | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nMOV $0x1,%EDX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJMP 2afa <compute_accelerations+0x17a> | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0    | 0       | 1-2\nADD $0x1,%EDI                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nADD $0x10,%RCX                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nADD $0x10,%R8                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %EBX,%EDI                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 29c8 <compute_accelerations+0x48>  | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "7% of peak computational performance is used (1.14 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "64% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 80% of SSE/AVX loads are used in vector version.\n - 80% of SSE/AVX multiply instructions are used in vector version.\n - 18% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 39% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 22.00 to 10.00 cycles (2.20x speedup).\n",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=broadwell.\nCQA target is Core_M5x (Intel Core M-5xxx Processor, 5th generation Intel Core processors based on Broadwell microarchitecture) but specialization flags are -march=x86-64\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:54,62,71,80,128-136.\n",
      "Warnings:\n - Non-innermost loop: analyzing only self part (ignoring child loops).\n - Ignoring paths for analysis\n - Too many paths. Rerun with max-paths=18\n - RecMII not computed since number of paths is unknown or > max_paths\n - Streams not analyzed since number of paths is unknown or > max_paths\n",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 18 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 18,
  },
}
