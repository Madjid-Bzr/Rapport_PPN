_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 8 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 15\nnb uops            : 14\nloop length        : 70\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 2.80 cycles\nfront end            : 2.80 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n----------------------------------------------------------------------------\nuops   | 1.25 | 1.25 | 1.00 | 1.00 | 0.00 | 1.25 | 1.25 | 0.50 | 0.50 | 0.00\ncycles | 1.25 | 1.25 | 1.00 | 1.00 | 0.00 | 1.25 | 1.25 | 0.50 | 0.50 | 0.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 2.80\nDispatch  : 1.25\nOverall L1: 2.80\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 50%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 33%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 15%\nload    : 6%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\nINT+FP\nall     : 14%\nload    : 6%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 18%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 2.80 cycles. At this rate:\n - 2% of peak load performance is reached (2.86 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 2.80 to 1.25 cycles (2.24x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1630\n\nInstruction                    | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | P8   | P9 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nVMOVAPS %XMM0,%XMM12           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nTEST %RSI,%RSI                 | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 0    | 0  | 1       | 0.25\nJE 1766 <move_particles+0x136> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0    | 0  | 0       | 0.50-1\nLEA (%RSI,%RSI,2),%RAX         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 0    | 0  | 1       | 0.25\nMOV %RDI,%RCX                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nVXORPS %XMM13,%XMM13,%XMM13    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nMOV %RDI,%RDX                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nVMOVSS 0xacc(%RIP),%XMM11      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.50\nVMOVSS 0xac8(%RIP),%XMM10      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.50\nLEA (%RDI,%RAX,8),%RSI         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 0    | 0  | 1       | 0.25\nNOPL (%RAX)                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nNOPL (%RAX)                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nRET                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0.50 | 0.50 | 0  | 0       | 1\nNOPW (%RAX,%RAX,1)             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\n",
        },
      },
      header = {
        "Warnings:\nThe number of fused uops of the instruction [ENDBR64] is unknown",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 2.80 to 1.40 cycles (2.00x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 2.80 to 0.17 cycles (16.00x speedup).",
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
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 8 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 15\nnb uops            : 14\nloop length        : 70\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 5\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 2.80 cycles\nfront end            : 2.80 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n----------------------------------------------------------------------------\nuops   | 1.25 | 1.25 | 1.00 | 1.00 | 0.00 | 1.25 | 1.25 | 0.50 | 0.50 | 0.00\ncycles | 1.25 | 1.25 | 1.00 | 1.00 | 0.00 | 1.25 | 1.25 | 0.50 | 0.50 | 0.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 2.80\nDispatch  : 1.25\nOverall L1: 2.80\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 50%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 100%\nINT+FP\nall     : 33%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 50%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 15%\nload    : 6%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\nINT+FP\nall     : 14%\nload    : 6%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 18%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 2.80 cycles. At this rate:\n - 2% of peak load performance is reached (2.86 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 2.80 to 1.25 cycles (2.24x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1630\n\nInstruction                    | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | P8   | P9 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nVMOVAPS %XMM0,%XMM12           | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nTEST %RSI,%RSI                 | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 0    | 0  | 1       | 0.25\nJE 1766 <move_particles+0x136> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0    | 0  | 0       | 0.50-1\nLEA (%RSI,%RSI,2),%RAX         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 0    | 0  | 1       | 0.25\nMOV %RDI,%RCX                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nVXORPS %XMM13,%XMM13,%XMM13    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nMOV %RDI,%RDX                  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nVMOVSS 0xacc(%RIP),%XMM11      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.50\nVMOVSS 0xac8(%RIP),%XMM10      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.50\nLEA (%RDI,%RAX,8),%RSI         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 0    | 0  | 1       | 0.25\nNOPL (%RAX)                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nNOPL (%RAX)                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nRET                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0.50 | 0.50 | 0  | 0       | 1\nNOPW (%RAX,%RAX,1)             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\n",
        },
      },
      header = {
        "Warnings:\nThe number of fused uops of the instruction [ENDBR64] is unknown",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 2.80 to 1.40 cycles (2.00x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is probably not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 2.80 to 0.17 cycles (16.00x speedup).",
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
      "",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
