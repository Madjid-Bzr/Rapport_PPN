_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          workaround = "<ul><li>Recompile with march=icelake.\nCQA target is Icelake_7e (10th generation Intel Core processors and Intel Xeon processor product family based on Icelake Client microarchitecture) but specialization flags are -march=x86-64</li><li>Use vector aligned instructions:\n<ol><li>align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&amp;p, 64, size); }.</li><li>inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.</li></ol></li></ul>",
          details = "<ul><li>MOVUPD: 4 occurrences</li><li>MOVUPS: 2 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 6 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n12 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 25 FP arithmetical operations:\n<ul><li>12: addition or subtraction</li><li>9: multiply</li><li>2: divide</li><li>2: square root</li></ul>The binary loop is loading 72 bytes (9 double precision FP elements).\nThe binary loop is storing 32 bytes (4 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.24 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>41</td></tr><tr><td>nb uops</td><td>40</td></tr><tr><td>loop length</td><td>173</td></tr><tr><td>used x86 registers</td><td>9</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>11</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr><tr><td>ADD-SUB / MUL ratio</td><td>1.20</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>8.00 cycles</td></tr><tr><td>front end</td><td>8.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th></tr><tr><td>uops</td><td>7.25</td><td>7.25</td><td>2.50</td><td>2.50</td><td>1.00</td><td>7.25</td><td>7.25</td><td>1.00</td><td>1.00</td><td>1.00</td></tr><tr><td>cycles</td><td>7.25</td><td>7.25</td><td>2.50</td><td>2.50</td><td>1.00</td><td>7.25</td><td>7.25</td><td>1.00</td><td>1.00</td><td>1.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>8.50-10.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>8.00</td></tr><tr><td>Dispatch</td><td>7.25</td></tr><tr><td>DIV/SQRT</td><td>8.50-10.00</td></tr><tr><td>Overall L1</td><td>8.50-10.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>FP\n<table><tr><td>all</td><td>74%</td></tr><tr><td>load</td><td>80%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>80%</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>100%</td></tr><tr><td>other</td><td>28%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>64%</td></tr><tr><td>load</td><td>80%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>80%</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>100%</td></tr><tr><td>other</td><td>18%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\n<table><tr><td>all</td><td>7%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>7%</td></tr></table>FP\n<table><tr><td>all</td><td>21%</td></tr><tr><td>load</td><td>22%</td></tr><tr><td>store</td><td>25%</td></tr><tr><td>mul</td><td>22%</td></tr><tr><td>add-sub</td><td>25%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>25%</td></tr><tr><td>other</td><td>16%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>19%</td></tr><tr><td>load</td><td>22%</td></tr><tr><td>store</td><td>25%</td></tr><tr><td>mul</td><td>22%</td></tr><tr><td>add-sub</td><td>25%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>25%</td></tr><tr><td>other</td><td>13%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 10.00 cycles. At this rate:\n<ul><li>5% of peak load performance is reached (7.20 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>5% of peak store performance is reached (3.20 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 29c8\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOVUPS %XMM3,(%RCX)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R11,%RAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>XOR %EDX,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>TEST $0x1,%R10B</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JE 2afa <compute_accelerations+0x17a></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>TEST %EDI,%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JE 2a54 <compute_accelerations+0xd4></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>MOVUPD (%R8),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>MOVUPD (%R11),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>MOVUPD (%R11),%XMM9</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>MOVSD (%R9),%XMM4</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOVAPD %XMM5,%XMM6</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>MOVAPD %XMM5,%XMM8</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>UNPCKLPD %XMM0,%XMM0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>MOVUPD (%R11),%XMM7</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>UNPCKLPD %XMM5,%XMM6</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>UNPCKHPD %XMM5,%XMM8</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>UNPCKHPD %XMM9,%XMM9</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>SUBPD %XMM0,%XMM6</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>SUBPD %XMM9,%XMM8</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MULSD %XMM2,%XMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>SUBPD %XMM5,%XMM7</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MULPD %XMM8,%XMM8</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>MULPD %XMM6,%XMM6</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>UNPCKLPD %XMM4,%XMM4</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>ADDPD %XMM6,%XMM8</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>SQRTPD %XMM8,%XMM10</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>13-19</td><td>4.50-6</td></tr><tr><td>MULPD %XMM10,%XMM8</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>ADDPD %XMM1,%XMM8</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>DIVPD %XMM8,%XMM4</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>13-15</td><td>4</td></tr><tr><td>MULPD %XMM7,%XMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>ADDPD %XMM3,%XMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOVUPS %XMM4,(%RCX)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>1</td><td>0.50</td></tr><tr><td>LEA 0x10(%R11),%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV $0x1,%EDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JMP 2afa <compute_accelerations+0x17a></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>ADD $0x1,%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD $0x10,%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD $0x10,%R8</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP %EBX,%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 29c8 <compute_accelerations+0x48></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr></table>",
        },
      },
      header = {
        "7% of peak computational performance is used (2.50 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "64% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n<ul><li>80% of SSE/AVX loads are used in vector version.</li><li>80% of SSE/AVX multiply instructions are used in vector version.</li><li>18% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.</li></ul>Since your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 19% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 10.00 to 5.00 cycles (2.00x speedup).",
        },
        {
          workaround = "<ul><li>Reduce the number of division or square root instructions:\n<ul><li>If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast</li></ul></li><li>Check whether you really need double precision. If not, switch to single precision to speedup execution</li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 10.00 to 8.00 cycles (1.25x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "<ul><li>Recompile with march=icelake.\nCQA target is Icelake_7e (10th generation Intel Core processors and Intel Xeon processor product family based on Icelake Client microarchitecture) but specialization flags are -march=x86-64</li><li>Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).</li></ul>",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          workaround = "<ul><li>Recompile with march=icelake.\nCQA target is Icelake_7e (10th generation Intel Core processors and Intel Xeon processor product family based on Icelake Client microarchitecture) but specialization flags are -march=x86-64</li><li>Use vector aligned instructions:\n<ol><li>align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&amp;p, 64, size); }.</li><li>inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.</li></ol></li></ul>",
          details = "<ul><li>MOVUPD: 4 occurrences</li><li>MOVUPS: 2 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 6 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          title = "Type of elements and instruction set",
          txt = "1 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n12 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (two at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 25 FP arithmetical operations:\n<ul><li>12: addition or subtraction</li><li>9: multiply</li><li>2: divide</li><li>2: square root</li></ul>The binary loop is loading 72 bytes (9 double precision FP elements).\nThe binary loop is storing 32 bytes (4 double precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 0.24 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>41</td></tr><tr><td>nb uops</td><td>40</td></tr><tr><td>loop length</td><td>173</td></tr><tr><td>used x86 registers</td><td>9</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>11</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr><tr><td>ADD-SUB / MUL ratio</td><td>1.20</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>8.00 cycles</td></tr><tr><td>front end</td><td>8.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th></tr><tr><td>uops</td><td>7.25</td><td>7.25</td><td>2.50</td><td>2.50</td><td>1.00</td><td>7.25</td><td>7.25</td><td>1.00</td><td>1.00</td><td>1.00</td></tr><tr><td>cycles</td><td>7.25</td><td>7.25</td><td>2.50</td><td>2.50</td><td>1.00</td><td>7.25</td><td>7.25</td><td>1.00</td><td>1.00</td><td>1.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>8.50-10.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>8.00</td></tr><tr><td>Dispatch</td><td>7.25</td></tr><tr><td>DIV/SQRT</td><td>8.50-10.00</td></tr><tr><td>Overall L1</td><td>8.50-10.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "INT\n<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>FP\n<table><tr><td>all</td><td>74%</td></tr><tr><td>load</td><td>80%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>80%</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>100%</td></tr><tr><td>other</td><td>28%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>64%</td></tr><tr><td>load</td><td>80%</td></tr><tr><td>store</td><td>100%</td></tr><tr><td>mul</td><td>80%</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>100%</td></tr><tr><td>other</td><td>18%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "INT\n<table><tr><td>all</td><td>7%</td></tr><tr><td>load</td><td>NA (no load vectorizable/vectorized instructions)</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>7%</td></tr></table>FP\n<table><tr><td>all</td><td>21%</td></tr><tr><td>load</td><td>22%</td></tr><tr><td>store</td><td>25%</td></tr><tr><td>mul</td><td>22%</td></tr><tr><td>add-sub</td><td>25%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>25%</td></tr><tr><td>other</td><td>16%</td></tr></table>INT+FP\n<table><tr><td>all</td><td>19%</td></tr><tr><td>load</td><td>22%</td></tr><tr><td>store</td><td>25%</td></tr><tr><td>mul</td><td>22%</td></tr><tr><td>add-sub</td><td>25%</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>25%</td></tr><tr><td>other</td><td>13%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 10.00 cycles. At this rate:\n<ul><li>5% of peak load performance is reached (7.20 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>5% of peak store performance is reached (3.20 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 29c8\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>MOVUPS %XMM3,(%RCX)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>1</td><td>0.50</td></tr><tr><td>MOV %R11,%RAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>XOR %EDX,%EDX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>TEST $0x1,%R10B</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JE 2afa <compute_accelerations+0x17a></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>TEST %EDI,%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JE 2a54 <compute_accelerations+0xd4></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>MOVUPD (%R8),%XMM5</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>MOVUPD (%R11),%XMM0</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>MOVUPD (%R11),%XMM9</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>MOVSD (%R9),%XMM4</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td></tr><tr><td>MOVAPD %XMM5,%XMM6</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>MOVAPD %XMM5,%XMM8</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>UNPCKLPD %XMM0,%XMM0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>MOVUPD (%R11),%XMM7</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>UNPCKLPD %XMM5,%XMM6</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>UNPCKHPD %XMM5,%XMM8</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>UNPCKHPD %XMM9,%XMM9</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>SUBPD %XMM0,%XMM6</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>SUBPD %XMM9,%XMM8</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MULSD %XMM2,%XMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>SUBPD %XMM5,%XMM7</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MULPD %XMM8,%XMM8</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>MULPD %XMM6,%XMM6</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>UNPCKLPD %XMM4,%XMM4</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td></tr><tr><td>ADDPD %XMM6,%XMM8</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>SQRTPD %XMM8,%XMM10</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>13-19</td><td>4.50-6</td></tr><tr><td>MULPD %XMM10,%XMM8</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>ADDPD %XMM1,%XMM8</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>DIVPD %XMM8,%XMM4</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>13-15</td><td>4</td></tr><tr><td>MULPD %XMM7,%XMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>ADDPD %XMM3,%XMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>MOVUPS %XMM4,(%RCX)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>1</td><td>0.50</td></tr><tr><td>LEA 0x10(%R11),%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV $0x1,%EDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JMP 2afa <compute_accelerations+0x17a></td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1-2</td></tr><tr><td>ADD $0x1,%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD $0x10,%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>ADD $0x10,%R8</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CMP %EBX,%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 29c8 <compute_accelerations+0x48></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr></table>",
        },
      },
      header = {
        "7% of peak computational performance is used (2.50 out of 32.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Remove inter-iterations dependences from your loop and make it unit-stride:\n<ul><li>If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) =&gt; for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)</li><li>If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "64% of SSE/AVX instructions are used in vector version (process two or more data elements in vector registers):\n<ul><li>80% of SSE/AVX loads are used in vector version.</li><li>80% of SSE/AVX multiply instructions are used in vector version.</li><li>18% of SSE/AVX instructions that are not load, store, addition, subtraction nor multiply instructions are used in vector version.</li></ul>Since your execution units are vector units, only a fully vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is partially vectorized.\nOnly 19% of vector register length is used (average across all SSE/AVX instructions).\nBy fully vectorizing your loop, you can lower the cost of an iteration from 10.00 to 5.00 cycles (2.00x speedup).",
        },
        {
          workaround = "<ul><li>Reduce the number of division or square root instructions:\n<ul><li>If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast</li></ul></li><li>Check whether you really need double precision. If not, switch to single precision to speedup execution</li></ul>",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 10.00 to 8.00 cycles (1.25x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "<ul><li>Recompile with march=icelake.\nCQA target is Icelake_7e (10th generation Intel Core processors and Intel Xeon processor product family based on Icelake Client microarchitecture) but specialization flags are -march=x86-64</li><li>Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).</li></ul>",
          title = "FMA",
          txt = "Presence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/katia/Test-maqao/nbody1.c:64,72,80,88,136-144.\n",
      "Warnings:\n<ul><li>Non-innermost loop: analyzing only self part (ignoring child loops).</li><li>Ignoring paths for analysis</li><li>Too many paths. Rerun with max-paths=18</li><li>RecMII not computed since number of paths is unknown or > max_paths</li><li>Streams not analyzed since number of paths is unknown or > max_paths</li></ul>",
      "Try to simplify control and/or increase the maximum number of paths per function/loop through the 'max-paths-nb' option.\n",
      "This loop has 18 execution paths.\n",
      "The presence of multiple execution paths is typically the main/first bottleneck.\nTry to simplify control inside loop: ideally, try to remove all conditional expressions, for example by (if applicable):\n<ul><li>hoisting them (moving them outside the loop)</li><li>turning them into conditional moves, MIN or MAX</li></ul>\n",
      "Ex: if (x&lt;0) x=0 =&gt; x = (x&lt;0 ? 0 : x) (or MAX(0,x) after defining the corresponding macro)\n",
    },
    nb_paths = 18,
  },
}
