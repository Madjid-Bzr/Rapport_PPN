_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 6 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "8 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 8 FP arithmetical operations:\n - 8: addition or subtraction\nThe binary loop is loading 128 bytes (16 double precision FP elements).\nThe binary loop is storing 128 bytes (16 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.03 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 46\nnb uops            : 45\nloop length        : 204\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 11.25 cycles\nfront end            : 11.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5   | P6   | P7\n------------------------------------------------------------------\nuops   | 1.00 | 9.50 | 10.67 | 10.67 | 16.00 | 9.50 | 1.00 | 10.67\ncycles | 1.00 | 9.50 | 10.67 | 10.67 | 16.00 | 9.50 | 1.00 | 10.67\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 11.25\nDispatch  : 16.00\nData deps.: 1.00\nOverall L1: 16.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 20%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 30%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.00 cycles. At this rate:\n - 12% of peak load performance is reached (8.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 25% of peak store performance is reached (8.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1a59\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------\nVADDSD (%RDX),%XMM7,%XMM9              | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nLEA 0x4(%R10),%R9                      | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nLEA 0x8(%R10),%RCX                     | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVSD %XMM9,(%RDX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVADDSD (%RAX),%XMM11,%XMM10            | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nVMOVSD %XMM10,(%RAX)                   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RDX),%XMM8                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM8,%XMM4               | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM4,(%R8,%R10,8)              | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RAX),%XMM5                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM5,%XMM2               | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM2,(%RDI,%R10,8)             | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVADDSD (%RDX),%XMM7,%XMM1              | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nVMOVSD %XMM1,(%RDX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVADDSD (%RAX),%XMM11,%XMM6             | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nVMOVSD %XMM6,(%RAX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RDX),%XMM13                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM13,%XMM3              | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM3,(%R8,%R9,8)               | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RAX),%XMM12                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM12,%XMM9              | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM9,(%RDI,%R9,8)              | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVADDSD (%RDX),%XMM7,%XMM10             | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nLEA 0xc(%R10),%R9                      | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nADD $0x10,%R10                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVSD %XMM10,(%RDX)                   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVADDSD (%RAX),%XMM11,%XMM8             | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nVMOVSD %XMM8,(%RAX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RDX),%XMM4                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM4,%XMM5               | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM5,(%R8,%RCX,8)              | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RAX),%XMM2                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM2,%XMM1               | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM1,(%RDI,%RCX,8)             | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVADDSD (%RDX),%XMM7,%XMM6              | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nVMOVSD %XMM6,(%RDX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVADDSD (%RAX),%XMM11,%XMM13            | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nVMOVSD %XMM13,(%RAX)                   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RDX),%XMM3                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM3,%XMM12              | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM12,(%R8,%R9,8)              | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RAX),%XMM9                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM9,%XMM10              | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM10,(%RDI,%R9,8)             | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nCMP $0x1f3,%R10                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJBE 1a59 <compute_accelerations+0x269> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "3% of peak computational performance is used (0.50 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 30% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 16.00 to 4.00 cycles (4.00x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 16.00 to 11.25 cycles (1.42x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 6 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "8 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 8 FP arithmetical operations:\n - 8: addition or subtraction\nThe binary loop is loading 128 bytes (16 double precision FP elements).\nThe binary loop is storing 128 bytes (16 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.03 FP operations per loaded or stored byte.",
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
          txt = "nb instructions    : 46\nnb uops            : 45\nloop length        : 204\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 11.25 cycles\nfront end            : 11.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2    | P3    | P4    | P5   | P6   | P7\n------------------------------------------------------------------\nuops   | 1.00 | 9.50 | 10.67 | 10.67 | 16.00 | 9.50 | 1.00 | 10.67\ncycles | 1.00 | 9.50 | 10.67 | 10.67 | 16.00 | 9.50 | 1.00 | 10.67\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 11.25\nDispatch  : 16.00\nData deps.: 1.00\nOverall L1: 16.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 20%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 30%\nload    : 25%\nstore   : 25%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.00 cycles. At this rate:\n - 12% of peak load performance is reached (8.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 25% of peak store performance is reached (8.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1a59\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------\nVADDSD (%RDX),%XMM7,%XMM9              | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nLEA 0x4(%R10),%R9                      | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nLEA 0x8(%R10),%RCX                     | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVSD %XMM9,(%RDX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVADDSD (%RAX),%XMM11,%XMM10            | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nVMOVSD %XMM10,(%RAX)                   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RDX),%XMM8                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM8,%XMM4               | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM4,(%R8,%R10,8)              | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RAX),%XMM5                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM5,%XMM2               | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM2,(%RDI,%R10,8)             | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVADDSD (%RDX),%XMM7,%XMM1              | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nVMOVSD %XMM1,(%RDX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVADDSD (%RAX),%XMM11,%XMM6             | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nVMOVSD %XMM6,(%RAX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RDX),%XMM13                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM13,%XMM3              | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM3,(%R8,%R9,8)               | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RAX),%XMM12                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM12,%XMM9              | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM9,(%RDI,%R9,8)              | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVADDSD (%RDX),%XMM7,%XMM10             | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nLEA 0xc(%R10),%R9                      | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nADD $0x10,%R10                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVSD %XMM10,(%RDX)                   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVADDSD (%RAX),%XMM11,%XMM8             | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nVMOVSD %XMM8,(%RAX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RDX),%XMM4                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM4,%XMM5               | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM5,(%R8,%RCX,8)              | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RAX),%XMM2                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM2,%XMM1               | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM1,(%RDI,%RCX,8)             | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVADDSD (%RDX),%XMM7,%XMM6              | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nVMOVSD %XMM6,(%RDX)                    | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVADDSD (%RAX),%XMM11,%XMM13            | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nVMOVSD %XMM13,(%RAX)                   | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RDX),%XMM3                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM3,%XMM12              | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM12,(%R8,%R9,8)              | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVSD (%RAX),%XMM9                    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nVXORPD %XMM0,%XMM9,%XMM10              | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVMOVSD %XMM10,(%RDI,%R9,8)             | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nCMP $0x1f3,%R10                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJBE 1a59 <compute_accelerations+0x269> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "3% of peak computational performance is used (0.50 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 30% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 16.00 to 4.00 cycles (4.00x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 16.00 to 11.25 cycles (1.42x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /home/madjid/Bureau/CHPS/Archi_Paralelle/TP2-1/todo/nbody30.c:105-113.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
