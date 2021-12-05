_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - .plt.sec@start: 1 occurrences\n - init_system: 1 occurrences\n - unknown: 7 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 40 bytes.\nThe binary function is storing 8 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 46\nnb uops            : 54\nloop length        : 192\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 10.80 cycles\nfront end            : 10.80 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6    | P7   | P8   | P9\n-----------------------------------------------------------------------------\nuops   | 3.75 | 3.75 | 4.50 | 4.50 | 7.00 | 3.50 | 10.00 | 7.50 | 7.50 | 7.00\ncycles | 3.75 | 3.75 | 4.50 | 4.50 | 7.00 | 3.50 | 10.00 | 7.50 | 7.50 | 7.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 10.80\nDispatch  : 10.00\nOverall L1: 10.80\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 8%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 7%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 10.80 cycles. At this rate:\n - 2% of peak load performance is reached (3.70 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.74 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 10.80 to 10.00 cycles (1.08x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1260\n\nInstruction                     | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %R13                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nXOR %EDI,%EDI                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nPUSH %R12                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nXOR %R12D,%R12D                 | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nPUSH %RBP                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nPUSH %RBX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nSUB $0x68,%RSP                  | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV %FS:0x28,%RAX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV %RAX,0x58(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nXOR %EAX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nLEA 0x20(%RSP),%RBP             | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCALL 1200 <.plt.sec@start+0xb0> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOV %RAX,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCALL 1220 <.plt.sec@start+0xd0> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOV $0x20,%EDI                  | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCALL 11e0 <.plt.sec@start+0x90> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nLEA 0x10(%RSP),%RCX             | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nLEA 0x18(%RSP),%R8              | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV $0x2,%EDX                   | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV $0x320,%ESI                 | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV $0x320,%EDI                 | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCALL 11a0 <.plt.sec@start+0x50> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nXOR %EAX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCALL 1c00 <init_system>         | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nNOPL (%RAX)                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOV 0x18(%RSP),%RDI             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nCALL 11b0 <.plt.sec@start+0x60> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOV 0x10(%RSP),%RDI             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nCALL 1160 <.plt.sec@start+0x10> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nCALL 1170 <.plt.sec@start+0x20> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOV 0x58(%RSP),%RAX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nXOR %FS:0x28,%RAX               | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.50\nJNE 19a6 <main+0x746>           | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nADD $0x68,%RSP                  | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nXOR %EAX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nPOP %RBX                        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nPOP %RBP                        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nPOP %R12                        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nPOP %R13                        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nRET                             | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0.50 | 0.50 | 0    | 0       | 1\nNOPW %CS:(%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nNOPW (%RAX,%RAX,1)              | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nNOPL (%RAX)                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCALL 1230 <.plt.sec@start+0xe0> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nNOPL (%RAX,%RAX,1)              | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 10.80 to 0.72 cycles (15.02x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - .plt.sec@start: 1 occurrences\n - init_system: 1 occurrences\n - unknown: 7 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This function is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your function (in the source code) and the binary function",
          txt = "The binary function does not contain any FP arithmetical operations.\nThe binary function is loading 40 bytes.\nThe binary function is storing 8 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 46\nnb uops            : 54\nloop length        : 192\nused x86 registers : 11\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 4\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 10.80 cycles\nfront end            : 10.80 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6    | P7   | P8   | P9\n-----------------------------------------------------------------------------\nuops   | 3.75 | 3.75 | 4.50 | 4.50 | 7.00 | 3.50 | 10.00 | 7.50 | 7.50 | 7.00\ncycles | 3.75 | 3.75 | 4.50 | 4.50 | 7.00 | 3.50 | 10.00 | 7.50 | 7.50 | 7.00\n\nCycles executing div or sqrt instructions: NA\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 10.80\nDispatch  : 10.00\nOverall L1: 10.80\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : 0%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 8%\nload    : 12%\nstore   : 12%\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 7%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 10.80 cycles. At this rate:\n - 2% of peak load performance is reached (3.70 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.74 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 10.80 to 10.00 cycles (1.08x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1260\n\nInstruction                     | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9   | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------------------------\nENDBR64\nPUSH %R13                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nXOR %EDI,%EDI                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nPUSH %R12                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nXOR %R12D,%R12D                 | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nPUSH %RBP                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nPUSH %RBX                       | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nSUB $0x68,%RSP                  | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV %FS:0x28,%RAX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV %RAX,0x58(%RSP)             | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nXOR %EAX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nLEA 0x20(%RSP),%RBP             | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCALL 1200 <.plt.sec@start+0xb0> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOV %RAX,%RDI                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCALL 1220 <.plt.sec@start+0xd0> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOV $0x20,%EDI                  | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCALL 11e0 <.plt.sec@start+0x90> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nLEA 0x10(%RSP),%RCX             | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nLEA 0x18(%RSP),%R8              | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV $0x2,%EDX                   | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV $0x320,%ESI                 | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nMOV $0x320,%EDI                 | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCALL 11a0 <.plt.sec@start+0x50> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nXOR %EAX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCALL 1c00 <init_system>         | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nNOPL (%RAX)                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOV 0x18(%RSP),%RDI             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nCALL 11b0 <.plt.sec@start+0x60> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOV 0x10(%RSP),%RDI             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nCALL 1160 <.plt.sec@start+0x10> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nCALL 1170 <.plt.sec@start+0x20> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nMOV 0x58(%RSP),%RAX             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nXOR %FS:0x28,%RAX               | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.50\nJNE 19a6 <main+0x746>           | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nADD $0x68,%RSP                  | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nXOR %EAX,%EAX                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nPOP %RBX                        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nPOP %RBP                        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nPOP %R12                        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nPOP %R13                        | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nRET                             | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0.50 | 0.50 | 0    | 0       | 1\nNOPW %CS:(%RAX,%RAX,1)          | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nNOPW (%RAX,%RAX,1)              | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nNOPL (%RAX)                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nCALL 1230 <.plt.sec@start+0xe0> | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nNOPL (%RAX,%RAX,1)              | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\n",
        },
      },
      header = {
        "Warnings:\n - The number of fused uops of the instruction [ENDBR64] is unknown\n - Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.\n",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Make array accesses unit-stride:\n  * If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 10.80 to 0.72 cycles (15.02x speedup).",
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
      "The function is defined in:\n - /usr/include/x86_64-linux-gnu/bits/stdio2.h:107\n - /home/anism/Bureau/Test Nbody/SOA.c:41-43,181-183,211-219,227-277\n\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
