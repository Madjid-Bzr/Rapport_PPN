_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 2 occurrence(s)\n - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "2 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n18 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 50 FP arithmetical operations:\n - 24: addition or subtraction (12 inside FMA instructions)\n - 18: multiply (12 inside FMA instructions)\n - 4: divide\n - 4: square root\nThe binary loop is loading 112 bytes (14 double precision FP elements).\nThe binary loop is storing 32 bytes (4 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.35 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 46\nnb uops            : 45\nloop length        : 215\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.50\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 11.75 cycles\nfront end            : 11.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5    | P6   | P7\n-----------------------------------------------------------------\nuops   | 10.50 | 11.00 | 4.00 | 4.00 | 2.00 | 10.50 | 7.00 | 2.00\ncycles | 10.50 | 11.00 | 4.00 | 4.00 | 2.00 | 10.50 | 7.00 | 2.00\n\nCycles executing div or sqrt instructions: 32.00-44.00\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 11.75\nDispatch  : 11.00\nDIV/SQRT  : 32.00-44.00\nData deps.: 2.00\nOverall L1: 32.00-44.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 88%\nload    : 75%\nstore   : 100%\nmul     : 50%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 80%\nINT+FP\nall     : 84%\nload    : 75%\nstore   : 100%\nmul     : 50%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 66%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 47%\nload    : 43%\nstore   : 50%\nmul     : 37%\nadd-sub : 50%\nfma     : 50%\ndiv/sqrt: 50%\nother   : 45%\nINT+FP\nall     : 45%\nload    : 43%\nstore   : 50%\nmul     : 37%\nadd-sub : 50%\nfma     : 50%\ndiv/sqrt: 50%\nother   : 39%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 44.00 cycles. At this rate:\n - 3% of peak load performance is reached (2.55 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (0.73 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2b7f\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------\nCMP %ESI,%EDI                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 2b77 <compute_accelerations+0x127> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nVMOVUPD (%RAX),%XMM10                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVMOVUPD (%R8),%XMM0                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVMULSD (%R9,%RSI,8),%XMM3,%XMM5       | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVPERMILPD $0x3,%XMM10,%XMM13          | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVPERMILPD $0x3,%XMM0,%XMM12           | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVPERMILPD $0,%XMM10,%XMM8             | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVSUBPD %XMM13,%XMM12,%XMM14           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nVPERMILPD $0,%XMM0,%XMM1              | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVSUBPD %XMM0,%XMM10,%XMM7             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nVSUBPD %XMM8,%XMM1,%XMM11             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nVMULPD %XMM14,%XMM14,%XMM15           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nVMOVDDUP %XMM5,%XMM9                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVFMADD231PD %XMM11,%XMM11,%XMM15      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVSQRTPD %XMM15,%XMM6                  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 8-14\nVFMADD132PD %XMM6,%XMM2,%XMM15        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVDIVPD %XMM15,%XMM9,%XMM10            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 8\nVFMADD213PD (%RCX),%XMM7,%XMM10       | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 5       | 0.50\nVMOVUPS %XMM10,(%RCX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nADD $0x10,%RAX                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nLEA 0x1(%RSI),%RDX                    | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nCMP %EDX,%EDI                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 2bde <compute_accelerations+0x18e> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nVMOVUPD (%RAX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVMOVUPD (%R8),%XMM0                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVMULSD (%R9,%RDX,8),%XMM3,%XMM5       | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVPERMILPD $0x3,%XMM9,%XMM12           | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVPERMILPD $0x3,%XMM0,%XMM11           | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVPERMILPD $0,%XMM9,%XMM8              | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVSUBPD %XMM12,%XMM11,%XMM13           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nVPERMILPD $0,%XMM0,%XMM1              | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVSUBPD %XMM0,%XMM9,%XMM7              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nVSUBPD %XMM8,%XMM1,%XMM10             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nVMULPD %XMM13,%XMM13,%XMM14           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nVMOVDDUP %XMM5,%XMM6                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVFMADD231PD %XMM10,%XMM10,%XMM14      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVSQRTPD %XMM14,%XMM15                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 8-14\nVFMADD132PD %XMM15,%XMM2,%XMM14       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVDIVPD %XMM14,%XMM6,%XMM9             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 8\nVFMADD213PD (%RCX),%XMM7,%XMM9        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 5       | 0.50\nVMOVUPS %XMM9,(%RCX)                  | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nLEA 0x1(%RDX),%RSI                    | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nADD $0x10,%RAX                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %RDX,%R10                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 2b18 <compute_accelerations+0xc8> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "7% of peak computational performance is used (1.14 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "84% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 75% of SSE/AVX loads are used in vector version.\n - 50% of SSE/AVX multiply instructions are used in vector version.\n - 66% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 45% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 44.00 to 11.75 cycles (3.74x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 12 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n9 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 25 FP arithmetical operations:\n - 12: addition or subtraction (6 inside FMA instructions)\n - 9: multiply (6 inside FMA instructions)\n - 2: divide\n - 2: square root\nThe binary loop is loading 56 bytes (7 double precision FP elements).\nThe binary loop is storing 16 bytes (2 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.35 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 28\nnb uops            : 27\nloop length        : 124\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.50\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 7.00 cycles\nfront end            : 7.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 6.00 | 6.00 | 2.00 | 2.00 | 1.00 | 6.00 | 6.00 | 1.00\ncycles | 6.00 | 6.00 | 2.00 | 2.00 | 1.00 | 6.00 | 6.00 | 1.00\n\nCycles executing div or sqrt instructions: 16.00-22.00\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 7.00\nDispatch  : 6.00\nDIV/SQRT  : 16.00-22.00\nData deps.: 2.00\nOverall L1: 16.00-22.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 88%\nload    : 75%\nstore   : 100%\nmul     : 50%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 80%\nINT+FP\nall     : 80%\nload    : 75%\nstore   : 100%\nmul     : 50%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 57%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 47%\nload    : 43%\nstore   : 50%\nmul     : 37%\nadd-sub : 50%\nfma     : 50%\ndiv/sqrt: 50%\nother   : 45%\nINT+FP\nall     : 43%\nload    : 43%\nstore   : 50%\nmul     : 37%\nadd-sub : 50%\nfma     : 50%\ndiv/sqrt: 50%\nother   : 35%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 22.00 cycles. At this rate:\n - 3% of peak load performance is reached (2.55 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (0.73 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2b7f\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------\nCMP %ESI,%EDI                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 2b77 <compute_accelerations+0x127> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nADD $0x10,%RAX                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nLEA 0x1(%RSI),%RDX                    | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nCMP %EDX,%EDI                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 2bde <compute_accelerations+0x18e> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nVMOVUPD (%RAX),%XMM9                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVMOVUPD (%R8),%XMM0                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVMULSD (%R9,%RDX,8),%XMM3,%XMM5       | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVPERMILPD $0x3,%XMM9,%XMM12           | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVPERMILPD $0x3,%XMM0,%XMM11           | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVPERMILPD $0,%XMM9,%XMM8              | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVSUBPD %XMM12,%XMM11,%XMM13           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nVPERMILPD $0,%XMM0,%XMM1              | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVSUBPD %XMM0,%XMM9,%XMM7              | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nVSUBPD %XMM8,%XMM1,%XMM10             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nVMULPD %XMM13,%XMM13,%XMM14           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nVMOVDDUP %XMM5,%XMM6                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVFMADD231PD %XMM10,%XMM10,%XMM14      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVSQRTPD %XMM14,%XMM15                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 8-14\nVFMADD132PD %XMM15,%XMM2,%XMM14       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVDIVPD %XMM14,%XMM6,%XMM9             | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 8\nVFMADD213PD (%RCX),%XMM7,%XMM9        | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 5       | 0.50\nVMOVUPS %XMM9,(%RCX)                  | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nLEA 0x1(%RDX),%RSI                    | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nADD $0x10,%RAX                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %RDX,%R10                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 2b18 <compute_accelerations+0xc8> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "7% of peak computational performance is used (1.14 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "80% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 75% of SSE/AVX loads are used in vector version.\n - 50% of SSE/AVX multiply instructions are used in vector version.\n - 57% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 43% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 22.00 to 7.00 cycles (3.14x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 6 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n9 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 25 FP arithmetical operations:\n - 12: addition or subtraction (6 inside FMA instructions)\n - 9: multiply (6 inside FMA instructions)\n - 2: divide\n - 2: square root\nThe binary loop is loading 56 bytes (7 double precision FP elements).\nThe binary loop is storing 16 bytes (2 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.35 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 28\nnb uops            : 27\nloop length        : 124\nused x86 registers : 8\nused mmx registers : 0\nused xmm registers : 15\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.50\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 7.00 cycles\nfront end            : 7.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 6.00 | 6.00 | 2.00 | 2.00 | 1.00 | 6.00 | 6.00 | 1.00\ncycles | 6.00 | 6.00 | 2.00 | 2.00 | 1.00 | 6.00 | 6.00 | 1.00\n\nCycles executing div or sqrt instructions: 16.00-22.00\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 7.00\nDispatch  : 6.00\nDIV/SQRT  : 16.00-22.00\nData deps.: 2.00\nOverall L1: 16.00-22.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 88%\nload    : 75%\nstore   : 100%\nmul     : 50%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 80%\nINT+FP\nall     : 80%\nload    : 75%\nstore   : 100%\nmul     : 50%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 57%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 47%\nload    : 43%\nstore   : 50%\nmul     : 37%\nadd-sub : 50%\nfma     : 50%\ndiv/sqrt: 50%\nother   : 45%\nINT+FP\nall     : 43%\nload    : 43%\nstore   : 50%\nmul     : 37%\nadd-sub : 50%\nfma     : 50%\ndiv/sqrt: 50%\nother   : 35%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 22.00 cycles. At this rate:\n - 3% of peak load performance is reached (2.55 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 2% of peak store performance is reached (0.73 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2b7f\n\nInstruction                           | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------\nCMP %ESI,%EDI                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 2b77 <compute_accelerations+0x127> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nVMOVUPD (%RAX),%XMM10                 | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVMOVUPD (%R8),%XMM0                   | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVMULSD (%R9,%RSI,8),%XMM3,%XMM5       | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 0.50\nVPERMILPD $0x3,%XMM10,%XMM13          | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVPERMILPD $0x3,%XMM0,%XMM12           | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVPERMILPD $0,%XMM10,%XMM8             | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVSUBPD %XMM13,%XMM12,%XMM14           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nVPERMILPD $0,%XMM0,%XMM1              | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVSUBPD %XMM0,%XMM10,%XMM7             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nVSUBPD %XMM8,%XMM1,%XMM11             | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nVMULPD %XMM14,%XMM14,%XMM15           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 0.50\nVMOVDDUP %XMM5,%XMM9                  | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0    | 1       | 1\nVFMADD231PD %XMM11,%XMM11,%XMM15      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVSQRTPD %XMM15,%XMM6                  | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 8-14\nVFMADD132PD %XMM6,%XMM2,%XMM15        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0    | 5       | 0.50\nVDIVPD %XMM15,%XMM9,%XMM10            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 10-14   | 8\nVFMADD213PD (%RCX),%XMM7,%XMM10       | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 5       | 0.50\nVMOVUPS %XMM10,(%RCX)                 | 1     | 0    | 0    | 0.33 | 0.33 | 1  | 0    | 0    | 0.33 | 3       | 1\nADD $0x10,%RAX                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nLEA 0x1(%RSI),%RDX                    | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nCMP %EDX,%EDI                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJE 2bde <compute_accelerations+0x18e> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nLEA 0x1(%RDX),%RSI                    | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nADD $0x10,%RAX                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %RDX,%R10                         | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJNE 2b18 <compute_accelerations+0xc8> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "7% of peak computational performance is used (1.14 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "80% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 75% of SSE/AVX loads are used in vector version.\n - 50% of SSE/AVX multiply instructions are used in vector version.\n - 57% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 43% of vector register length is used (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 22.00 to 7.00 cycles (3.14x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 6 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
    {
      hint = {
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop does not load or store any data.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 10\nnb uops            : 9\nloop length        : 33\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 2.25 cycles\nfront end            : 2.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 2.25 | 2.25 | 0.00 | 0.00 | 0.00 | 2.25 | 2.25 | 0.00\ncycles | 2.25 | 2.25 | 0.00 | 0.00 | 0.00 | 2.25 | 2.25 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 2.25\nDispatch  : 2.25\nData deps.: 2.00\nOverall L1: 2.25\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 18%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : 25%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 2.25 cycles. At this rate:\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2b7f\n\nInstruction                           | Nb FU | P0   | P1   | P2 | P3 | P4 | P5   | P6   | P7 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------\nCMP %ESI,%EDI                         | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nJE 2b77 <compute_accelerations+0x127> | 1     | 0.50 | 0    | 0  | 0  | 0  | 0    | 0.50 | 0  | 0       | 0.50-1\nADD $0x10,%RAX                        | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nLEA 0x1(%RSI),%RDX                    | 1     | 0    | 0.50 | 0  | 0  | 0  | 0.50 | 0    | 0  | 1       | 0.50\nCMP %EDX,%EDI                         | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nJE 2bde <compute_accelerations+0x18e> | 1     | 0.50 | 0    | 0  | 0  | 0  | 0    | 0.50 | 0  | 0       | 0.50-1\nLEA 0x1(%RDX),%RSI                    | 1     | 0    | 0.50 | 0  | 0  | 0  | 0.50 | 0    | 0  | 1       | 0.50\nADD $0x10,%RAX                        | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nCMP %RDX,%R10                         | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nJNE 2b18 <compute_accelerations+0xc8> | 1     | 0.50 | 0    | 0  | 0  | 0  | 0    | 0.50 | 0  | 0       | 0.50-1\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 18% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 2.25 to 0.34 cycles (6.55x speedup).",
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
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n9 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 25 FP arithmetical operations:\n - 12: addition or subtraction (6 inside FMA instructions)\n - 9: multiply (6 inside FMA instructions)\n - 2: divide\n - 2: square root\nThe binary loop is loading 56 bytes (7 double precision FP elements).\nThe binary loop is storing 16 bytes (2 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.35 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 28\nnb uops            : 27\nloop length        : 124\nused x86 registers : 7.25\nused mmx registers : 0\nused xmm registers : 11.25\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.50\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nmicro-operation queue: 7.00 cycles\nfront end            : 7.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 6.19 | 6.31 | 2.00 | 2.00 | 1.00 | 6.19 | 5.31 | 1.00\ncycles | 6.19 | 6.31 | 2.00 | 2.00 | 1.00 | 6.19 | 5.31 | 1.00\n\nCycles executing div or sqrt instructions: 16.00-22.00\nLongest recurrence chain latency (RecMII): 2.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 7.00\nDispatch  : 6.31\nDIV/SQRT  : 16.00-22.00\nData deps.: 2.00\nOverall L1: 16.56-22.56\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 0%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 88%\nload    : 75%\nstore   : 100%\nmul     : 50%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 80%\nINT+FP\nall     : 61%\nload    : 75%\nstore   : 100%\nmul     : 50%\nadd-sub : 75%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 45%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 14%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: 25%\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 47%\nload    : 43%\nstore   : 50%\nmul     : 37%\nadd-sub : 50%\nfma     : 50%\ndiv/sqrt: 50%\nother   : 45%\nINT+FP\nall     : 37%\nload    : 43%\nstore   : 50%\nmul     : 37%\nadd-sub : 43%\nfma     : 50%\ndiv/sqrt: 50%\nother   : 30%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 22.56 cycles. At this rate:\n - 2% of peak load performance is reached (1.91 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.55 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "5% of peak computational performance is used (0.85 out of 16.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "61% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n - 75% of SSE/AVX loads are used in vector version.\n - 75% of SSE/AVX addition or subtraction instructions are used in vector version.\n - 50% of SSE/AVX multiply instructions are used in vector version.\n - 45% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.\nSince your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 37% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 22.56 to 22.09 cycles (1.02x speedup).",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 6 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/madjid/Bureau/CHPS/Archi_Paralelle/TP2/todo/nbody0.c:64,80,88,141-144.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
      "This loop has 4 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 4,
  },
}
