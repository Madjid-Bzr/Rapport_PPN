_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VPMULLD: 10 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 640 bytes.\nThe binary loop is storing 320 bytes.",
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
          txt = "nb instructions    : 43\nnb uops            : 62\nloop length        : 306\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 15\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 18.00 cycles\nfront end            : 18.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5    | P6   | P7\n---------------------------------------------------------------------\nuops   | 13.33 | 13.33 | 10.00 | 10.00 | 10.00 | 13.33 | 2.00 | 10.00\ncycles | 13.33 | 13.33 | 10.00 | 10.00 | 10.00 | 13.33 | 2.00 | 10.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 18.00\nDispatch  : 13.33\nData deps.: 1.00\nOverall L1: 18.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 18.00 cycles. At this rate:\n - 55% of peak load performance is reached (35.56 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 55% of peak store performance is reached (17.78 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 18.00 to 13.33 cycles (1.35x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 14b8\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------\nVPANDN (%RDX,%RAX,1),%YMM5,%YMM11       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPMULLD (%RCX,%RAX,1),%YMM1,%YMM12      | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0x20(%RDX,%RAX,1),%YMM5,%YMM14   | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM12,%YMM11,%YMM13             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM13,(%RDX,%RAX,1)            | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0x20(%RAX,%RCX,1),%YMM1,%YMM15  | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0x40(%RDX,%RAX,1),%YMM5,%YMM2    | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM15,%YMM14,%YMM0              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM0,0x20(%RDX,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0x40(%RAX,%RCX,1),%YMM1,%YMM6   | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0x60(%RDX,%RAX,1),%YMM5,%YMM7    | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM6,%YMM2,%YMM4                | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM4,0x40(%RDX,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0x60(%RAX,%RCX,1),%YMM1,%YMM8   | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0x80(%RDX,%RAX,1),%YMM5,%YMM10   | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM8,%YMM7,%YMM9                | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM9,0x60(%RDX,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0x80(%RAX,%RCX,1),%YMM1,%YMM11  | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0xa0(%RDX,%RAX,1),%YMM5,%YMM13   | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM11,%YMM10,%YMM12             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM12,0x80(%RDX,%RAX,1)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0xa0(%RAX,%RCX,1),%YMM1,%YMM14  | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0xc0(%RDX,%RAX,1),%YMM5,%YMM0    | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM14,%YMM13,%YMM15             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM15,0xa0(%RDX,%RAX,1)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0xc0(%RAX,%RCX,1),%YMM1,%YMM2   | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0xe0(%RDX,%RAX,1),%YMM5,%YMM7    | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM2,%YMM0,%YMM6                | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM6,0xc0(%RDX,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0xe0(%RAX,%RCX,1),%YMM1,%YMM4   | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0x100(%RDX,%RAX,1),%YMM5,%YMM9   | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM4,%YMM7,%YMM8                | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM8,0xe0(%RDX,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0x100(%RAX,%RCX,1),%YMM1,%YMM10 | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0x120(%RDX,%RAX,1),%YMM5,%YMM12  | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM10,%YMM9,%YMM11              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM11,0x100(%RDX,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0x120(%RAX,%RCX,1),%YMM1,%YMM13 | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPADDD %YMM13,%YMM12,%YMM14             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM14,0x120(%RDX,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nADD $0x140,%RAX                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP $0x7c0,%RAX                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 14b8 <matrixMultiplication+0xa8>    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is fully vectorized, using full register length.\n",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VPMULLD: 10 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 2 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 640 bytes.\nThe binary loop is storing 320 bytes.",
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
          txt = "nb instructions    : 43\nnb uops            : 62\nloop length        : 306\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 15\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 18.00 cycles\nfront end            : 18.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4    | P5    | P6   | P7\n---------------------------------------------------------------------\nuops   | 13.33 | 13.33 | 10.00 | 10.00 | 10.00 | 13.33 | 2.00 | 10.00\ncycles | 13.33 | 13.33 | 10.00 | 10.00 | 10.00 | 13.33 | 2.00 | 10.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 18.00\nDispatch  : 13.33\nData deps.: 1.00\nOverall L1: 18.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 18.00 cycles. At this rate:\n - 55% of peak load performance is reached (35.56 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 55% of peak store performance is reached (17.78 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 18.00 to 13.33 cycles (1.35x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 14b8\n\nInstruction                             | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------\nVPANDN (%RDX,%RAX,1),%YMM5,%YMM11       | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPMULLD (%RCX,%RAX,1),%YMM1,%YMM12      | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0x20(%RDX,%RAX,1),%YMM5,%YMM14   | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM12,%YMM11,%YMM13             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM13,(%RDX,%RAX,1)            | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0x20(%RAX,%RCX,1),%YMM1,%YMM15  | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0x40(%RDX,%RAX,1),%YMM5,%YMM2    | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM15,%YMM14,%YMM0              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM0,0x20(%RDX,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0x40(%RAX,%RCX,1),%YMM1,%YMM6   | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0x60(%RDX,%RAX,1),%YMM5,%YMM7    | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM6,%YMM2,%YMM4                | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM4,0x40(%RDX,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0x60(%RAX,%RCX,1),%YMM1,%YMM8   | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0x80(%RDX,%RAX,1),%YMM5,%YMM10   | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM8,%YMM7,%YMM9                | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM9,0x60(%RDX,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0x80(%RAX,%RCX,1),%YMM1,%YMM11  | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0xa0(%RDX,%RAX,1),%YMM5,%YMM13   | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM11,%YMM10,%YMM12             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM12,0x80(%RDX,%RAX,1)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0xa0(%RAX,%RCX,1),%YMM1,%YMM14  | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0xc0(%RDX,%RAX,1),%YMM5,%YMM0    | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM14,%YMM13,%YMM15             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM15,0xa0(%RDX,%RAX,1)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0xc0(%RAX,%RCX,1),%YMM1,%YMM2   | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0xe0(%RDX,%RAX,1),%YMM5,%YMM7    | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM2,%YMM0,%YMM6                | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM6,0xc0(%RDX,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0xe0(%RAX,%RCX,1),%YMM1,%YMM4   | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0x100(%RDX,%RAX,1),%YMM5,%YMM9   | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM4,%YMM7,%YMM8                | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM8,0xe0(%RDX,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0x100(%RAX,%RCX,1),%YMM1,%YMM10 | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPANDN 0x120(%RDX,%RAX,1),%YMM5,%YMM12  | 1     | 0.33 | 0.33 | 0.50 | 0.50 | 0  | 0.33 | 0    | 0    | 1       | 0.50\nVPADDD %YMM10,%YMM9,%YMM11              | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM11,0x100(%RDX,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nVPMULLD 0x120(%RAX,%RCX,1),%YMM1,%YMM13 | 3     | 1    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 1\nVPADDD %YMM13,%YMM12,%YMM14             | 1     | 0.33 | 0.33 | 0    | 0    | 0  | 0.33 | 0    | 0    | 1       | 0.33\nVMOVDQU %YMM14,0x120(%RDX,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 1       | 1\nADD $0x140,%RAX                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP $0x7c0,%RAX                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 14b8 <matrixMultiplication+0xa8>    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is fully vectorized, using full register length.\n",
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
      "The loop is defined in /home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:34-39.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
