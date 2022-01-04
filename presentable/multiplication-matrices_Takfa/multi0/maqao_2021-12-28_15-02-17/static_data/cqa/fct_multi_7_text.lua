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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is storing 32 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 11\nnb uops            : 11\nloop length        : 34\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 5\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 2.75 cycles\nfront end            : 2.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 0.00 | 0.00 | 2.83 | 2.50 | 6.00 | 0.00 | 2.00 | 2.67\ncycles | 0.00 | 0.00 | 2.83 | 2.50 | 6.00 | 0.00 | 2.00 | 2.67\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 2.75\nDispatch  : 6.00\nOverall L1: 6.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 20%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 20%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 6.00 cycles. At this rate:\n - 16% of peak store performance is reached (5.33 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 85b\n\nInstruction                   | Nb FU | P0 | P1 | P2   | P3   | P4 | P5 | P6 | P7   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------\nPUSH %RBP                     | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %RSP,%RBP                 | 1     | 0  | 0  | 0    | 0    | 0  | 0  | 0  | 0    | 0       | 0.25\nMOV %RDI,-0x18(%RBP)          | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %RSI,-0x20(%RBP)          | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %RDX,-0x28(%RBP)          | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %ECX,-0x2c(%RBP)          | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOVL $0,-0xc(%RBP)            | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nJMP 921 <Multiplication+0xc6> | 1     | 0  | 0  | 0    | 0    | 0  | 0  | 1  | 0    | 0       | 1-2\nNOP                           | 1     | 0  | 0  | 0    | 0    | 0  | 0  | 0  | 0    | 0       | 0.25\nPOP %RBP                      | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 2       | 0.50\nRET                           | 1     | 0  | 0  | 0.33 | 0.33 | 0  | 0  | 1  | 0.33 | 0       | 1\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 20% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 6.00 to 1.12 cycles (5.33x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 6.00 to 2.83 cycles (2.12x speedup).\n",
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
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is storing 32 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 11\nnb uops            : 11\nloop length        : 34\nused x86 registers : 6\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 5\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 2.75 cycles\nfront end            : 2.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 0.00 | 0.00 | 2.83 | 2.50 | 6.00 | 0.00 | 2.00 | 2.67\ncycles | 0.00 | 0.00 | 2.83 | 2.50 | 6.00 | 0.00 | 2.00 | 2.67\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 2.75\nDispatch  : 6.00\nOverall L1: 6.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 20%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : 20%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 25%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 6.00 cycles. At this rate:\n - 16% of peak store performance is reached (5.33 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 85b\n\nInstruction                   | Nb FU | P0 | P1 | P2   | P3   | P4 | P5 | P6 | P7   | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------\nPUSH %RBP                     | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %RSP,%RBP                 | 1     | 0  | 0  | 0    | 0    | 0  | 0  | 0  | 0    | 0       | 0.25\nMOV %RDI,-0x18(%RBP)          | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %RSI,-0x20(%RBP)          | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %RDX,-0x28(%RBP)          | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOV %ECX,-0x2c(%RBP)          | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nMOVL $0,-0xc(%RBP)            | 1     | 0  | 0  | 0.33 | 0.33 | 1  | 0  | 0  | 0.33 | 3       | 1\nJMP 921 <Multiplication+0xc6> | 1     | 0  | 0  | 0    | 0    | 0  | 0  | 1  | 0    | 0       | 1-2\nNOP                           | 1     | 0  | 0  | 0    | 0    | 0  | 0  | 0  | 0    | 0       | 0.25\nPOP %RBP                      | 1     | 0  | 0  | 0.50 | 0.50 | 0  | 0  | 0  | 0    | 2       | 0.50\nRET                           | 1     | 0  | 0  | 0.33 | 0.33 | 0  | 0  | 1  | 0.33 | 0       | 1\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 20% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 6.00 to 1.12 cycles (5.33x speedup).",
        },
        {
          workaround = " - Write less array elements\n - Provide more information to your compiler:\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by writing data to caches/RAM (the store unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 6.00 to 2.83 cycles (2.12x speedup).\n",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The function is defined in /home/arezki/prog/multi.c:19-24,30.\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
