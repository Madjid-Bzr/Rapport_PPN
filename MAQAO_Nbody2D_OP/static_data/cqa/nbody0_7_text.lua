_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Recompile with march=broadwell.\nCQA target is Core_M5x (Intel Core M-5xxx Processor, 5th generation Intel Core processors based on Broadwell microarchitecture) but specialization flags are -march=x86-64\n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: if array 'foo' is 32 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 32) and use it instead of 'foo' in the loop.\n",
          details = " - MOVUPD: 16 occurrences\n - MOVUPS: 8 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 24 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "8 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 16 FP arithmetical operations:\n - 16: addition or subtraction\nThe binary loop is loading 256 bytes (32 double precision FP elements).\nThe binary loop is storing 128 bytes (16 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.04 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 35\nnb uops            : 34\nloop length        : 207\nused x86 registers : 4\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 8.50 cycles\nfront end            : 8.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 0.75 | 8.00 | 8.00 | 8.00 | 8.00 | 0.75 | 0.50 | 8.00\ncycles | 0.75 | 8.00 | 8.00 | 8.00 | 8.00 | 0.75 | 0.50 | 8.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 8.50\nDispatch  : 8.00\nData deps.: 1.00\nOverall L1: 8.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 50%\nload    : 50%\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 8.50 cycles. At this rate:\n - 47% of peak load performance is reached (30.12 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 47% of peak store performance is reached (15.06 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 8.50 to 8.00 cycles (1.06x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1717\n\nInstruction                     | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------\nMOVUPD (%RSI,%R13,1),%XMM14     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD (%R9,%R13,1),%XMM13      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD 0x10(%R9,%R13,1),%XMM15  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD 0x20(%R9,%R13,1),%XMM0   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM14,%XMM13             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPD 0x30(%R9,%R13,1),%XMM4   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD 0x40(%R9,%R13,1),%XMM5   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD 0x50(%R9,%R13,1),%XMM8   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD 0x60(%R9,%R13,1),%XMM9   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD 0x70(%R9,%R13,1),%XMM11  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPS %XMM13,(%R9,%R13,1)      | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPD 0x10(%RSI,%R13,1),%XMM3  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM3,%XMM15              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM15,0x10(%R9,%R13,1)  | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPD 0x20(%RSI,%R13,1),%XMM2  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM2,%XMM0               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM0,0x20(%R9,%R13,1)   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPD 0x30(%RSI,%R13,1),%XMM1  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM1,%XMM4               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM4,0x30(%R9,%R13,1)   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPD 0x40(%RSI,%R13,1),%XMM6  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM6,%XMM5               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM5,0x40(%R9,%R13,1)   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPD 0x50(%RSI,%R13,1),%XMM7  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM7,%XMM8               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM8,0x50(%R9,%R13,1)   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPD 0x60(%RSI,%R13,1),%XMM10 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM10,%XMM9              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM9,0x60(%R9,%R13,1)   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPD 0x70(%RSI,%R13,1),%XMM12 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM12,%XMM11             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM11,0x70(%R9,%R13,1)  | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nSUB $-0x80,%R13                 | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R13,%R8                    | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 1717 <main+0x4b7>           | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "11% of peak computational performance is used (1.88 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Recompile with march=broadwell.\nCQA target is Core_M5x (Intel Core M-5xxx Processor, 5th generation Intel Core processors based on Broadwell microarchitecture) but specialization flags are -march=x86-64\n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: if array 'foo' is 32 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 32) and use it instead of 'foo' in the loop.\n",
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using only 128 out of 256 bits (SSE/AVX-128 instructions on AVX/AVX2 processors).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 8.50 to 4.25 cycles (2.00x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Recompile with march=broadwell.\nCQA target is Core_M5x (Intel Core M-5xxx Processor, 5th generation Intel Core processors based on Broadwell microarchitecture) but specialization flags are -march=x86-64\n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: if array 'foo' is 32 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 32) and use it instead of 'foo' in the loop.\n",
          details = " - MOVUPD: 16 occurrences\n - MOVUPS: 8 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 24 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "8 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 16 FP arithmetical operations:\n - 16: addition or subtraction\nThe binary loop is loading 256 bytes (32 double precision FP elements).\nThe binary loop is storing 128 bytes (16 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.04 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 35\nnb uops            : 34\nloop length        : 207\nused x86 registers : 4\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 8.50 cycles\nfront end            : 8.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 0.75 | 8.00 | 8.00 | 8.00 | 8.00 | 0.75 | 0.50 | 8.00\ncycles | 0.75 | 8.00 | 8.00 | 8.00 | 8.00 | 0.75 | 0.50 | 8.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 8.50\nDispatch  : 8.00\nData deps.: 1.00\nOverall L1: 8.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 50%\nload    : 50%\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 50%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 8.50 cycles. At this rate:\n - 47% of peak load performance is reached (30.12 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 47% of peak store performance is reached (15.06 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 8.50 to 8.00 cycles (1.06x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1717\n\nInstruction                     | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------\nMOVUPD (%RSI,%R13,1),%XMM14     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD (%R9,%R13,1),%XMM13      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD 0x10(%R9,%R13,1),%XMM15  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD 0x20(%R9,%R13,1),%XMM0   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM14,%XMM13             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPD 0x30(%R9,%R13,1),%XMM4   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD 0x40(%R9,%R13,1),%XMM5   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD 0x50(%R9,%R13,1),%XMM8   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD 0x60(%R9,%R13,1),%XMM9   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD 0x70(%R9,%R13,1),%XMM11  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPS %XMM13,(%R9,%R13,1)      | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPD 0x10(%RSI,%R13,1),%XMM3  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM3,%XMM15              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM15,0x10(%R9,%R13,1)  | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPD 0x20(%RSI,%R13,1),%XMM2  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM2,%XMM0               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM0,0x20(%R9,%R13,1)   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPD 0x30(%RSI,%R13,1),%XMM1  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM1,%XMM4               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM4,0x30(%R9,%R13,1)   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPD 0x40(%RSI,%R13,1),%XMM6  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM6,%XMM5               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM5,0x40(%R9,%R13,1)   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPD 0x50(%RSI,%R13,1),%XMM7  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM7,%XMM8               | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM8,0x50(%R9,%R13,1)   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPD 0x60(%RSI,%R13,1),%XMM10 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM10,%XMM9              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM9,0x60(%R9,%R13,1)   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPD 0x70(%RSI,%R13,1),%XMM12 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADDPD %XMM12,%XMM11             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVUPS %XMM11,0x70(%R9,%R13,1)  | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nSUB $-0x80,%R13                 | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R13,%R8                    | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 1717 <main+0x4b7>           | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "11% of peak computational performance is used (1.88 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Recompile with march=broadwell.\nCQA target is Core_M5x (Intel Core M-5xxx Processor, 5th generation Intel Core processors based on Broadwell microarchitecture) but specialization flags are -march=x86-64\n - Use vector aligned instructions:\n  1) align your arrays on 32 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 32, size); }.\n  2) inform your compiler that your arrays are vector aligned: if array 'foo' is 32 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 32) and use it instead of 'foo' in the loop.\n",
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using only 128 out of 256 bits (SSE/AVX-128 instructions on AVX/AVX2 processors).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 8.50 to 4.25 cycles (2.00x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody0.c:54,144-145.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
