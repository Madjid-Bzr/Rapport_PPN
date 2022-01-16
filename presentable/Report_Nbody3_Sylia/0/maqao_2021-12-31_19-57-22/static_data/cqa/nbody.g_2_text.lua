_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCVTSD2SS: 1 occurrences\n - VCVTSS2SD: 1 occurrences\n",
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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision.",
          details = " - VCVTSD2SS (FP64 to FP32, scalar): 1 occurrences\n - VCVTSS2SD (FP32 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "11 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n2 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 18 FP arithmetical operations:\n - 9: addition or subtraction (5 inside FMA instructions)\n - 7: multiply (5 inside FMA instructions)\n - 1: divide\n - 1: square root\nThe binary loop is loading 12 bytes (3 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 1.50 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 22\nnb uops            : 23\nloop length        : 97\nused x86 registers : 2\nused mmx registers : 0\nused xmm registers : 13\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 2.00\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 5.75 cycles\nfront end            : 5.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 7.50 | 7.50 | 1.50 | 1.50 | 0.00 | 2.00 | 2.00 | 0.00\ncycles | 7.50 | 7.50 | 1.50 | 1.50 | 0.00 | 2.00 | 2.00 | 0.00\n\nCycles executing div or sqrt instructions: 7.50-9.00\nLongest recurrence chain latency (RecMII): 4.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 5.75\nDispatch  : 7.50\nDIV/SQRT  : 7.50-9.00\nData deps.: 4.00\nOverall L1: 7.50-9.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 5%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 33%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 16%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 18%\nadd-sub : 12%\nfma     : 12%\ndiv/sqrt: 18%\nother   : 29%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 9.00 cycles. At this rate:\n - 2% of peak load performance is reached (1.33 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1660\n\nInstruction                     | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------\nVMOVSS 0x4(%RAX),%XMM3          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0       | 0.50\nVMOVSS 0x8(%RAX),%XMM2          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0       | 0.50\nVSUBSS %XMM9,%XMM3,%XMM3        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVMOVSS (%RAX),%XMM4             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0       | 0.50\nVSUBSS %XMM8,%XMM2,%XMM2        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVMULSS %XMM3,%XMM3,%XMM1        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVSUBSS %XMM10,%XMM4,%XMM4       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVMOVAPS %XMM2,%XMM14            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0       | 0.25\nVFMADD132SS %XMM2,%XMM12,%XMM14 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nADD $0x18,%RAX                  | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nVFMADD231SS %XMM4,%XMM4,%XMM1   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVADDSS %XMM14,%XMM1,%XMM1       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVCVTSS2SD %XMM1,%XMM1,%XMM1     | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 5       | 1\nVSQRTSD %XMM1,%XMM1,%XMM14      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 15-16   | 4.50-6\nVMULSD %XMM14,%XMM1,%XMM1       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVCVTSD2SS %XMM1,%XMM1,%XMM1     | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 5       | 1\nVDIVSS %XMM1,%XMM11,%XMM1       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 11      | 3\nVFMADD231SS %XMM1,%XMM4,%XMM5   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVFMADD231SS %XMM1,%XMM3,%XMM6   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVFMADD231SS %XMM1,%XMM2,%XMM7   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nCMP %RAX,%RSI                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nJNE 1660 <move_particles+0x50>  | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0  | 0       | 0.50-1\n",
        },
      },
      header = {
        "6% of peak computational performance is used (2.00 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 16% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 9.00 to 3.75 cycles (2.40x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact.\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 9.00 to 7.50 cycles (1.20x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 5 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCVTSD2SS: 1 occurrences\n - VCVTSS2SD: 1 occurrences\n",
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
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision.",
          details = " - VCVTSD2SS (FP64 to FP32, scalar): 1 occurrences\n - VCVTSS2SD (FP32 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "11 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n2 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 18 FP arithmetical operations:\n - 9: addition or subtraction (5 inside FMA instructions)\n - 7: multiply (5 inside FMA instructions)\n - 1: divide\n - 1: square root\nThe binary loop is loading 12 bytes (3 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 1.50 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 22\nnb uops            : 23\nloop length        : 97\nused x86 registers : 2\nused mmx registers : 0\nused xmm registers : 13\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 2.00\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 5.75 cycles\nfront end            : 5.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7\n--------------------------------------------------------------\nuops   | 7.50 | 7.50 | 1.50 | 1.50 | 0.00 | 2.00 | 2.00 | 0.00\ncycles | 7.50 | 7.50 | 1.50 | 1.50 | 0.00 | 2.00 | 2.00 | 0.00\n\nCycles executing div or sqrt instructions: 7.50-9.00\nLongest recurrence chain latency (RecMII): 4.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 5.75\nDispatch  : 7.50\nDIV/SQRT  : 7.50-9.00\nData deps.: 4.00\nOverall L1: 7.50-9.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 5%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 33%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 16%\nload    : 12%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 18%\nadd-sub : 12%\nfma     : 12%\ndiv/sqrt: 18%\nother   : 29%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 9.00 cycles. At this rate:\n - 2% of peak load performance is reached (1.33 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 1660\n\nInstruction                     | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7 | Latency | Recip. throughput\n-------------------------------------------------------------------------------------------------------------------------\nVMOVSS 0x4(%RAX),%XMM3          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0       | 0.50\nVMOVSS 0x8(%RAX),%XMM2          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0       | 0.50\nVSUBSS %XMM9,%XMM3,%XMM3        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVMOVSS (%RAX),%XMM4             | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0       | 0.50\nVSUBSS %XMM8,%XMM2,%XMM2        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVMULSS %XMM3,%XMM3,%XMM1        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVSUBSS %XMM10,%XMM4,%XMM4       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVMOVAPS %XMM2,%XMM14            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0       | 0.25\nVFMADD132SS %XMM2,%XMM12,%XMM14 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nADD $0x18,%RAX                  | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nVFMADD231SS %XMM4,%XMM4,%XMM1   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVADDSS %XMM14,%XMM1,%XMM1       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVCVTSS2SD %XMM1,%XMM1,%XMM1     | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 5       | 1\nVSQRTSD %XMM1,%XMM1,%XMM14      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 15-16   | 4.50-6\nVMULSD %XMM14,%XMM1,%XMM1       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVCVTSD2SS %XMM1,%XMM1,%XMM1     | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 5       | 1\nVDIVSS %XMM1,%XMM11,%XMM1       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 11      | 3\nVFMADD231SS %XMM1,%XMM4,%XMM5   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVFMADD231SS %XMM1,%XMM3,%XMM6   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nVFMADD231SS %XMM1,%XMM2,%XMM7   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 4       | 0.50\nCMP %RAX,%RSI                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nJNE 1660 <move_particles+0x50>  | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0  | 0       | 0.50-1\n",
        },
      },
      header = {
        "6% of peak computational performance is used (2.00 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 16% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 9.00 to 3.75 cycles (2.40x speedup).",
        },
        {
          workaround = "Reduce the number of division or square root instructions:\n - If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact.\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 9.00 to 7.50 cycles (1.20x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 5 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "",
    },
    nb_paths = 1,
  },
}
