_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - ADD: 1 occurrences\n - VCVTSD2SS: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision. Usual math.h functions are double precision and their name needs to be suffixed with 'f' to use their single precision version which is faster and avoids type conversion. For instance, on single precision elements, call expf instead of exp.",
          details = " - VCVTSD2SS (FP64 to FP32, scalar): 1 occurrences\n - VCVTSS2SD (FP32 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "20 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 20 FP arithmetical operations:\n - 9: addition or subtraction\n - 8: multiply\n - 3: divide\nThe binary loop is loading 220 bytes (55 single precision FP elements).\nThe binary loop is storing 44 bytes (11 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.08 FP operations per loaded or stored byte.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 80\nnb uops            : 82\nloop length        : 357\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 16\nADD-SUB / MUL ratio: 1.13\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 16.40 cycles\nfront end            : 16.40 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6   | P7   | P8   | P9\n--------------------------------------------------------------------------------\nuops   | 12.50 | 12.00 | 20.00 | 20.00 | 5.50 | 8.25 | 8.25 | 5.50 | 5.50 | 5.50\ncycles | 12.50 | 12.00 | 20.00 | 20.00 | 5.50 | 8.25 | 8.25 | 5.50 | 5.50 | 5.50\n\nCycles executing div or sqrt instructions: 9.00\nLongest recurrence chain latency (RecMII): 5.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.40\nDispatch  : 20.00\nDIV/SQRT  : 9.00\nData deps.: 5.00\nOverall L1: 20.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 6%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 9%\nINT+FP\nall     : 7%\nload    : 7%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n - 8% of peak load performance is reached (11.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 3% of peak store performance is reached (2.20 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 18c6\n\nInstruction                       | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------------------\nMOV 0x10(%RBP),%RDX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x10(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nSAL $0x2,%RAX                     | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 1       | 0.50\nADD %RDX,%RAX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS (%RAX),%XMM0               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOV 0x10(%RBP),%RDX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x18(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nSAL $0x2,%RAX                     | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 1       | 0.50\nADD %RDX,%RAX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS (%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS %XMM1,%XMM0,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x30(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV 0x18(%RBP),%RDX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x10(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nSAL $0x2,%RAX                     | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 1       | 0.50\nADD %RDX,%RAX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS (%RAX),%XMM0               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOV 0x18(%RBP),%RDX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x18(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nSAL $0x2,%RAX                     | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 1       | 0.50\nADD %RDX,%RAX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS (%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS %XMM1,%XMM0,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x2c(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV 0x20(%RBP),%RDX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x10(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nSAL $0x2,%RAX                     | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 1       | 0.50\nADD %RDX,%RAX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS (%RAX),%XMM0               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOV 0x20(%RBP),%RDX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x18(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nSAL $0x2,%RAX                     | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 1       | 0.50\nADD %RDX,%RAX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS (%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS %XMM1,%XMM0,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x28(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS -0x30(%RBP),%XMM0          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMULSS %XMM0,%XMM0,%XMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x2c(%RBP),%XMM0          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMULSS %XMM0,%XMM0,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVADDSS %XMM0,%XMM1,%XMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x28(%RBP),%XMM0          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMULSS %XMM0,%XMM0,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVADDSS %XMM0,%XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x34(%RBP),%XMM1          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVADDSS %XMM0,%XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x24(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVCVTSS2SD -0x24(%RBP),%XMM2,%XMM2 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 5       | 0.50\nVMOVQ %XMM2,%RAX                  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 1\nVMOVQ %RAX,%XMM0                  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 1       | 1\nCALL 1160 <.plt.sec@start+0x80>   | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nVCVTSD2SS %XMM0,%XMM0,%XMM0       | 2     | 0.50 | 0.50 | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 5       | 1\nVMOVSS %XMM0,-0x20(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS -0x20(%RBP),%XMM0          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMULSS %XMM0,%XMM0,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x20(%RBP),%XMM1          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMULSS %XMM0,%XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x1c(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS 0x18bf(%RIP),%XMM0         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVDIVSS -0x1c(%RBP),%XMM0,%XMM0    | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 11      | 3\nVMULSS -0x30(%RBP),%XMM0,%XMM0    | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x40(%RBP),%XMM1          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVADDSS %XMM0,%XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x40(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS 0x189f(%RIP),%XMM0         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVDIVSS -0x1c(%RBP),%XMM0,%XMM0    | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 11      | 3\nVMULSS -0x2c(%RBP),%XMM0,%XMM0    | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x3c(%RBP),%XMM1          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVADDSS %XMM0,%XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x3c(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS 0x187f(%RIP),%XMM0         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVDIVSS -0x1c(%RBP),%XMM0,%XMM0    | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 11      | 3\nVMULSS -0x28(%RBP),%XMM0,%XMM0    | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x38(%RBP),%XMM1          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVADDSS %XMM0,%XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x38(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nADDQ $0x1,-0x10(%RBP)             | 2     | 0.50 | 0.50 | 0.50 | 0.50 | 0.50 | 0.50 | 0.50 | 0.50 | 0.50 | 0.50 | 5       | 0.50\nMOV -0x10(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nCMP -0x50(%RBP),%RAX              | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.50\nJB 176f <move_particles+0x57>     | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "1% of peak computational performance is used (1.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 20.00 to 16.50 cycles (1.21x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 7% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 20.00 to 1.47 cycles (13.62x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by reading data from caches/RAM (load units are a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 20.00 to 16.40 cycles (1.22x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n - unknown: 1 occurrences\n",
          title = "CALL instructions",
          txt = "Detected function call instructions.\n",
        },
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - ADD: 1 occurrences\n - VCVTSD2SS: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision. Usual math.h functions are double precision and their name needs to be suffixed with 'f' to use their single precision version which is faster and avoids type conversion. For instance, on single precision elements, call expf instead of exp.",
          details = " - VCVTSD2SS (FP64 to FP32, scalar): 1 occurrences\n - VCVTSS2SD (FP32 to FP64, scalar): 1 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "20 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 20 FP arithmetical operations:\n - 9: addition or subtraction\n - 8: multiply\n - 3: divide\nThe binary loop is loading 220 bytes (55 single precision FP elements).\nThe binary loop is storing 44 bytes (11 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.08 FP operations per loaded or stored byte.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 80\nnb uops            : 82\nloop length        : 357\nused x86 registers : 3\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 16\nADD-SUB / MUL ratio: 1.13\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 16.40 cycles\nfront end            : 16.40 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6   | P7   | P8   | P9\n--------------------------------------------------------------------------------\nuops   | 12.50 | 12.00 | 20.00 | 20.00 | 5.50 | 8.25 | 8.25 | 5.50 | 5.50 | 5.50\ncycles | 12.50 | 12.00 | 20.00 | 20.00 | 5.50 | 8.25 | 8.25 | 5.50 | 5.50 | 5.50\n\nCycles executing div or sqrt instructions: 9.00\nLongest recurrence chain latency (RecMII): 5.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.40\nDispatch  : 20.00\nDIV/SQRT  : 9.00\nData deps.: 5.00\nOverall L1: 20.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : 0%\nstore  : 0%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\nINT+FP\nall     : 0%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 12%\nload   : 12%\nstore  : 12%\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 12%\nFP\nall     : 6%\nload    : 6%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 9%\nINT+FP\nall     : 7%\nload    : 7%\nstore   : 6%\nmul     : 6%\nadd-sub : 6%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 6%\nother   : 10%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n - 8% of peak load performance is reached (11.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 3% of peak store performance is reached (2.20 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 18c6\n\nInstruction                       | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9   | Latency | Recip. throughput\n---------------------------------------------------------------------------------------------------------------------------------------------\nMOV 0x10(%RBP),%RDX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x10(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nSAL $0x2,%RAX                     | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 1       | 0.50\nADD %RDX,%RAX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS (%RAX),%XMM0               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOV 0x10(%RBP),%RDX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x18(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nSAL $0x2,%RAX                     | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 1       | 0.50\nADD %RDX,%RAX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS (%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS %XMM1,%XMM0,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x30(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV 0x18(%RBP),%RDX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x10(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nSAL $0x2,%RAX                     | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 1       | 0.50\nADD %RDX,%RAX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS (%RAX),%XMM0               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOV 0x18(%RBP),%RDX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x18(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nSAL $0x2,%RAX                     | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 1       | 0.50\nADD %RDX,%RAX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS (%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS %XMM1,%XMM0,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x2c(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOV 0x20(%RBP),%RDX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x10(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nSAL $0x2,%RAX                     | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 1       | 0.50\nADD %RDX,%RAX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS (%RAX),%XMM0               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOV 0x20(%RBP),%RDX               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nMOV -0x18(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nSAL $0x2,%RAX                     | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 1       | 0.50\nADD %RDX,%RAX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nVMOVSS (%RAX),%XMM1               | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVSUBSS %XMM1,%XMM0,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x28(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS -0x30(%RBP),%XMM0          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMULSS %XMM0,%XMM0,%XMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x2c(%RBP),%XMM0          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMULSS %XMM0,%XMM0,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVADDSS %XMM0,%XMM1,%XMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x28(%RBP),%XMM0          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMULSS %XMM0,%XMM0,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVADDSS %XMM0,%XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x34(%RBP),%XMM1          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVADDSS %XMM0,%XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x24(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVCVTSS2SD -0x24(%RBP),%XMM2,%XMM2 | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 5       | 0.50\nVMOVQ %XMM2,%RAX                  | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 1\nVMOVQ %RAX,%XMM0                  | 1     | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 1       | 1\nCALL 1160 <.plt.sec@start+0x80>   | 2     | 0    | 0    | 0    | 0    | 0.50 | 0    | 1    | 0.50 | 0.50 | 0.50 | 0       | 2\nVCVTSD2SS %XMM0,%XMM0,%XMM0       | 2     | 0.50 | 0.50 | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 5       | 1\nVMOVSS %XMM0,-0x20(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS -0x20(%RBP),%XMM0          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMULSS %XMM0,%XMM0,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x20(%RBP),%XMM1          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVMULSS %XMM0,%XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x1c(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS 0x18bf(%RIP),%XMM0         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVDIVSS -0x1c(%RBP),%XMM0,%XMM0    | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 11      | 3\nVMULSS -0x30(%RBP),%XMM0,%XMM0    | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x40(%RBP),%XMM1          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVADDSS %XMM0,%XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x40(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS 0x189f(%RIP),%XMM0         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVDIVSS -0x1c(%RBP),%XMM0,%XMM0    | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 11      | 3\nVMULSS -0x2c(%RBP),%XMM0,%XMM0    | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x3c(%RBP),%XMM1          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVADDSS %XMM0,%XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x3c(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nVMOVSS 0x187f(%RIP),%XMM0         | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVDIVSS -0x1c(%RBP),%XMM0,%XMM0    | 1     | 1    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 11      | 3\nVMULSS -0x28(%RBP),%XMM0,%XMM0    | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS -0x38(%RBP),%XMM1          | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nVADDSS %XMM0,%XMM1,%XMM0          | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nVMOVSS %XMM0,-0x38(%RBP)          | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nADDQ $0x1,-0x10(%RBP)             | 2     | 0.50 | 0.50 | 0.50 | 0.50 | 0.50 | 0.50 | 0.50 | 0.50 | 0.50 | 0.50 | 5       | 0.50\nMOV -0x10(%RBP),%RAX              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 2       | 0.50\nCMP -0x50(%RBP),%RAX              | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.50\nJB 176f <move_particles+0x57>     | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50\n",
        },
      },
      header = {
        "Warnings:\nDetected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.",
        "1% of peak computational performance is used (1.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          title = "Code clean check",
          txt = "Detected a slowdown caused by scalar integer instructions (typically used for address computation).\nBy removing them, you can lower the cost of an iteration from 20.00 to 16.50 cycles (1.21x speedup).",
        },
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 7% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 20.00 to 1.47 cycles (13.62x speedup).",
        },
        {
          workaround = " - Read less array elements\n - Provide more information to your compiler:\n  * hardcode the bounds of the corresponding 'for' loop\n  * use the 'restrict' C99 keyword\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by reading data from caches/RAM (load units are a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 20.00 to 16.40 cycles (1.22x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/anism/Bureau/Comparaison/nbody.c:89-103.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
