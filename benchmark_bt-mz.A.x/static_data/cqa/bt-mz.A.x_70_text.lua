_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "45 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 45 FP arithmetical operations:\n - 25: addition or subtraction\n - 20: multiply\nThe binary loop is loading 280 bytes (35 double precision FP elements).\nThe binary loop is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.14 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 79\nnb uops            : 78\nloop length        : 383\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 4\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.25\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 19.50 cycles\nfront end            : 19.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6   | P7\n------------------------------------------------------------------\nuops   | 20.00 | 25.00 | 17.50 | 17.50 | 5.00 | 1.50 | 1.50 | 5.00\ncycles | 20.00 | 25.00 | 17.50 | 17.50 | 5.00 | 1.50 | 1.50 | 5.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 19.50\nDispatch  : 25.00\nData deps.: 1.00\nOverall L1: 25.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 25.00 cycles. At this rate:\n - 17% of peak load performance is reached (11.20 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 5% of peak store performance is reached (1.60 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: ac78\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------\nMOVSD 0x28(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RAX),%XMM0                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nADD $0x28,%RAX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nADD $0x28,%RDX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x28(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM3,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x50(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADDSD 0x78(%RAX),%XMM0                  | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD -0x28(%RDX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x1ac93(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM0,%XMM1                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM1,-0x28(%RDX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSD 0x8(%RAX),%XMM1                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD -0x20(%RAX),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x30(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM3,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x58(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADDSD 0x80(%RAX),%XMM0                  | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD -0x20(%RDX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x1ac49(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM0,%XMM1                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM1,-0x20(%RDX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSD 0x10(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD -0x18(%RAX),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x38(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM3,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x60(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADDSD 0x88(%RAX),%XMM0                  | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD -0x18(%RDX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x1abff(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM0,%XMM1                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM1,-0x18(%RDX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSD 0x18(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD -0x10(%RAX),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x40(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM3,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x68(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADDSD 0x90(%RAX),%XMM0                  | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD -0x10(%RDX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x1abb5(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM0,%XMM1                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM1,-0x10(%RDX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSD 0x20(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD -0x8(%RAX),%XMM0                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x48(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM3,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x70(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADDSD 0x98(%RAX),%XMM0                  | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD -0x8(%RDX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x1ab6b(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM0,%XMM1                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM1,-0x8(%RDX)                  | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nCMP %RAX,%RCX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE ac78 <compute_rhs_._omp_fn.0+0xe18> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "11% of peak computational performance is used (1.80 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 25.00 to 6.25 cycles (4.00x speedup).",
        },
        {
          workaround = " - Reduce the number of FP add instructions\n - Reduce the number of FP multiply/FMA instructions\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of FP add operations (the FP add unit is a bottleneck)\n - execution of FP multiply or FMA (fused multiply-add) operations (the FP multiply/FMA unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 25.00 to 20.00 cycles (1.25x speedup).\n",
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
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "45 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 45 FP arithmetical operations:\n - 25: addition or subtraction\n - 20: multiply\nThe binary loop is loading 280 bytes (35 double precision FP elements).\nThe binary loop is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.14 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 79\nnb uops            : 78\nloop length        : 383\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 4\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.25\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 19.50 cycles\nfront end            : 19.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6   | P7\n------------------------------------------------------------------\nuops   | 20.00 | 25.00 | 17.50 | 17.50 | 5.00 | 1.50 | 1.50 | 5.00\ncycles | 20.00 | 25.00 | 17.50 | 17.50 | 5.00 | 1.50 | 1.50 | 5.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 19.50\nDispatch  : 25.00\nData deps.: 1.00\nOverall L1: 25.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 25%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 25.00 cycles. At this rate:\n - 17% of peak load performance is reached (11.20 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 5% of peak store performance is reached (1.60 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: ac78\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------\nMOVSD 0x28(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RAX),%XMM0                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nADD $0x28,%RAX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nADD $0x28,%RDX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x28(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM3,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x50(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADDSD 0x78(%RAX),%XMM0                  | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD -0x28(%RDX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x1ac93(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM0,%XMM1                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM1,-0x28(%RDX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSD 0x8(%RAX),%XMM1                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD -0x20(%RAX),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x30(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM3,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x58(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADDSD 0x80(%RAX),%XMM0                  | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD -0x20(%RDX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x1ac49(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM0,%XMM1                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM1,-0x20(%RDX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSD 0x10(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD -0x18(%RAX),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x38(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM3,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x60(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADDSD 0x88(%RAX),%XMM0                  | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD -0x18(%RDX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x1abff(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM0,%XMM1                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM1,-0x18(%RDX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSD 0x18(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD -0x10(%RAX),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x40(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM3,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x68(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADDSD 0x90(%RAX),%XMM0                  | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD -0x10(%RDX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x1abb5(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM0,%XMM1                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM1,-0x10(%RDX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSD 0x20(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD -0x8(%RAX),%XMM0                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x48(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM3,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD 0x70(%RAX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD %XMM2,%XMM1                       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM1,%XMM0                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADDSD 0x98(%RAX),%XMM0                  | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD -0x8(%RDX),%XMM1                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x1ab6b(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nSUBSD %XMM0,%XMM1                       | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM1,-0x8(%RDX)                  | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nCMP %RAX,%RCX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE ac78 <compute_rhs_._omp_fn.0+0xe18> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "11% of peak computational performance is used (1.80 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 25.00 to 6.25 cycles (4.00x speedup).",
        },
        {
          workaround = " - Reduce the number of FP add instructions\n - Reduce the number of FP multiply/FMA instructions\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of FP add operations (the FP add unit is a bottleneck)\n - execution of FP multiply or FMA (fused multiply-add) operations (the FP multiply/FMA unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 25.00 to 20.00 cycles (1.25x speedup).\n",
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
      "The loop is defined in /home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/rhs.f90:149-154.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
