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
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 512 bytes.\nThe binary loop is storing 256 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 28\nnb uops            : 43\nloop length        : 220\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 16\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 12.75 cycles\nfront end            : 12.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4   | P5   | P6   | P7\n---------------------------------------------------------------\nuops   | 16.00 | 4.00 | 8.00 | 8.00 | 8.00 | 4.00 | 3.00 | 8.00\ncycles | 16.00 | 4.00 | 8.00 | 8.00 | 8.00 | 4.00 | 3.00 | 8.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.75\nDispatch  : 16.00\nData deps.: 1.00\nOverall L1: 16.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.00 cycles. At this rate:\n - 50% of peak load performance is reached (32.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 50% of peak store performance is reached (16.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: db2\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------\nVPMULLD (%RSI,%RAX,1),%YMM0,%YMM2      | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD (%R10,%RAX,1),%YMM2,%YMM3       | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nADD $0x8,%R8D                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVDQA %YMM3,(%R9,%RAX,1)             | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x20(%RSI,%RAX,1),%YMM0,%YMM4  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD 0x20(%R10,%RAX,1),%YMM4,%YMM5   | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVDQA %YMM5,0x20(%R9,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x40(%RSI,%RAX,1),%YMM0,%YMM6  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD 0x40(%R10,%RAX,1),%YMM6,%YMM7   | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVDQA %YMM7,0x40(%R9,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x60(%RSI,%RAX,1),%YMM0,%YMM8  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD 0x60(%R10,%RAX,1),%YMM8,%YMM9   | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVDQA %YMM9,0x60(%R9,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x80(%RSI,%RAX,1),%YMM0,%YMM10 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD 0x80(%R10,%RAX,1),%YMM10,%YMM11 | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVDQA %YMM11,0x80(%R9,%RAX,1)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0xa0(%RSI,%RAX,1),%YMM0,%YMM12 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD 0xa0(%R10,%RAX,1),%YMM12,%YMM13 | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVDQA %YMM13,0xa0(%R9,%RAX,1)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0xc0(%RSI,%RAX,1),%YMM0,%YMM14 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD 0xc0(%R10,%RAX,1),%YMM14,%YMM15 | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVDQA %YMM15,0xc0(%R9,%RAX,1)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0xe0(%RSI,%RAX,1),%YMM0,%YMM1  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD 0xe0(%R10,%RAX,1),%YMM1,%YMM2   | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVDQA %YMM2,0xe0(%R9,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nADD $0x100,%RAX                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R8D,%R13D                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJA db2 <Multiplication+0x332>          | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
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
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 512 bytes.\nThe binary loop is storing 256 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 28\nnb uops            : 43\nloop length        : 220\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 16\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 12.75 cycles\nfront end            : 12.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4   | P5   | P6   | P7\n---------------------------------------------------------------\nuops   | 16.00 | 4.00 | 8.00 | 8.00 | 8.00 | 4.00 | 3.00 | 8.00\ncycles | 16.00 | 4.00 | 8.00 | 8.00 | 8.00 | 4.00 | 3.00 | 8.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 12.75\nDispatch  : 16.00\nData deps.: 1.00\nOverall L1: 16.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : 100%\nadd-sub : 100%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.00 cycles. At this rate:\n - 50% of peak load performance is reached (32.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 50% of peak store performance is reached (16.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: db2\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------\nVPMULLD (%RSI,%RAX,1),%YMM0,%YMM2      | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD (%R10,%RAX,1),%YMM2,%YMM3       | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nADD $0x8,%R8D                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nVMOVDQA %YMM3,(%R9,%RAX,1)             | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x20(%RSI,%RAX,1),%YMM0,%YMM4  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD 0x20(%R10,%RAX,1),%YMM4,%YMM5   | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVDQA %YMM5,0x20(%R9,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x40(%RSI,%RAX,1),%YMM0,%YMM6  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD 0x40(%R10,%RAX,1),%YMM6,%YMM7   | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVDQA %YMM7,0x40(%R9,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x60(%RSI,%RAX,1),%YMM0,%YMM8  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD 0x60(%R10,%RAX,1),%YMM8,%YMM9   | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVDQA %YMM9,0x60(%R9,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0x80(%RSI,%RAX,1),%YMM0,%YMM10 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD 0x80(%R10,%RAX,1),%YMM10,%YMM11 | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVDQA %YMM11,0x80(%R9,%RAX,1)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0xa0(%RSI,%RAX,1),%YMM0,%YMM12 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD 0xa0(%R10,%RAX,1),%YMM12,%YMM13 | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVDQA %YMM13,0xa0(%R9,%RAX,1)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0xc0(%RSI,%RAX,1),%YMM0,%YMM14 | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD 0xc0(%R10,%RAX,1),%YMM14,%YMM15 | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVDQA %YMM15,0xc0(%R9,%RAX,1)        | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nVPMULLD 0xe0(%RSI,%RAX,1),%YMM0,%YMM1  | 3     | 2    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 10      | 2\nVPADDD 0xe0(%R10,%RAX,1),%YMM1,%YMM2   | 1     | 0    | 0.50 | 0.50 | 0.50 | 0  | 0.50 | 0    | 0    | 1       | 0.50\nVMOVDQA %YMM2,0xe0(%R9,%RAX,1)         | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nADD $0x100,%RAX                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R8D,%R13D                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJA db2 <Multiplication+0x332>          | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
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
      "The loop is defined in /home/arezki/prog1/multi1.c:25.\n",
      "It is main loop of related source loop which is unrolled by 8 (including vectorization).",
    },
    nb_paths = 1,
  },
}
