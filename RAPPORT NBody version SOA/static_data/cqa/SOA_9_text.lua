_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 6 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "52 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 52 FP arithmetical operations:\n - 24: addition or subtraction\n - 20: multiply\n - 4: divide\n - 4: square root\nThe binary loop is loading 224 bytes (28 double precision FP elements).\nThe binary loop is storing 32 bytes (4 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.20 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 92\nnb uops            : 91\nloop length        : 460\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 16\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.20\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 18.20 cycles\nfront end            : 18.20 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5   | P6   | P7   | P8   | P9\n--------------------------------------------------------------------------------\nuops   | 26.00 | 26.00 | 14.00 | 14.00 | 2.00 | 3.50 | 3.50 | 2.00 | 2.00 | 2.00\ncycles | 26.00 | 26.00 | 14.00 | 14.00 | 2.00 | 3.50 | 3.50 | 2.00 | 2.00 | 2.00\n\nCycles executing div or sqrt instructions: 34.00-40.00\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 18.20\nDispatch  : 26.00\nDIV/SQRT  : 34.00-40.00\nData deps.: 0.00\nOverall L1: 34.00-40.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 14%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 13%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 85%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 14%\nload    : 12%\nstore   : 12%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 25%\nINT+FP\nall     : 14%\nload    : 12%\nstore   : 12%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 22%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 40.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.60 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.80 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2474\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------------------------\nCMP %ECX,%EAX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJE 2470 <compute_accelerations+0x220>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOVSD (%RDI,%RAX,8),%XMM12             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RDI,%RCX,8),%XMM13             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RSI,%RAX,8),%XMM15             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%RSI,%RCX,8),%XMM15             | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM12,%XMM14                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVSD (%R10,%RCX,8),%XMM0              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD %XMM13,%XMM14                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD 0x3c68(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nSUBSD %XMM12,%XMM13                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD %XMM15,%XMM15                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMULSD %XMM14,%XMM14                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM15,%XMM14                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM14,%XMM4                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM4,%XMM4                     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-19   | 4.50-6\nMULSD %XMM4,%XMM14                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM1,%XMM14                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nDIVSD %XMM14,%XMM0                     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-15   | 4\nMOVAPD %XMM0,%XMM3                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM13,%XMM3                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD (%R9),%XMM3                      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVSD %XMM3,(%R9)                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOVSD (%RSI,%RAX,8),%XMM6              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RSI,%RCX,8),%XMM7              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RDI,%RAX,8),%XMM5              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%RDI,%RCX,8),%XMM5              | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM6,%XMM8                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVSD (%R10,%RCX,8),%XMM0              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD %XMM7,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD 0x3bfd(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nSUBSD %XMM6,%XMM7                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD %XMM5,%XMM5                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMULSD %XMM8,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM5,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM8,%XMM9                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM9,%XMM9                     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-19   | 4.50-6\nMULSD %XMM9,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM1,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nDIVSD %XMM8,%XMM0                      | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-15   | 4\nMOVAPD %XMM0,%XMM2                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM7,%XMM2                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD (%R8),%XMM2                      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVSD %XMM2,(%R8)                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nLEA 0x1(%RCX),%RDX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCMP %EDX,%EAX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJE 254f <compute_accelerations+0x2ff>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOVSD (%RDI,%RAX,8),%XMM14             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RDI,%RDX,8),%XMM15             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RSI,%RAX,8),%XMM3              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%RSI,%RDX,8),%XMM3              | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM14,%XMM4                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVSD (%R10,%RDX,8),%XMM0              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD %XMM15,%XMM4                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD 0x3b86(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nSUBSD %XMM14,%XMM15                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD %XMM3,%XMM3                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMULSD %XMM4,%XMM4                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM3,%XMM4                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM4,%XMM5                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM5,%XMM5                     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-19   | 4.50-6\nMULSD %XMM5,%XMM4                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM1,%XMM4                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nDIVSD %XMM4,%XMM0                      | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-15   | 4\nMOVAPD %XMM0,%XMM2                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM15,%XMM2                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD (%R9),%XMM2                      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVSD %XMM2,(%R9)                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOVSD (%RSI,%RAX,8),%XMM7              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RDI,%RAX,8),%XMM6              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RSI,%RDX,8),%XMM8              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%RDI,%RDX,8),%XMM6              | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM7,%XMM9                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVSD (%R10,%RDX,8),%XMM0              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD %XMM8,%XMM9                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD 0x3b21(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nSUBSD %XMM7,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD %XMM6,%XMM6                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMULSD %XMM9,%XMM9                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM6,%XMM9                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM9,%XMM10                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM10,%XMM10                   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-19   | 4.50-6\nMULSD %XMM10,%XMM9                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM1,%XMM9                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nDIVSD %XMM9,%XMM0                      | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-15   | 4\nMOVAPD %XMM0,%XMM11                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM8,%XMM11                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD (%R8),%XMM11                     | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVSD %XMM11,(%R8)                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nLEA 0x1(%RDX),%RCX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCMP %RDX,%R11                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJNE 2390 <compute_accelerations+0x140> | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "4% of peak computational performance is used (1.30 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 14% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 40.00 to 10.00 cycles (4.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 40.00 to 26.00 cycles (1.54x speedup).\n",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=tigerlake.\nCQA target is Tiger_lake_8c (11th generation Intel Core processors based on Tiger Lake microarchitecture) but specialization flags are -march=x86-64\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 3 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "26 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 26 FP arithmetical operations:\n - 12: addition or subtraction\n - 10: multiply\n - 2: divide\n - 2: square root\nThe binary loop is loading 112 bytes (14 double precision FP elements).\nThe binary loop is storing 16 bytes (2 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.20 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 50\nnb uops            : 49\nloop length        : 244\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.20\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 9.80 cycles\nfront end            : 9.80 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n------------------------------------------------------------------------------\nuops   | 13.00 | 13.00 | 7.00 | 7.00 | 1.00 | 3.50 | 3.50 | 1.00 | 1.00 | 1.00\ncycles | 13.00 | 13.00 | 7.00 | 7.00 | 1.00 | 3.50 | 3.50 | 1.00 | 1.00 | 1.00\n\nCycles executing div or sqrt instructions: 17.00-20.00\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 9.80\nDispatch  : 13.00\nDIV/SQRT  : 17.00-20.00\nData deps.: 0.00\nOverall L1: 17.00-20.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 14%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 13%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 75%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 14%\nload    : 12%\nstore   : 12%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 25%\nINT+FP\nall     : 13%\nload    : 12%\nstore   : 12%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 20%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.60 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.80 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2474\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------------------------\nCMP %ECX,%EAX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJE 2470 <compute_accelerations+0x220>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nLEA 0x1(%RCX),%RDX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCMP %EDX,%EAX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJE 254f <compute_accelerations+0x2ff>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOVSD (%RDI,%RAX,8),%XMM14             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RDI,%RDX,8),%XMM15             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RSI,%RAX,8),%XMM3              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%RSI,%RDX,8),%XMM3              | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM14,%XMM4                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVSD (%R10,%RDX,8),%XMM0              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD %XMM15,%XMM4                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD 0x3b86(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nSUBSD %XMM14,%XMM15                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD %XMM3,%XMM3                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMULSD %XMM4,%XMM4                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM3,%XMM4                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM4,%XMM5                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM5,%XMM5                     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-19   | 4.50-6\nMULSD %XMM5,%XMM4                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM1,%XMM4                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nDIVSD %XMM4,%XMM0                      | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-15   | 4\nMOVAPD %XMM0,%XMM2                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM15,%XMM2                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD (%R9),%XMM2                      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVSD %XMM2,(%R9)                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOVSD (%RSI,%RAX,8),%XMM7              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RDI,%RAX,8),%XMM6              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RSI,%RDX,8),%XMM8              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%RDI,%RDX,8),%XMM6              | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM7,%XMM9                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVSD (%R10,%RDX,8),%XMM0              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD %XMM8,%XMM9                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD 0x3b21(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nSUBSD %XMM7,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD %XMM6,%XMM6                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMULSD %XMM9,%XMM9                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM6,%XMM9                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM9,%XMM10                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM10,%XMM10                   | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-19   | 4.50-6\nMULSD %XMM10,%XMM9                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM1,%XMM9                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nDIVSD %XMM9,%XMM0                      | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-15   | 4\nMOVAPD %XMM0,%XMM11                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM8,%XMM11                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD (%R8),%XMM11                     | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVSD %XMM11,(%R8)                     | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nLEA 0x1(%RDX),%RCX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCMP %RDX,%R11                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJNE 2390 <compute_accelerations+0x140> | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "4% of peak computational performance is used (1.30 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 20.00 to 5.00 cycles (4.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 20.00 to 13.00 cycles (1.54x speedup).\n",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=tigerlake.\nCQA target is Tiger_lake_8c (11th generation Intel Core processors based on Tiger Lake microarchitecture) but specialization flags are -march=x86-64\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 3 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "26 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 26 FP arithmetical operations:\n - 12: addition or subtraction\n - 10: multiply\n - 2: divide\n - 2: square root\nThe binary loop is loading 112 bytes (14 double precision FP elements).\nThe binary loop is storing 16 bytes (2 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.20 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 50\nnb uops            : 49\nloop length        : 249\nused x86 registers : 9\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.20\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 9.80 cycles\nfront end            : 9.80 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n------------------------------------------------------------------------------\nuops   | 13.00 | 13.00 | 7.00 | 7.00 | 1.00 | 3.50 | 3.50 | 1.00 | 1.00 | 1.00\ncycles | 13.00 | 13.00 | 7.00 | 7.00 | 1.00 | 3.50 | 3.50 | 1.00 | 1.00 | 1.00\n\nCycles executing div or sqrt instructions: 17.00-20.00\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 9.80\nDispatch  : 13.00\nDIV/SQRT  : 17.00-20.00\nData deps.: 0.00\nOverall L1: 17.00-20.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 14%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 13%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 75%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 14%\nload    : 12%\nstore   : 12%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 25%\nINT+FP\nall     : 13%\nload    : 12%\nstore   : 12%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 20%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.00 cycles. At this rate:\n - 4% of peak load performance is reached (5.60 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 1% of peak store performance is reached (0.80 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2474\n\nInstruction                            | Nb FU | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9   | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------------------------\nCMP %ECX,%EAX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJE 2470 <compute_accelerations+0x220>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nMOVSD (%RDI,%RAX,8),%XMM12             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RDI,%RCX,8),%XMM13             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RSI,%RAX,8),%XMM15             | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%RSI,%RCX,8),%XMM15             | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM12,%XMM14                   | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVSD (%R10,%RCX,8),%XMM0              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD %XMM13,%XMM14                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD 0x3c68(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nSUBSD %XMM12,%XMM13                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD %XMM15,%XMM15                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMULSD %XMM14,%XMM14                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM15,%XMM14                    | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM14,%XMM4                    | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM4,%XMM4                     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-19   | 4.50-6\nMULSD %XMM4,%XMM14                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM1,%XMM14                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nDIVSD %XMM14,%XMM0                     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-15   | 4\nMOVAPD %XMM0,%XMM3                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM13,%XMM3                     | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD (%R9),%XMM3                      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVSD %XMM3,(%R9)                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nMOVSD (%RSI,%RAX,8),%XMM6              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RSI,%RCX,8),%XMM7              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nMOVSD (%RDI,%RAX,8),%XMM5              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD (%RDI,%RCX,8),%XMM5              | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM6,%XMM8                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMOVSD (%R10,%RCX,8),%XMM0              | 1     | 0    | 0    | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.50\nSUBSD %XMM7,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD 0x3bfd(%RIP),%XMM0               | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nSUBSD %XMM6,%XMM7                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMULSD %XMM5,%XMM5                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nMULSD %XMM8,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM5,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVAPD %XMM8,%XMM9                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nSQRTSD %XMM9,%XMM9                     | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-19   | 4.50-6\nMULSD %XMM9,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD %XMM1,%XMM8                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nDIVSD %XMM8,%XMM0                      | 1     | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 13-15   | 4\nMOVAPD %XMM0,%XMM2                     | 1     | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0       | 0.25\nMULSD %XMM7,%XMM2                      | 1     | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 0.50\nADDSD (%R8),%XMM2                      | 1     | 0.50 | 0.50 | 0.50 | 0.50 | 0    | 0    | 0    | 0    | 0    | 0    | 4       | 1\nMOVSD %XMM2,(%R8)                      | 1     | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0.50 | 0.50 | 0.50 | 3       | 0.50\nLEA 0x1(%RCX),%RDX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCMP %EDX,%EAX                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJE 254f <compute_accelerations+0x2ff>  | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\nLEA 0x1(%RDX),%RCX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nCMP %RDX,%R11                          | 1     | 0.25 | 0.25 | 0    | 0    | 0    | 0.25 | 0.25 | 0    | 0    | 0    | 1       | 0.25\nJNE 2390 <compute_accelerations+0x140> | 1     | 0.50 | 0    | 0    | 0    | 0    | 0    | 0.50 | 0    | 0    | 0    | 0       | 0.50-1\n",
        },
      },
      header = {
        "4% of peak computational performance is used (1.30 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 13% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 20.00 to 5.00 cycles (4.00x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - Check whether you really need double precision. If not, switch to single precision to speedup execution\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 20.00 to 13.00 cycles (1.54x speedup).\n",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=tigerlake.\nCQA target is Tiger_lake_8c (11th generation Intel Core processors based on Tiger Lake microarchitecture) but specialization flags are -march=x86-64\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
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
          txt = "nb instructions    : 8\nnb uops            : 7\nloop length        : 33\nused x86 registers : 4\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 1.40 cycles\nfront end            : 1.40 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1   | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n----------------------------------------------------------------------------\nuops   | 1.75 | 1.75 | 0.00 | 0.00 | 0.00 | 1.75 | 1.75 | 0.00 | 0.00 | 0.00\ncycles | 1.75 | 1.75 | 0.00 | 0.00 | 0.00 | 1.75 | 1.75 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 1.40\nDispatch  : 1.75\nData deps.: 0.00\nOverall L1: 1.75\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 6%\nload    : NA (no load vectorizable/vectorized instructions)\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : NA (no mul vectorizable/vectorized instructions)\nadd-sub : NA (no add-sub vectorizable/vectorized instructions)\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 6%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 1.75 cycles. At this rate:\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 2474\n\nInstruction                            | Nb FU | P0   | P1   | P2 | P3 | P4 | P5   | P6   | P7 | P8 | P9 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------------\nCMP %ECX,%EAX                          | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nJE 2470 <compute_accelerations+0x220>  | 1     | 0.50 | 0    | 0  | 0  | 0  | 0    | 0.50 | 0  | 0  | 0  | 0       | 0.50-1\nLEA 0x1(%RCX),%RDX                     | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nCMP %EDX,%EAX                          | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nJE 254f <compute_accelerations+0x2ff>  | 1     | 0.50 | 0    | 0  | 0  | 0  | 0    | 0.50 | 0  | 0  | 0  | 0       | 0.50-1\nLEA 0x1(%RDX),%RCX                     | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nCMP %RDX,%R11                          | 1     | 0.25 | 0.25 | 0  | 0  | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nJNE 2390 <compute_accelerations+0x140> | 1     | 0.50 | 0    | 0  | 0  | 0  | 0    | 0.50 | 0  | 0  | 0  | 0       | 0.50-1\n",
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
          txt = "Your loop is not vectorized.\n16 data elements could be processed at once in vector registers.\nBy vectorizing your loop, you can lower the cost of an iteration from 1.75 to 0.11 cycles (16.00x speedup).",
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
          txt = "26 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 26 FP arithmetical operations:\n - 12: addition or subtraction\n - 10: multiply\n - 2: divide\n - 2: square root\nThe binary loop is loading 112 bytes (14 double precision FP elements).\nThe binary loop is storing 16 bytes (2 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.20 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 50\nnb uops            : 49\nloop length        : 246.50\nused x86 registers : 7.75\nused mmx registers : 0\nused xmm registers : 11\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.20\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nmicro-operation queue: 9.80 cycles\nfront end            : 9.80 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n------------------------------------------------------------------------------\nuops   | 13.44 | 13.44 | 7.00 | 7.00 | 1.00 | 3.06 | 3.06 | 1.00 | 1.00 | 1.00\ncycles | 13.44 | 13.44 | 7.00 | 7.00 | 1.00 | 3.06 | 3.06 | 1.00 | 1.00 | 1.00\n\nCycles executing div or sqrt instructions: 17.00-20.00\nLongest recurrence chain latency (RecMII): 0.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 9.80\nDispatch  : 13.44\nDIV/SQRT  : 17.00-20.00\nData deps.: 0.00\nOverall L1: 17.44-20.44\n",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\nall    : 0%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 0%\nFP\nall     : 14%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 100%\nINT+FP\nall     : 10%\nload    : 0%\nstore   : 0%\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 0%\nother   : 58%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\nall    : 6%\nload   : NA (no load vectorizable/vectorized instructions)\nstore  : NA (no store vectorizable/vectorized instructions)\nmul    : NA (no mul vectorizable/vectorized instructions)\nadd-sub: NA (no add-sub vectorizable/vectorized instructions)\nfma    : NA (no fma vectorizable/vectorized instructions)\nother  : 6%\nFP\nall     : 14%\nload    : 12%\nstore   : 12%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 25%\nINT+FP\nall     : 12%\nload    : 12%\nstore   : 12%\nmul     : 12%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: 12%\nother   : 17%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 20.44 cycles. At this rate:\n - 3% of peak load performance is reached (4.20 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.60 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "3% of peak computational performance is used (0.98 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 12% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 20.44 to 5.03 cycles (4.07x speedup).",
        },
      },
      potential = {
        {
          workaround = " - Recompile with march=tigerlake.\nCQA target is Tiger_lake_8c (11th generation Intel Core processors based on Tiger Lake microarchitecture) but specialization flags are -march=x86-64\n - Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).\n",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/anism/Bureau/Test Nbody/SOA.c:151-165.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
      "This loop has 4 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = (x<0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 4,
  },
}
