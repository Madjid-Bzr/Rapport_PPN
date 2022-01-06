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
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 256 bytes.\nThe binary loop is storing 512 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 28\nnb uops            : 43\nloop length        : 204\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 10\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 10.75 cycles\nfront end            : 10.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4    | P5   | P6   | P7\n----------------------------------------------------------------\nuops   | 16.00 | 1.00 | 8.00 | 8.00 | 16.00 | 1.00 | 1.00 | 8.00\ncycles | 16.00 | 1.00 | 8.00 | 8.00 | 16.00 | 1.00 | 1.00 | 8.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 10.75\nDispatch  : 16.00\nData deps.: 1.00\nOverall L1: 16.00\n",
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
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.00 cycles. At this rate:\n - 25% of peak load performance is reached (16.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 100% of peak store performance is reached (32.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1524\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------\nADD $0x8,%R10D                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVDQA %YMM1,(%RDI,%RAX,1)           | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD (%R9,%RAX,1),%YMM0,%YMM10     | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM1,0x20(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM10,(%RDI,%RAX,1)          | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x20(%R9,%RAX,1),%YMM0,%YMM11 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM1,0x40(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM11,0x20(%RDI,%RAX,1)      | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x40(%R9,%RAX,1),%YMM0,%YMM12 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM1,0x60(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM12,0x40(%RDI,%RAX,1)      | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x60(%R9,%RAX,1),%YMM0,%YMM13 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM1,0x80(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM13,0x60(%RDI,%RAX,1)      | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x80(%R9,%RAX,1),%YMM0,%YMM14 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM1,0xa0(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM14,0x80(%RDI,%RAX,1)      | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0xa0(%R9,%RAX,1),%YMM0,%YMM15 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM1,0xc0(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM15,0xa0(%RDI,%RAX,1)      | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0xc0(%R9,%RAX,1),%YMM0,%YMM2  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM1,0xe0(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM2,0xc0(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0xe0(%R9,%RAX,1),%YMM0,%YMM3  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM3,0xe0(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nADD $0x100,%RAX                       | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R10D,%R14D                       | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJA 1524 <mul_matrix+0x344>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
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
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 16.00 to 10.75 cycles (1.49x speedup).\n",
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
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 256 bytes.\nThe binary loop is storing 512 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 28\nnb uops            : 43\nloop length        : 204\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 10\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 10.75 cycles\nfront end            : 10.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4    | P5   | P6   | P7\n----------------------------------------------------------------\nuops   | 16.00 | 1.00 | 8.00 | 8.00 | 16.00 | 1.00 | 1.00 | 8.00\ncycles | 16.00 | 1.00 | 8.00 | 8.00 | 16.00 | 1.00 | 1.00 | 8.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 10.75\nDispatch  : 16.00\nData deps.: 1.00\nOverall L1: 16.00\n",
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
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.00 cycles. At this rate:\n - 25% of peak load performance is reached (16.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 100% of peak store performance is reached (32.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1524\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------\nADD $0x8,%R10D                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVDQA %YMM1,(%RDI,%RAX,1)           | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD (%R9,%RAX,1),%YMM0,%YMM10     | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM1,0x20(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM10,(%RDI,%RAX,1)          | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x20(%R9,%RAX,1),%YMM0,%YMM11 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM1,0x40(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM11,0x20(%RDI,%RAX,1)      | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x40(%R9,%RAX,1),%YMM0,%YMM12 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM1,0x60(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM12,0x40(%RDI,%RAX,1)      | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x60(%R9,%RAX,1),%YMM0,%YMM13 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM1,0x80(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM13,0x60(%RDI,%RAX,1)      | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x80(%R9,%RAX,1),%YMM0,%YMM14 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM1,0xa0(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM14,0x80(%RDI,%RAX,1)      | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0xa0(%R9,%RAX,1),%YMM0,%YMM15 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM1,0xc0(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM15,0xa0(%RDI,%RAX,1)      | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0xc0(%R9,%RAX,1),%YMM0,%YMM2  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM1,0xe0(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVMOVDQA %YMM2,0xc0(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0xe0(%R9,%RAX,1),%YMM0,%YMM3  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVMOVDQA %YMM3,0xe0(%RDI,%RAX,1)       | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nADD $0x100,%RAX                       | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R10D,%R14D                       | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJA 1524 <mul_matrix+0x344>            | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
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
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 16.00 to 10.75 cycles (1.49x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /home/arezki/multiplication/test2/mat.c:33-35.\n",
      "It is main loop of related source loop which is unrolled by 8 (including vectorization).",
    },
    nb_paths = 1,
  },
}
