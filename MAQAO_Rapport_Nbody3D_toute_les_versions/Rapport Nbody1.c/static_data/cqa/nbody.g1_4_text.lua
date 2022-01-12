_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCVTPD2PS: 4 occurrences\n - VCVTPS2PD: 4 occurrences\n - VRCP14PS: 2 occurrences\n - VSQRTPD: 4 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n 2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - VEXTRACTF32X8: 2 occurrences\n - VINSERTF64X4: 2 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 4 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = " - VCVTPD2PS (FP64 to FP32, SIMD): 4 occurrences\n - VCVTPS2PD (FP32 to FP64, SIMD): 4 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "30 AVX-512 instructions are processing arithmetic or math operations on single precision FP elements in vector mode (sixteen at a time).\n8 AVX-512 instructions are processing arithmetic or math operations on double precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 704 FP arithmetical operations:\n - 352: addition or subtraction (160 inside FMA instructions)\n - 288: multiply (160 inside FMA instructions)\n - 32: fast reciprocal\n - 32: square root\nThe binary loop is loading 384 bytes (96 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 1.83 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 61\nnb uops            : 80\nloop length        : 374\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 2\nused zmm registers : 17\nnb stack references: 0\nADD-SUB / MUL ratio: 1.20\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 16.00 cycles\nfront end            : 16.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4   | P5    | P6   | P7   | P8   | P9\n------------------------------------------------------------------------------\nuops   | 52.00 | 1.00 | 3.00 | 3.00 | 0.00 | 18.00 | 1.00 | 0.00 | 0.00 | 0.00\ncycles | 52.00 | 1.00 | 3.00 | 3.00 | 0.00 | 18.00 | 1.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: 72.00-96.00\nLongest recurrence chain latency (RecMII): 8.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.00\nDispatch  : 52.00\nDIV/SQRT  : 72.00-96.00\nData deps.: 8.00\nOverall L1: 72.00-96.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 100%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 93%\nload    : 100%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 100%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 71%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 96.00 cycles. At this rate:\n - 3% of peak load performance is reached (4.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 18d0\n\nInstruction                         | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7 | P8 | P9 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------------\nVMOVUPS (%RCX,%R9,1),%ZMM1          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVMOVUPS (%RSI,%R9,1),%ZMM2          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVSUBPS %ZMM12,%ZMM1,%ZMM22          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM13,%ZMM2,%ZMM21          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVUPS (%RDX,%R9,1),%ZMM2          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVSUBPS %ZMM11,%ZMM2,%ZMM23          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM22,%ZMM22,%ZMM2          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVAPS %ZMM23,%ZMM1                | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVFMADD132PS %ZMM23,%ZMM6,%ZMM1      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD231PS %ZMM21,%ZMM21,%ZMM2     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM1,%ZMM2,%ZMM2            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVEXTRACTF32X8 $0x1,%ZMM2,%YMM1      | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVCVTPS2PD %YMM2,%ZMM20              | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPS2PD %YMM1,%ZMM2               | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVSQRTPD %ZMM20,%ZMM1                | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 23-24   | 18-24\nVMULPD %ZMM20,%ZMM1,%ZMM1           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSQRTPD %ZMM2,%ZMM19                | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 23-24   | 18-24\nVMULPD %ZMM2,%ZMM19,%ZMM2           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVCVTPD2PS %ZMM1,%YMM1               | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPD2PS %ZMM2,%YMM2               | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVINSERTF64X4 $0x1,%YMM2,%ZMM1,%ZMM1 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVRCP14PS %ZMM1,%ZMM2                | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 4       | 2\nVMULPS %ZMM1,%ZMM2,%ZMM1            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM1,%ZMM2,%ZMM1            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM2,%ZMM2,%ZMM2            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM1,%ZMM2,%ZMM1            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVUPS 0x40(%RDX,%R9,1),%ZMM2      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVSUBPS %ZMM11,%ZMM2,%ZMM24          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM1,%ZMM14,%ZMM22     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVUPS 0x40(%RCX,%R9,1),%ZMM14     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVFMADD132PS %ZMM1,%ZMM15,%ZMM21     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVUPS 0x40(%RSI,%R9,1),%ZMM15     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVFMADD231PS %ZMM23,%ZMM1,%ZMM0      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nSUB $-0x80,%R9                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nVSUBPS %ZMM12,%ZMM14,%ZMM14         | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM13,%ZMM15,%ZMM15         | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVAPS %ZMM24,%ZMM1                | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVFMADD132PS %ZMM24,%ZMM6,%ZMM1      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM14,%ZMM14,%ZMM2          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD231PS %ZMM15,%ZMM15,%ZMM2     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM1,%ZMM2,%ZMM2            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVEXTRACTF32X8 $0x1,%ZMM2,%YMM1      | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVCVTPS2PD %YMM2,%ZMM25              | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPS2PD %YMM1,%ZMM2               | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVSQRTPD %ZMM25,%ZMM1                | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 23-24   | 18-24\nVMULPD %ZMM25,%ZMM1,%ZMM1           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSQRTPD %ZMM2,%ZMM26                | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 23-24   | 18-24\nVMULPD %ZMM2,%ZMM26,%ZMM2           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVCVTPD2PS %ZMM1,%YMM1               | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPD2PS %ZMM2,%YMM2               | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVINSERTF64X4 $0x1,%YMM2,%ZMM1,%ZMM1 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVRCP14PS %ZMM1,%ZMM2                | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 4       | 2\nVMULPS %ZMM1,%ZMM2,%ZMM1            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM1,%ZMM2,%ZMM1            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM2,%ZMM2,%ZMM2            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM1,%ZMM2,%ZMM1            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM1,%ZMM21,%ZMM15     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM1,%ZMM22,%ZMM14     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD231PS %ZMM24,%ZMM1,%ZMM0      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nCMP %R11,%R9                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nJNE 18d0 <move_particles+0x180>     | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0  | 0  | 0  | 0       | 0.50-1\n",
        },
      },
      header = {
        "11% of peak computational performance is used (7.33 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using 93% register length (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 96.00 to 52.00 cycles (1.85x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 160 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCVTPD2PS: 4 occurrences\n - VCVTPS2PD: 4 occurrences\n - VRCP14PS: 2 occurrences\n - VSQRTPD: 4 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "Use vector aligned instructions:\n 1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n 2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - VEXTRACTF32X8: 2 occurrences\n - VINSERTF64X4: 2 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 4 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = " - VCVTPD2PS (FP64 to FP32, SIMD): 4 occurrences\n - VCVTPS2PD (FP32 to FP64, SIMD): 4 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "30 AVX-512 instructions are processing arithmetic or math operations on single precision FP elements in vector mode (sixteen at a time).\n8 AVX-512 instructions are processing arithmetic or math operations on double precision FP elements in vector mode (eight at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 704 FP arithmetical operations:\n - 352: addition or subtraction (160 inside FMA instructions)\n - 288: multiply (160 inside FMA instructions)\n - 32: fast reciprocal\n - 32: square root\nThe binary loop is loading 384 bytes (96 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 1.83 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 61\nnb uops            : 80\nloop length        : 374\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 2\nused zmm registers : 17\nnb stack references: 0\nADD-SUB / MUL ratio: 1.20\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 16.00 cycles\nfront end            : 16.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1   | P2   | P3   | P4   | P5    | P6   | P7   | P8   | P9\n------------------------------------------------------------------------------\nuops   | 52.00 | 1.00 | 3.00 | 3.00 | 0.00 | 18.00 | 1.00 | 0.00 | 0.00 | 0.00\ncycles | 52.00 | 1.00 | 3.00 | 3.00 | 0.00 | 18.00 | 1.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: 72.00-96.00\nLongest recurrence chain latency (RecMII): 8.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.00\nDispatch  : 52.00\nDIV/SQRT  : 72.00-96.00\nData deps.: 8.00\nOverall L1: 72.00-96.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 100%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 93%\nload    : 100%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 100%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 71%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 96.00 cycles. At this rate:\n - 3% of peak load performance is reached (4.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 18d0\n\nInstruction                         | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7 | P8 | P9 | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------------\nVMOVUPS (%RCX,%R9,1),%ZMM1          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVMOVUPS (%RSI,%R9,1),%ZMM2          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVSUBPS %ZMM12,%ZMM1,%ZMM22          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM13,%ZMM2,%ZMM21          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVUPS (%RDX,%R9,1),%ZMM2          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVSUBPS %ZMM11,%ZMM2,%ZMM23          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM22,%ZMM22,%ZMM2          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVAPS %ZMM23,%ZMM1                | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVFMADD132PS %ZMM23,%ZMM6,%ZMM1      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD231PS %ZMM21,%ZMM21,%ZMM2     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM1,%ZMM2,%ZMM2            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVEXTRACTF32X8 $0x1,%ZMM2,%YMM1      | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVCVTPS2PD %YMM2,%ZMM20              | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPS2PD %YMM1,%ZMM2               | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVSQRTPD %ZMM20,%ZMM1                | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 23-24   | 18-24\nVMULPD %ZMM20,%ZMM1,%ZMM1           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSQRTPD %ZMM2,%ZMM19                | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 23-24   | 18-24\nVMULPD %ZMM2,%ZMM19,%ZMM2           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVCVTPD2PS %ZMM1,%YMM1               | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPD2PS %ZMM2,%YMM2               | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVINSERTF64X4 $0x1,%YMM2,%ZMM1,%ZMM1 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVRCP14PS %ZMM1,%ZMM2                | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 4       | 2\nVMULPS %ZMM1,%ZMM2,%ZMM1            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM1,%ZMM2,%ZMM1            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM2,%ZMM2,%ZMM2            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM1,%ZMM2,%ZMM1            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVUPS 0x40(%RDX,%R9,1),%ZMM2      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVSUBPS %ZMM11,%ZMM2,%ZMM24          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM1,%ZMM14,%ZMM22     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVUPS 0x40(%RCX,%R9,1),%ZMM14     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVFMADD132PS %ZMM1,%ZMM15,%ZMM21     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVUPS 0x40(%RSI,%R9,1),%ZMM15     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVFMADD231PS %ZMM23,%ZMM1,%ZMM0      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nSUB $-0x80,%R9                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nVSUBPS %ZMM12,%ZMM14,%ZMM14         | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM13,%ZMM15,%ZMM15         | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMOVAPS %ZMM24,%ZMM1                | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVFMADD132PS %ZMM24,%ZMM6,%ZMM1      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM14,%ZMM14,%ZMM2          | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD231PS %ZMM15,%ZMM15,%ZMM2     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM1,%ZMM2,%ZMM2            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVEXTRACTF32X8 $0x1,%ZMM2,%YMM1      | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVCVTPS2PD %YMM2,%ZMM25              | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPS2PD %YMM1,%ZMM2               | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVSQRTPD %ZMM25,%ZMM1                | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 23-24   | 18-24\nVMULPD %ZMM25,%ZMM1,%ZMM1           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSQRTPD %ZMM2,%ZMM26                | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 23-24   | 18-24\nVMULPD %ZMM2,%ZMM26,%ZMM2           | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVCVTPD2PS %ZMM1,%YMM1               | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPD2PS %ZMM2,%YMM2               | 2     | 1    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVINSERTF64X4 $0x1,%YMM2,%ZMM1,%ZMM1 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVRCP14PS %ZMM1,%ZMM2                | 3     | 2.50 | 0    | 0    | 0    | 0  | 0.50 | 0    | 0  | 0  | 0  | 4       | 2\nVMULPS %ZMM1,%ZMM2,%ZMM1            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %ZMM1,%ZMM2,%ZMM1            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVADDPS %ZMM2,%ZMM2,%ZMM2            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVSUBPS %ZMM1,%ZMM2,%ZMM1            | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM1,%ZMM21,%ZMM15     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD132PS %ZMM1,%ZMM22,%ZMM14     | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVFMADD231PS %ZMM24,%ZMM1,%ZMM0      | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nCMP %R11,%R9                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nJNE 18d0 <move_particles+0x180>     | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0  | 0  | 0  | 0       | 0.50-1\n",
        },
      },
      header = {
        "11% of peak computational performance is used (7.33 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using 93% register length (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 96.00 to 52.00 cycles (1.85x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 160 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/anism/Bureau/nbody3D/0/nbody1.c:60-73.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
