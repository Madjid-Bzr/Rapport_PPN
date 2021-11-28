_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 7 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 220 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 64\nnb uops            : 63\nloop length        : 324\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 28\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 15.75 cycles\nfront end            : 15.75 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1    | P2    | P3    | P4   | P5   | P6   | P7\n-----------------------------------------------------------------\nuops   | 9.00 | 15.00 | 14.00 | 14.00 | 0.00 | 9.00 | 9.00 | 0.00\ncycles | 9.00 | 15.00 | 14.00 | 14.00 | 0.00 | 9.00 | 9.00 | 0.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 15.75\nDispatch  : 15.00\nData deps.: 1.00\nOverall L1: 15.75\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 22%\nload    : 22%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 25%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 15.75 cycles. At this rate:\n - 21% of peak load performance is reached (13.97 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 15.75 to 15.00 cycles (1.05x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: a0f0\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7 | Latency | Recip. throughput\n----------------------------------------------------------------------------------------------------------------------------------\nMOV 0x50(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nMOVSXD %R12D,%RAX                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nMOV 0x48(%RSP),%RDX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nMOV 0x98(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nMOV 0x18(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nIMUL %RAX,%RCX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0  | 3       | 1\nIMUL %RBP,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0  | 3       | 1\nADD 0xc0(%RSP),%RDX                      | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0  | 1       | 0.50\nIMUL %RAX,%RSI                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0  | 3       | 1\nLEA 0x1(%RDX,%RCX,1),%RDX                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0  | 3       | 1\nMOV 0x90(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nLEA (%RDI,%RDX,8),%RDX                   | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0  | 1       | 0.50\nMOV 0x20(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nIMUL %RBP,%RCX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0  | 3       | 1\nADD 0x88(%RSP),%RCX                      | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0  | 1       | 0.50\nADD %RSI,%RCX                            | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nMOV 0x80(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nLEA (%RDI,%RCX,8),%R11                   | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0  | 1       | 0.50\nMOV 0x78(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nMOV 0x28(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nIMUL %RAX,%RSI                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0  | 3       | 1\nIMUL %RBP,%RCX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0  | 3       | 1\nADD 0x108(%RSP),%RCX                     | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0  | 1       | 0.50\nADD %RSI,%RCX                            | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nMOV 0x70(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nLEA (%RDI,%RCX,8),%R10                   | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0  | 1       | 0.50\nMOV 0x68(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nMOV 0x30(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nIMUL %RAX,%RSI                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0  | 3       | 1\nIMUL %RBP,%RCX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0  | 3       | 1\nADD 0x100(%RSP),%RCX                     | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0  | 1       | 0.50\nADD %RSI,%RCX                            | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nMOV 0x60(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nLEA (%RDI,%RCX,8),%R9                    | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0  | 1       | 0.50\nMOV 0x58(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nMOV 0x38(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nIMUL %RAX,%RSI                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0  | 3       | 1\nIMUL %RBP,%RCX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0  | 3       | 1\nADD 0xf8(%RSP),%RCX                      | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0  | 1       | 0.50\nADD %RSI,%RCX                            | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nMOV 0xe8(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nLEA (%RDI,%RCX,8),%R8                    | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0  | 1       | 0.50\nMOV 0xe0(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nMOV 0x40(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nIMUL %RAX,%RSI                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0  | 3       | 1\nIMUL %RBP,%RCX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0  | 3       | 1\nADD 0x110(%RSP),%RCX                     | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0  | 1       | 0.50\nIMUL 0xb0(%RSP),%RAX                     | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 3       | 1\nADD %RSI,%RCX                            | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nLEA (%RDI,%RCX,8),%RDI                   | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0  | 1       | 0.50\nMOV 0xa8(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 2       | 0.50\nIMUL %RBP,%RCX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0  | 3       | 1\nADD 0xa0(%RSP),%RCX                      | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0  | 1       | 0.50\nADD %RCX,%RAX                            | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nLEA (%R14,%RAX,8),%RSI                   | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0  | 1       | 0.50\nXOR %EAX,%EAX                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0       | 0.25\nXCHG %AX,%AX                             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0       | 0.25\nCMP %R13D,0xb8(%RSP)                     | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0  | 1       | 0.50\nJE d78c <compute_rhs_._omp_fn.0+0x392c>  | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0  | 0       | 0.50-1\nADD $0x1,%R12D                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nCMP %R12D,%R15D                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nJLE dbda <compute_rhs_._omp_fn.0+0x3d7a> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0  | 0       | 0.50-1\nADD $0x1,%R13D                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 1       | 0.25\nJMP a0f0 <compute_rhs_._omp_fn.0+0x290>  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0  | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 22% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 15.75 to 2.50 cycles (6.30x speedup).",
        },
        {
          title = "Execution units bottlenecks",
          txt = "Found no such bottlenecks but see expert reports for more complex bottlenecks.",
        },
      },
      potential = {
      },
    },
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - ADD: 1 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant unknown stride: 7 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 228 bytes.\nThe binary loop is storing 4 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 68\nnb uops            : 69\nloop length        : 348\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 29\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\nmicro-operation queue: 17.25 cycles\nfront end            : 17.25 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2    | P3    | P4   | P5    | P6    | P7\n--------------------------------------------------------------------\nuops   | 10.50 | 15.00 | 15.00 | 15.00 | 1.00 | 10.25 | 10.25 | 1.00\ncycles | 10.50 | 15.00 | 15.00 | 15.00 | 1.00 | 10.25 | 10.25 | 1.00\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 17.25\nDispatch  : 15.00\nData deps.: 1.00\nOverall L1: 17.25\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 21%\nload    : 23%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 25%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 17.25 cycles. At this rate:\n - 20% of peak load performance is reached (13.22 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.23 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 17.25 to 15.00 cycles (1.15x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: a0f0\n\nInstruction                              | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7   | Latency | Recip. throughput\n------------------------------------------------------------------------------------------------------------------------------------\nMOV 0x50(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOVSXD %R12D,%RAX                        | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMOV 0x48(%RSP),%RDX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x98(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x18(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nIMUL %RAX,%RCX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nIMUL %RBP,%RDX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADD 0xc0(%RSP),%RDX                      | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nIMUL %RAX,%RSI                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nLEA 0x1(%RDX,%RCX,1),%RDX                | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nMOV 0x90(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nLEA (%RDI,%RDX,8),%RDX                   | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nMOV 0x20(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nIMUL %RBP,%RCX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADD 0x88(%RSP),%RCX                      | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nADD %RSI,%RCX                            | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMOV 0x80(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nLEA (%RDI,%RCX,8),%R11                   | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nMOV 0x78(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x28(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nIMUL %RAX,%RSI                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nIMUL %RBP,%RCX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADD 0x108(%RSP),%RCX                     | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nADD %RSI,%RCX                            | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMOV 0x70(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nLEA (%RDI,%RCX,8),%R10                   | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nMOV 0x68(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x30(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nIMUL %RAX,%RSI                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nIMUL %RBP,%RCX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADD 0x100(%RSP),%RCX                     | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nADD %RSI,%RCX                            | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMOV 0x60(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nLEA (%RDI,%RCX,8),%R9                    | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nMOV 0x58(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x38(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nIMUL %RAX,%RSI                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nIMUL %RBP,%RCX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADD 0xf8(%RSP),%RCX                      | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nADD %RSI,%RCX                            | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nMOV 0xe8(%RSP),%RSI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nLEA (%RDI,%RCX,8),%R8                    | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nMOV 0xe0(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nMOV 0x40(%RSP),%RDI                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nIMUL %RAX,%RSI                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nIMUL %RBP,%RCX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADD 0x110(%RSP),%RCX                     | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nIMUL 0xb0(%RSP),%RAX                     | 1     | 0    | 1    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 3       | 1\nADD %RSI,%RCX                            | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nLEA (%RDI,%RCX,8),%RDI                   | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nMOV 0xa8(%RSP),%RCX                      | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 2       | 0.50\nIMUL %RBP,%RCX                           | 1     | 0    | 1    | 0    | 0    | 0  | 0    | 0    | 0    | 3       | 1\nADD 0xa0(%RSP),%RCX                      | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nADD %RCX,%RAX                            | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nLEA (%R14,%RAX,8),%RSI                   | 1     | 0    | 0.50 | 0    | 0    | 0  | 0.50 | 0    | 0    | 1       | 0.50\nXOR %EAX,%EAX                            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nXCHG %AX,%AX                             | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nCMP %R13D,0xb8(%RSP)                     | 1     | 0.25 | 0.25 | 0.50 | 0.50 | 0  | 0.25 | 0.25 | 0    | 1       | 0.50\nJE d78c <compute_rhs_._omp_fn.0+0x392c>  | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nADD $0x1,%R12D                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nCMP %R12D,%R15D                          | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJLE dbda <compute_rhs_._omp_fn.0+0x3d7a> | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0    | 0       | 0.50-1\nADD $0x1,%R13D                           | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0    | 1       | 0.25\nJMP a0f0 <compute_rhs_._omp_fn.0+0x290>  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0    | 0       | 1-2\nADDL $0x1,0x120(%RSP)                    | 2     | 0.50 | 0.50 | 0.83 | 0.83 | 1  | 0.50 | 0.50 | 0.33 | 6       | 1\nXOR %R12D,%R12D                          | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0    | 0       | 0.25\nMOVSXD 0x120(%RSP),%RBP                  | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0    | 0       | 0.50\nJMP a2b7 <compute_rhs_._omp_fn.0+0x457>  | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 1    | 0    | 0       | 1-2\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 21% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 17.25 to 2.51 cycles (6.89x speedup).",
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
          txt = "No instructions are processing arithmetic or math operations on FP elements. This loop is probably writing/copying data or processing integer elements.",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 224 bytes.\nThe binary loop is storing 2 bytes.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 66\nnb uops            : 66\nloop length        : 336\nused x86 registers : 15\nused mmx registers : 0\nused xmm registers : 0\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 28.50\n",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nmicro-operation queue: 16.50 cycles\nfront end            : 16.50 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0   | P1    | P2    | P3    | P4   | P5   | P6   | P7\n-----------------------------------------------------------------\nuops   | 9.75 | 15.00 | 14.50 | 14.50 | 0.50 | 9.63 | 9.63 | 0.50\ncycles | 9.75 | 15.00 | 14.50 | 14.50 | 0.50 | 9.63 | 9.63 | 0.50\n\nCycles executing div or sqrt instructions: NA\nLongest recurrence chain latency (RecMII): 1.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 16.50\nDispatch  : 15.00\nData deps.: 1.00\nOverall L1: 16.50\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 0%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 0%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 21%\nload    : 23%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 25%\nadd-sub : 12%\nfma     : NA (no fma vectorizable/vectorized instructions)\ndiv/sqrt: NA (no div/sqrt vectorizable/vectorized instructions)\nother   : 12%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 16.50 cycles. At this rate:\n - 21% of peak load performance is reached (13.59 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))\n - 0% of peak store performance is reached (0.12 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))\n",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one:\n  * recompile with fassociative-math (included in Ofast or ffast-math) to extend loop vectorization to FP reductions.\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nFortran storage order is column-major: do i do j a(i,j) = b(i,j) (slow, non stride 1) => do i do j a(j,i) = b(i,j) (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\ndo i a(i)%x = b(i)%x (slow, non stride 1) => do i a%x(i) = b%x(i) (fast, stride 1)\n",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is not vectorized.\nOnly 21% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 16.50 to 2.50 cycles (6.59x speedup).",
        },
      },
      potential = {
      },
    },
  common = {
    header = {
      "The loop is defined in /home/madjid/Bureau/CHPS/Maqao/NPB3.4.1-MZ/NPB3.4-MZ-OMP/BT-MZ/rhs.f90:37-47,366.\n",
      "Warnings:\nNon-innermost loop: analyzing only self part (ignoring child loops).",
      "The structure of this loop is probably <if then [else] end>.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n - hoisting them (moving them outside the loop)\n - turning them into conditional moves, MIN or MAX\n\n",
      "Ex: if (x<0) x=0 => x = max(0,x) (Fortran instrinsic procedure)\n",
    },
    nb_paths = 2,
  },
}
