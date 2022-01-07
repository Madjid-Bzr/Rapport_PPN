_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "48 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 48 FP arithmetical operations:\n - 20: addition or subtraction\n - 20: multiply\n - 4: divide\n - 4: square root\nThe binary loop is loading 224 bytes (28 double precision FP elements).\nThe binary loop is storing 32 bytes (4 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.19 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 80\nnb uops            : 79\nloop length        : 402\nused x86 registers : 10\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 19.75 cycles\nfront end            : 19.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6   | P7\n------------------------------------------------------------------\nuops   | 24.00 | 24.00 | 14.00 | 14.00 | 4.00 | 1.50 | 1.50 | 4.00\ncycles | 24.00 | 24.00 | 14.00 | 14.00 | 4.00 | 1.50 | 1.50 | 4.00\n\nCycles executing div or sqrt instructions: 32.00-52.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 19.75\nDispatch  : 24.00\nDIV/SQRT  : 32.00-52.00\nData deps.: 1.00\nOverall L1: 32.00-52.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 15%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 28%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 50%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 52.00 cycles. At this rate:\n - 6% of peak load performance is reached (4.31 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.62 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2600\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------\nMOVSD (%R10,%RAX,8),%XMM4             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%R9,%RAX,8),%XMM13             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nLEA 0x1(%RAX),%RDX                    | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nSUBSD (%RDI),%XMM13                   | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD (%R11,%RAX,8),%XMM5             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x3a0d(%RIP),%XMM5              | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM4,%XMM12                   | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSUBSD (%R8),%XMM12                    | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMULSD %XMM13,%XMM13                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM12,%XMM14                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM12,%XMM14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM13,%XMM14                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVAPD %XMM14,%XMM15                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM15,%XMM15                  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-8\nMULSD %XMM15,%XMM14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM14                    | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nDIVSD %XMM14,%XMM5                    | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-5\nMULSD %XMM12,%XMM5                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD (%RSI),%XMM5                    | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM5,(%RSI)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSD (%R9,%RAX,8),%XMM4              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%R10,%RAX,8),%XMM3             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%R8),%XMM3                     | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD (%R11,%RAX,8),%XMM0             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nADD $0x2,%RAX                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMULSD 0x39a6(%RIP),%XMM0              | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM4,%XMM6                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSUBSD (%RDI),%XMM6                    | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMULSD %XMM3,%XMM3                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM6,%XMM2                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM6,%XMM2                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM3,%XMM2                     | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVAPD %XMM2,%XMM7                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM7,%XMM7                    | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-8\nMULSD %XMM7,%XMM2                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM2                     | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nDIVSD %XMM2,%XMM0                     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-5\nMULSD %XMM6,%XMM0                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD (%RCX),%XMM0                    | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM0,(%RCX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSD (%R10,%RDX,8),%XMM4             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%R9,%RDX,8),%XMM9              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%RDI),%XMM9                    | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD (%R11,%RDX,8),%XMM12            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x394e(%RIP),%XMM12             | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM4,%XMM8                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSUBSD (%R8),%XMM8                     | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMULSD %XMM9,%XMM9                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM8,%XMM10                   | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM8,%XMM10                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM9,%XMM10                    | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVAPD %XMM10,%XMM11                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM11,%XMM11                  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-8\nMULSD %XMM11,%XMM10                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM10                    | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nDIVSD %XMM10,%XMM12                   | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-5\nMULSD %XMM8,%XMM12                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD (%RSI),%XMM12                   | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM12,(%RSI)                   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSD (%R9,%RDX,8),%XMM4              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%R10,%RDX,8),%XMM13            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%R8),%XMM13                    | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD (%R11,%RDX,8),%XMM3             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x38e9(%RIP),%XMM3              | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM4,%XMM14                   | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSUBSD (%RDI),%XMM14                   | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMULSD %XMM13,%XMM13                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM14,%XMM15                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM14,%XMM15                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM13,%XMM15                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVAPD %XMM15,%XMM5                   | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM5,%XMM5                    | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-8\nMULSD %XMM5,%XMM15                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM15                    | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nDIVSD %XMM15,%XMM3                    | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-5\nMULSD %XMM14,%XMM3                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD (%RCX),%XMM3                    | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM3,(%RCX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nCMP %EAX,%EBP                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJG 2600 <compute_accelerations+0x150> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "5% of peak computational performance is used (0.92 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 28% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 52.00 to 26.00 cycles (2.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 52.00 to 24.00 cycles (2.17x speedup).\n",
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
          txt = "48 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 48 FP arithmetical operations:\n - 20: addition or subtraction\n - 20: multiply\n - 4: divide\n - 4: square root\nThe binary loop is loading 224 bytes (28 double precision FP elements).\nThe binary loop is storing 32 bytes (4 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.19 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 80\nnb uops            : 79\nloop length        : 402\nused x86 registers : 10\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.00\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 19.75 cycles\nfront end            : 19.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6   | P7\n------------------------------------------------------------------\nuops   | 24.00 | 24.00 | 14.00 | 14.00 | 4.00 | 1.50 | 1.50 | 4.00\ncycles | 24.00 | 24.00 | 14.00 | 14.00 | 4.00 | 1.50 | 1.50 | 4.00\n\nCycles executing div or sqrt instructions: 32.00-52.00\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 19.75\nDispatch  : 24.00\nDIV/SQRT  : 32.00-52.00\nData deps.: 1.00\nOverall L1: 32.00-52.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 15%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 28%\nload    : 25%\nstore   : 25%\nmul     : 25%\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 25%\nother   : 50%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 52.00 cycles. At this rate:\n - 6% of peak load performance is reached (4.31 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.62 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2600\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------\nMOVSD (%R10,%RAX,8),%XMM4             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%R9,%RAX,8),%XMM13             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nLEA 0x1(%RAX),%RDX                    | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nSUBSD (%RDI),%XMM13                   | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD (%R11,%RAX,8),%XMM5             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x3a0d(%RIP),%XMM5              | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM4,%XMM12                   | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSUBSD (%R8),%XMM12                    | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMULSD %XMM13,%XMM13                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM12,%XMM14                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM12,%XMM14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM13,%XMM14                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVAPD %XMM14,%XMM15                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM15,%XMM15                  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-8\nMULSD %XMM15,%XMM14                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM14                    | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nDIVSD %XMM14,%XMM5                    | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-5\nMULSD %XMM12,%XMM5                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD (%RSI),%XMM5                    | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM5,(%RSI)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSD (%R9,%RAX,8),%XMM4              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%R10,%RAX,8),%XMM3             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%R8),%XMM3                     | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD (%R11,%RAX,8),%XMM0             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nADD $0x2,%RAX                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMULSD 0x39a6(%RIP),%XMM0              | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM4,%XMM6                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSUBSD (%RDI),%XMM6                    | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMULSD %XMM3,%XMM3                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM6,%XMM2                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM6,%XMM2                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM3,%XMM2                     | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVAPD %XMM2,%XMM7                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM7,%XMM7                    | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-8\nMULSD %XMM7,%XMM2                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM2                     | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nDIVSD %XMM2,%XMM0                     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-5\nMULSD %XMM6,%XMM0                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD (%RCX),%XMM0                    | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM0,(%RCX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSD (%R10,%RDX,8),%XMM4             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%R9,%RDX,8),%XMM9              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%RDI),%XMM9                    | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD (%R11,%RDX,8),%XMM12            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x394e(%RIP),%XMM12             | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM4,%XMM8                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSUBSD (%R8),%XMM8                     | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMULSD %XMM9,%XMM9                     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM8,%XMM10                   | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM8,%XMM10                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM9,%XMM10                    | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVAPD %XMM10,%XMM11                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM11,%XMM11                  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-8\nMULSD %XMM11,%XMM10                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM10                    | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nDIVSD %XMM10,%XMM12                   | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-5\nMULSD %XMM8,%XMM12                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD (%RSI),%XMM12                   | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM12,(%RSI)                   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVSD (%R9,%RDX,8),%XMM4              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%R10,%RDX,8),%XMM13            | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%R8),%XMM13                    | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD (%R11,%RDX,8),%XMM3             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nMULSD 0x38e9(%RIP),%XMM3              | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM4,%XMM14                   | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSUBSD (%RDI),%XMM14                   | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMULSD %XMM13,%XMM13                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVAPD %XMM14,%XMM15                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM14,%XMM15                   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM13,%XMM15                   | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOVAPD %XMM15,%XMM5                   | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM5,%XMM5                    | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-8\nMULSD %XMM5,%XMM15                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD %XMM1,%XMM15                    | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nDIVSD %XMM15,%XMM3                    | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 4-5\nMULSD %XMM14,%XMM3                    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nADDSD (%RCX),%XMM3                    | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nMOVSD %XMM3,(%RCX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nCMP %EAX,%EBP                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJG 2600 <compute_accelerations+0x150> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "5% of peak computational performance is used (0.92 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 28% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 52.00 to 26.00 cycles (2.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 52.00 to 24.00 cycles (2.17x speedup).\n",
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
      "The loop is defined in /home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody_op.c:91-96.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
