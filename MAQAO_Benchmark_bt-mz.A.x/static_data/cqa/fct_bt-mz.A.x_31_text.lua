_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "50 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 50 FP arithmetical operations:\n - 25: addition or subtraction\n - 25: multiply\nThe binary function is loading 280 bytes (35 double precision FP elements).\nThe binary function is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.16 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 86\nnb uops            : 86\nloop length        : 404\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 7\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 21.50 cycles\nfront end            : 21.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6   | P7\n------------------------------------------------------------------\nuops   | 25.00 | 25.00 | 17.50 | 17.50 | 5.00 | 0.00 | 1.00 | 6.00\ncycles | 25.00 | 25.00 | 17.50 | 17.50 | 5.00 | 0.00 | 1.00 | 6.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 21.50\nDispatch  : 25.00\nOverall L1: 25.00\n",
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
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 25.00 cycles. At this rate:\n - 17% of peak load performance is reached (11.20 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 5% of peak store performance is reached (1.60 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 14690\n\nInstruction            | Nb FU | P0   | P1   | P2   | P3   | P4 | P5 | P6 | P7   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------\nMOVSD (%RSI),%XMM5     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMOVSD (%RDI),%XMM6     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMOVSD (%RDX),%XMM0     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMOVSD 0x8(%RSI),%XMM4  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM5,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nMOVSD 0x10(%RSI),%XMM3 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMOVSD 0x18(%RSI),%XMM2 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMOVSD 0x20(%RSI),%XMM1 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x28(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM4,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x50(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM3,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x78(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM2,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0xa0(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM1,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x8(%RDI),%XMM6  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM5,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nMOVSD %XMM0,(%RDX)     | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOVSD 0x8(%RDX),%XMM0  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x30(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM4,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x58(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM3,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x80(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM2,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0xa8(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM1,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x10(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM5,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nMOVSD %XMM0,0x8(%RDX)  | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOVSD 0x10(%RDX),%XMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x38(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM4,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x60(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM3,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x88(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM2,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0xb0(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM1,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x18(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM5,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nMOVSD %XMM0,0x10(%RDX) | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOVSD 0x18(%RDX),%XMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x40(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM4,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x68(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM3,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x90(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM2,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0xb8(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM1,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD %XMM0,0x18(%RDX) | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMULSD 0x20(%RDI),%XMM5 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 3       | 0.50\nMOVSD 0x20(%RDX),%XMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD 0x48(%RDI),%XMM4 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 3       | 0.50\nMULSD 0x70(%RDI),%XMM3 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 3       | 0.50\nMULSD 0x98(%RDI),%XMM2 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 3       | 0.50\nMULSD 0xc0(%RDI),%XMM1 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM5,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nSUBSD %XMM4,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nSUBSD %XMM3,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nSUBSD %XMM2,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nSUBSD %XMM1,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD %XMM0,0x20(%RDX) | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nRET                    | 1     | 0    | 0    | 0.33 | 0.33 | 0  | 0  | 1  | 0.33 | 0       | 1\n",
        },
      },
      header = {
        "12% of peak computational performance is used (2.00 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your function, you can lower the cost of an iteration from 25.00 to 6.25 cycles (4.00x speedup).",
        },
        {
          workaround = " - Reduce the number of FP add instructions\n - Reduce the number of FP multiply/FMA instructions\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of FP add operations (the FP add unit is a bottleneck)\n - execution of FP multiply or FMA (fused multiply-add) operations (the FP multiply/FMA unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 25.00 to 21.50 cycles (1.16x speedup).\n",
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
          title = "Type of elements and instruction set",
          txt = "50 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function is composed of 50 FP arithmetical operations:\n - 25: addition or subtraction\n - 25: multiply\nThe binary function is loading 280 bytes (35 double precision FP elements).\nThe binary function is storing 40 bytes (5 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.16 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 86\nnb uops            : 86\nloop length        : 404\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 7\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 21.50 cycles\nfront end            : 21.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6   | P7\n------------------------------------------------------------------\nuops   | 25.00 | 25.00 | 17.50 | 17.50 | 5.00 | 0.00 | 1.00 | 6.00\ncycles | 25.00 | 25.00 | 17.50 | 17.50 | 5.00 | 0.00 | 1.00 | 6.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 21.50\nDispatch  : 25.00\nOverall L1: 25.00\n",
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
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 25.00 cycles. At this rate:\n - 17% of peak load performance is reached (11.20 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 5% of peak store performance is reached (1.60 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 14690\n\nInstruction            | Nb FU | P0   | P1   | P2   | P3   | P4 | P5 | P6 | P7   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------\nMOVSD (%RSI),%XMM5     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMOVSD (%RDI),%XMM6     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMOVSD (%RDX),%XMM0     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMOVSD 0x8(%RSI),%XMM4  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM5,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nMOVSD 0x10(%RSI),%XMM3 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMOVSD 0x18(%RSI),%XMM2 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMOVSD 0x20(%RSI),%XMM1 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x28(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM4,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x50(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM3,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x78(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM2,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0xa0(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM1,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x8(%RDI),%XMM6  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM5,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nMOVSD %XMM0,(%RDX)     | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOVSD 0x8(%RDX),%XMM0  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x30(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM4,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x58(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM3,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x80(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM2,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0xa8(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM1,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x10(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM5,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nMOVSD %XMM0,0x8(%RDX)  | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOVSD 0x10(%RDX),%XMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x38(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM4,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x60(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM3,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x88(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM2,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0xb0(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM1,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x18(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM5,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nMOVSD %XMM0,0x10(%RDX) | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOVSD 0x18(%RDX),%XMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x40(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM4,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x68(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM3,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0x90(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM2,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD 0xb8(%RDI),%XMM6 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD %XMM1,%XMM6      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM6,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD %XMM0,0x18(%RDX) | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMULSD 0x20(%RDI),%XMM5 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 3       | 0.50\nMOVSD 0x20(%RDX),%XMM0 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 0       | 0.50\nMULSD 0x48(%RDI),%XMM4 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 3       | 0.50\nMULSD 0x70(%RDI),%XMM3 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 3       | 0.50\nMULSD 0x98(%RDI),%XMM2 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 3       | 0.50\nMULSD 0xc0(%RDI),%XMM1 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 3       | 0.50\nSUBSD %XMM5,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nSUBSD %XMM4,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nSUBSD %XMM3,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nSUBSD %XMM2,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nSUBSD %XMM1,%XMM0      | 1     | 0    | 1    | 0    | 0    | 0  | 0  | 0  | 0    | 3       | 1\nMOVSD %XMM0,0x20(%RDX) | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nRET                    | 1     | 0    | 0    | 0.33 | 0.33 | 0  | 0  | 1  | 0.33 | 0       | 1\n",
        },
      },
      header = {
        "12% of peak computational performance is used (2.00 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\n4 data elements could be processed at once in vector registers.\nBy vectorizing your function, you can lower the cost of an iteration from 25.00 to 6.25 cycles (4.00x speedup).",
        },
        {
          workaround = " - Reduce the number of FP add instructions\n - Reduce the number of FP multiply/FMA instructions\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by:\n - execution of FP add operations (the FP add unit is a bottleneck)\n - execution of FP multiply or FMA (fused multiply-add) operations (the FP multiply/FMA unit is a bottleneck)\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 25.00 to 21.50 cycles (1.16x speedup).\n",
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
      "The function is defined in /home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/solve_subs.f90:27-51.\n",
    },
    nb_paths = 1,
  },
}
