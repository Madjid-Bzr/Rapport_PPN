_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VPMULLD: 8 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 256 bytes.\nThe binary loop is storing 256 bytes.",
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
          txt = "nb instructions    : 20\nnb uops            : 35\nloop length        : 145\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 9\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 8.75 cycles\nfront end            : 8.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4   | P5   | P6   | P7\n---------------------------------------------------------------\nuops   | 16.00 | 1.00 | 5.33 | 5.33 | 8.00 | 1.00 | 1.00 | 5.33\ncycles | 16.00 | 1.00 | 5.33 | 5.33 | 8.00 | 1.00 | 1.00 | 5.33\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 8.75\nDispatch  : 16.00\nData deps.: 1.00\nOverall L1: 16.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : 100%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : 100%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.00 cycles. At this rate:\n - 25% of peak load performance is reached (16.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 50% of peak store performance is reached (16.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 9cd\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------\nADD $0x8,%R9D                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVPMULLD (%RDX,%RAX,1),%YMM2,%YMM10     | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPMULLD 0x20(%RDX,%RAX,1),%YMM2,%YMM11 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPMULLD 0x40(%RDX,%RAX,1),%YMM2,%YMM12 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPMULLD 0x60(%RDX,%RAX,1),%YMM2,%YMM13 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM10,(%RCX,%RAX,1)           | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x80(%RDX,%RAX,1),%YMM2,%YMM14 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPMULLD 0xa0(%RDX,%RAX,1),%YMM2,%YMM15 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPMULLD 0xc0(%RDX,%RAX,1),%YMM2,%YMM0  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM11,0x20(%RCX,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0xe0(%RDX,%RAX,1),%YMM2,%YMM1  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM12,0x40(%RCX,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM13,0x60(%RCX,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM14,0x80(%RCX,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM15,0xa0(%RCX,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM0,0xc0(%RCX,%RAX,1)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM1,0xe0(%RCX,%RAX,1)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nADD $0x100,%RAX                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R12D,%R9D                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJB 9cd <main+0x35d>                    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50\n",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VPMULLD: 8 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 256 bytes.\nThe binary loop is storing 256 bytes.",
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
          txt = "nb instructions    : 20\nnb uops            : 35\nloop length        : 145\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 9\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 8.75 cycles\nfront end            : 8.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4   | P5   | P6   | P7\n---------------------------------------------------------------\nuops   | 16.00 | 1.00 | 5.33 | 5.33 | 8.00 | 1.00 | 1.00 | 5.33\ncycles | 16.00 | 1.00 | 5.33 | 5.33 | 8.00 | 1.00 | 1.00 | 5.33\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 8.75\nDispatch  : 16.00\nData deps.: 1.00\nOverall L1: 16.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : 100%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : 100%\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.00 cycles. At this rate:\n - 25% of peak load performance is reached (16.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 50% of peak store performance is reached (16.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 9cd\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------\nADD $0x8,%R9D                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVPMULLD (%RDX,%RAX,1),%YMM2,%YMM10     | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPMULLD 0x20(%RDX,%RAX,1),%YMM2,%YMM11 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPMULLD 0x40(%RDX,%RAX,1),%YMM2,%YMM12 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPMULLD 0x60(%RDX,%RAX,1),%YMM2,%YMM13 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM10,(%RCX,%RAX,1)           | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x80(%RDX,%RAX,1),%YMM2,%YMM14 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPMULLD 0xa0(%RDX,%RAX,1),%YMM2,%YMM15 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPMULLD 0xc0(%RDX,%RAX,1),%YMM2,%YMM0  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM11,0x20(%RCX,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0xe0(%RDX,%RAX,1),%YMM2,%YMM1  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM12,0x40(%RCX,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM13,0x60(%RCX,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM14,0x80(%RCX,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM15,0xa0(%RCX,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM0,0xc0(%RCX,%RAX,1)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM1,0xe0(%RCX,%RAX,1)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nADD $0x100,%RAX                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R12D,%R9D                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJB 9cd <main+0x35d>                    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50\n",
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
      "The loop is defined in /home/arezki/Rapport_PPN/multiplication-matrices/multi1/multi1.c:27-29.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
