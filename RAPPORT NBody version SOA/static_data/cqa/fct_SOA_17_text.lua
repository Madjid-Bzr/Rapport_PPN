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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 52 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 17\nnb uops            : 16\nloop length        : 84\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 3.20 cycles\nfront end            : 3.20 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n----------------------------------------------------------------------------\nuops   | 1.00 | 1.00 | 3.50 | 3.50 | 0.00 | 1.00 | 1.00 | 0.50 | 0.50 | 0.00\ncycles | 1.00 | 1.00 | 3.50 | 3.50 | 0.00 | 1.00 | 1.00 | 0.50 | 0.50 | 0.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 3.20\nDispatch  : 3.50\nOverall L1: 3.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 3.50 cycles. At this rate:\n - 11% of peak load performance is reached (14.86 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2250\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | P8   | P9 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nMOV 0x3de2(%RIP),%EAX                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nTEST %EAX,%EAX                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 0    | 0  | 1       | 0.25\nJLE 2578 <compute_accelerations+0x328> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0    | 0  | 0       | 0.50-1\nMOV 0x3db7(%RIP),%R10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV 0x3e00(%RIP),%RDI                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nLEA -0x1(%RAX),%R11D                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 0    | 0  | 1       | 0.25\nXOR %EAX,%EAX                          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nMOV 0x3dfb(%RIP),%RSI                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV 0x3dcc(%RIP),%R9                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV 0x3dcd(%RIP),%R8                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOVSD 0x1d95(%RIP),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.50\nNOPL (%RAX,%RAX,1)                     | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nNOP                                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nNOPL (%RAX)                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nRET                                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0.50 | 0.50 | 0  | 0       | 1\nNOPL (%RAX)                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 3.50 to 1.00 cycles (3.50x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your function, you can lower the cost of an iteration from 3.50 to 0.44 cycles (8.00x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Provide more information to your compiler:\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by reading data from caches/RAM (load units are a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 3.50 to 3.20 cycles (1.09x speedup).\n",
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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 52 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 17\nnb uops            : 16\nloop length        : 84\nused x86 registers : 7\nused mmx registers : 0\nused xmm registers : 1\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 3.20 cycles\nfront end            : 3.20 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n----------------------------------------------------------------------------\nuops   | 1.00 | 1.00 | 3.50 | 3.50 | 0.00 | 1.00 | 1.00 | 0.50 | 0.50 | 0.00\ncycles | 1.00 | 1.00 | 3.50 | 3.50 | 0.00 | 1.00 | 1.00 | 0.50 | 0.50 | 0.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 3.20\nDispatch  : 3.50\nOverall L1: 3.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : NA (no other vectorizable/vectorized instructions)\nFP\nall     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\nINT+FP\nall     : 12%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : NA (no other vectorizable/vectorized instructions)\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 3.50 cycles. At this rate:\n - 11% of peak load performance is reached (14.86 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 2250\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | P8   | P9 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nMOV 0x3de2(%RIP),%EAX                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nTEST %EAX,%EAX                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 0    | 0  | 1       | 0.25\nJLE 2578 <compute_accelerations+0x328> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0    | 0  | 0       | 0.50-1\nMOV 0x3db7(%RIP),%R10                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV 0x3e00(%RIP),%RDI                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nLEA -0x1(%RAX),%R11D                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 0    | 0  | 1       | 0.25\nXOR %EAX,%EAX                          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nMOV 0x3dfb(%RIP),%RSI                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV 0x3dcc(%RIP),%R9                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOV 0x3dcd(%RIP),%R8                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 2       | 0.50\nMOVSD 0x1d95(%RIP),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.50\nNOPL (%RAX,%RAX,1)                     | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nNOP                                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nNOPL (%RAX)                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\nRET                                    | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0.50 | 0.50 | 0  | 0       | 1\nNOPL (%RAX)                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0    | 0  | 0       | 0.25\n",
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
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 3.50 to 1.00 cycles (3.50x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\n8 data elements could be processed at once in vector registers.\nBy vectorizing your function, you can lower the cost of an iteration from 3.50 to 0.44 cycles (8.00x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Provide more information to your compiler:\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by reading data from caches/RAM (load units are a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 3.50 to 3.20 cycles (1.09x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The function is defined in /home/anism/Bureau/Test Nbody/SOA.c:145-165,176.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
