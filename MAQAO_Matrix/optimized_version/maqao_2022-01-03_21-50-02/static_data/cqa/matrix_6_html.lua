_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>VPMULLD: 10 occurrences</li></ul>",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant non-unit stride: 2 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 640 bytes.\nThe binary loop is storing 320 bytes.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is potentially data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>43</td></tr><tr><td>nb uops</td><td>62</td></tr><tr><td>loop length</td><td>306</td></tr><tr><td>used x86 registers</td><td>3</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>15</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>18.00 cycles</td></tr><tr><td>front end</td><td>18.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th></tr><tr><td>uops</td><td>13.33</td><td>13.33</td><td>10.00</td><td>10.00</td><td>10.00</td><td>13.33</td><td>2.00</td><td>10.00</td></tr><tr><td>cycles</td><td>13.33</td><td>13.33</td><td>10.00</td><td>10.00</td><td>10.00</td><td>13.33</td><td>2.00</td><td>10.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>18.00</td></tr><tr><td>Dispatch</td><td>13.33</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>18.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>100%</td></tr><tr><td>load</td><td>100%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>100%</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>100%</td></tr><tr><td>load</td><td>100%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>100%</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 18.00 cycles. At this rate:\n<ul><li>55% of peak load performance is reached (35.56 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>55% of peak store performance is reached (17.78 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 18.00 to 13.33 cycles (1.35x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 14b8\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VPANDN (%RDX,%RAX,1),%YMM5,%YMM11</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPMULLD (%RCX,%RAX,1),%YMM1,%YMM12</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0x20(%RDX,%RAX,1),%YMM5,%YMM14</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM12,%YMM11,%YMM13</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM13,(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0x20(%RAX,%RCX,1),%YMM1,%YMM15</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0x40(%RDX,%RAX,1),%YMM5,%YMM2</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM15,%YMM14,%YMM0</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM0,0x20(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0x40(%RAX,%RCX,1),%YMM1,%YMM6</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0x60(%RDX,%RAX,1),%YMM5,%YMM7</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM6,%YMM2,%YMM4</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM4,0x40(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0x60(%RAX,%RCX,1),%YMM1,%YMM8</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0x80(%RDX,%RAX,1),%YMM5,%YMM10</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM8,%YMM7,%YMM9</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM9,0x60(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0x80(%RAX,%RCX,1),%YMM1,%YMM11</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0xa0(%RDX,%RAX,1),%YMM5,%YMM13</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM11,%YMM10,%YMM12</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM12,0x80(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0xa0(%RAX,%RCX,1),%YMM1,%YMM14</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0xc0(%RDX,%RAX,1),%YMM5,%YMM0</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM14,%YMM13,%YMM15</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM15,0xa0(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0xc0(%RAX,%RCX,1),%YMM1,%YMM2</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0xe0(%RDX,%RAX,1),%YMM5,%YMM7</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM2,%YMM0,%YMM6</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM6,0xc0(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0xe0(%RAX,%RCX,1),%YMM1,%YMM4</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0x100(%RDX,%RAX,1),%YMM5,%YMM9</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM4,%YMM7,%YMM8</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM8,0xe0(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0x100(%RAX,%RCX,1),%YMM1,%YMM10</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0x120(%RDX,%RAX,1),%YMM5,%YMM12</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM10,%YMM9,%YMM11</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM11,0x100(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0x120(%RAX,%RCX,1),%YMM1,%YMM13</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPADDD %YMM13,%YMM12,%YMM14</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM14,0x120(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>ADD $0x140,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP $0x7c0,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 14b8 <matrixMultiplication+0xa8></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50-1</td></tr></table>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is fully vectorized, using full register length.\n",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>VPMULLD: 10 occurrences</li></ul>",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "<ul><li>Try to reorganize arrays of structures to structures of arrays</li><li>Consider to permute loops (see vectorization gain report)</li></ul>",
          details = "<ul><li>Constant non-unit stride: 2 occurrence(s)</li></ul>Non-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          title = "Type of elements and instruction set",
          txt = "",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop does not contain any FP arithmetical operations.\nThe binary loop is loading 640 bytes.\nThe binary loop is storing 320 bytes.",
        },
        {
          workaround = "Unroll your loop if trip count is significantly higher than target unroll factor and if some data references are common to consecutive iterations. This can be done manually. Or by recompiling with -funroll-loops and/or -floop-unroll-and-jam.",
          title = "Unroll opportunity",
          txt = "Loop is potentially data access bound.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>43</td></tr><tr><td>nb uops</td><td>62</td></tr><tr><td>loop length</td><td>306</td></tr><tr><td>used x86 registers</td><td>3</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>15</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>18.00 cycles</td></tr><tr><td>front end</td><td>18.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th></tr><tr><td>uops</td><td>13.33</td><td>13.33</td><td>10.00</td><td>10.00</td><td>10.00</td><td>13.33</td><td>2.00</td><td>10.00</td></tr><tr><td>cycles</td><td>13.33</td><td>13.33</td><td>10.00</td><td>10.00</td><td>10.00</td><td>13.33</td><td>2.00</td><td>10.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>1.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>18.00</td></tr><tr><td>Dispatch</td><td>13.33</td></tr><tr><td>Data deps.</td><td>1.00</td></tr><tr><td>Overall L1</td><td>18.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>100%</td></tr><tr><td>load</td><td>100%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>100%</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>100%</td></tr><tr><td>load</td><td>100%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>100%</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 18.00 cycles. At this rate:\n<ul><li>55% of peak load performance is reached (35.56 out of 64.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>55% of peak store performance is reached (17.78 out of 32.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 18.00 to 13.33 cycles (1.35x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 14b8\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VPANDN (%RDX,%RAX,1),%YMM5,%YMM11</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPMULLD (%RCX,%RAX,1),%YMM1,%YMM12</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0x20(%RDX,%RAX,1),%YMM5,%YMM14</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM12,%YMM11,%YMM13</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM13,(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0x20(%RAX,%RCX,1),%YMM1,%YMM15</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0x40(%RDX,%RAX,1),%YMM5,%YMM2</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM15,%YMM14,%YMM0</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM0,0x20(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0x40(%RAX,%RCX,1),%YMM1,%YMM6</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0x60(%RDX,%RAX,1),%YMM5,%YMM7</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM6,%YMM2,%YMM4</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM4,0x40(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0x60(%RAX,%RCX,1),%YMM1,%YMM8</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0x80(%RDX,%RAX,1),%YMM5,%YMM10</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM8,%YMM7,%YMM9</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM9,0x60(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0x80(%RAX,%RCX,1),%YMM1,%YMM11</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0xa0(%RDX,%RAX,1),%YMM5,%YMM13</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM11,%YMM10,%YMM12</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM12,0x80(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0xa0(%RAX,%RCX,1),%YMM1,%YMM14</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0xc0(%RDX,%RAX,1),%YMM5,%YMM0</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM14,%YMM13,%YMM15</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM15,0xa0(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0xc0(%RAX,%RCX,1),%YMM1,%YMM2</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0xe0(%RDX,%RAX,1),%YMM5,%YMM7</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM2,%YMM0,%YMM6</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM6,0xc0(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0xe0(%RAX,%RCX,1),%YMM1,%YMM4</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0x100(%RDX,%RAX,1),%YMM5,%YMM9</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM4,%YMM7,%YMM8</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM8,0xe0(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0x100(%RAX,%RCX,1),%YMM1,%YMM10</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPANDN 0x120(%RDX,%RAX,1),%YMM5,%YMM12</td><td>1</td><td>0.33</td><td>0.33</td><td>0.50</td><td>0.50</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>VPADDD %YMM10,%YMM9,%YMM11</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM11,0x100(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>VPMULLD 0x120(%RAX,%RCX,1),%YMM1,%YMM13</td><td>3</td><td>1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>10</td><td>1</td></tr><tr><td>VPADDD %YMM13,%YMM12,%YMM14</td><td>1</td><td>0.33</td><td>0.33</td><td>0</td><td>0</td><td>0</td><td>0.33</td><td>0</td><td>0</td><td>1</td><td>0.33</td></tr><tr><td>VMOVDQU %YMM14,0x120(%RDX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>0.33</td><td>1</td><td>0</td><td>0</td><td>0.33</td><td>1</td><td>1</td></tr><tr><td>ADD $0x140,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP $0x7c0,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 14b8 <matrixMultiplication+0xa8></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50-1</td></tr></table>",
        },
      },
      header = {
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is fully vectorized, using full register length.\n",
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
      "The loop is defined in /home/benbachir/Rapport_PPN/matrix/optimized_version/matrix.c:34-39.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
