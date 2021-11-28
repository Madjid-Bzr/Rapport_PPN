_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Recompile with march=broadwell.\nCQA target is Core_M5x (Intel Core M-5xxx Processor, 5th generation Intel Core processors based on Broadwell microarchitecture) but specialization flags are -march=x86-64\n - Use vector aligned instructions:\n  1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n  2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - MOVUPD: 5 occurrences\n - MOVUPS: 5 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 10 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 80 bytes.\nThe binary loop is storing 80 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 14\nnb uops            : 13\nloop length        : 58\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 3.25 cycles\nfront end            : 3.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 0.75 | 0.75 | 3.50 | 3.17 | 5.00 | 0.75 | 0.75 | 3.33\ncycles | 0.75 | 0.75 | 3.50 | 3.17 | 5.00 | 0.75 | 0.75 | 3.33\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 3.25\nDispatch  : 5.00\nData deps.: 1.00\nOverall L1: 5.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 50%\nload    : 50%\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 5.00 cycles. At this rate:\n - 25% of peak load performance is reached (16.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 50% of peak store performance is reached (16.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: d8b0\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------------\nMOVUPD 0x10(%RDX),%XMM3                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD 0x20(%RDX),%XMM2                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADD $0x50,%RAX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nADD $0x50,%RDX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMOVUPD -0x20(%RDX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD -0x10(%RDX),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD -0x50(%RDX),%XMM4                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPS %XMM3,-0x40(%RAX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPS %XMM2,-0x30(%RAX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPS %XMM4,-0x50(%RAX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPS %XMM1,-0x20(%RAX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPS %XMM0,-0x10(%RAX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nCMP %RAX,%R11                            | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE d8b0 <compute_rhs_._omp_fn.0+0x3a50> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Recompile with march=broadwell.\nCQA target is Core_M5x (Intel Core M-5xxx Processor, 5th generation Intel Core processors based on Broadwell microarchitecture) but specialization flags are -march=x86-64\n - Use vector aligned instructions:\n  1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n  2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using only 128 out of 256 bits (SSE/AVX-128 instructions on AVX/AVX2 processors).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 5.00 to 2.50 cycles (2.00x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 5.00 to 3.50 cycles (1.43x speedup).\n",
        },
      },
      potential = {
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = " - Recompile with march=broadwell.\nCQA target is Core_M5x (Intel Core M-5xxx Processor, 5th generation Intel Core processors based on Broadwell microarchitecture) but specialization flags are -march=x86-64\n - Use vector aligned instructions:\n  1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n  2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = " - MOVUPD: 5 occurrences\n - MOVUPS: 5 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 10 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 80 bytes.\nThe binary loop is storing 80 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 14\nnb uops            : 13\nloop length        : 58\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 3.25 cycles\nfront end            : 3.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 0.75 | 0.75 | 3.50 | 3.17 | 5.00 | 0.75 | 0.75 | 3.33\ncycles | 0.75 | 0.75 | 3.50 | 3.17 | 5.00 | 0.75 | 0.75 | 3.33\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 3.25\nDispatch  : 5.00\nData deps.: 1.00\nOverall L1: 5.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : 100%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 50%\nload    : 50%\nstore   : 50%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 5.00 cycles. At this rate:\n - 25% of peak load performance is reached (16.00 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 50% of peak store performance is reached (16.00 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: d8b0\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------------\nMOVUPD 0x10(%RDX),%XMM3                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD 0x20(%RDX),%XMM2                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nADD $0x50,%RAX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nADD $0x50,%RDX                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMOVUPD -0x20(%RDX),%XMM1                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD -0x10(%RDX),%XMM0                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPD -0x50(%RDX),%XMM4                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nMOVUPS %XMM3,-0x40(%RAX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPS %XMM2,-0x30(%RAX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPS %XMM4,-0x50(%RAX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPS %XMM1,-0x20(%RAX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nMOVUPS %XMM0,-0x10(%RAX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nCMP %RAX,%R11                            | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE d8b0 <compute_rhs_._omp_fn.0+0x3a50> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Recompile with march=broadwell.\nCQA target is Core_M5x (Intel Core M-5xxx Processor, 5th generation Intel Core processors based on Broadwell microarchitecture) but specialization flags are -march=x86-64\n - Use vector aligned instructions:\n  1) The GNU Fortran compiler does not support allocation alignment and does not feature directives to benefit from aligned data.\n  2) Use another compiler or locally use C code (for instance via libraries)\n",
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using only 128 out of 256 bits (SSE/AVX-128 instructions on AVX/AVX2 processors).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 5.00 to 2.50 cycles (2.00x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 5.00 to 3.50 cycles (1.43x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/rhs.f90:64.\n",
      "It is main loop of related source loop which is unrolled by 2 (including vectorization).",
    },
    nb_paths = 1,
  },
}
