_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>.plt.sec@start: 1 occurrences</li><li>init_system: 1 occurrences</li><li>unknown: 7 occurrences</li></ul>",
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
          txt = "<table><tr><td>nb instructions</td><td>47</td></tr><tr><td>nb uops</td><td>55</td></tr><tr><td>loop length</td><td>197</td></tr><tr><td>used x86 registers</td><td>12</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>4</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>11.00 cycles</td></tr><tr><td>front end</td><td>11.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th></tr><tr><td>uops</td><td>3.75</td><td>3.75</td><td>5.00</td><td>5.00</td><td>7.50</td><td>3.50</td><td>10.00</td><td>8.00</td><td>8.00</td><td>7.50</td></tr><tr><td>cycles</td><td>3.75</td><td>3.75</td><td>5.00</td><td>5.00</td><td>7.50</td><td>3.50</td><td>10.00</td><td>8.00</td><td>8.00</td><td>7.50</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>11.00</td></tr><tr><td>Dispatch</td><td>10.00</td></tr><tr><td>Overall L1</td><td>11.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>8%</td></tr><tr><td>load</td><td>12%</td></tr><tr><td>store</td><td>12%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>7%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 11.00 cycles. At this rate:\n<ul><li>2% of peak load performance is reached (3.64 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>1% of peak store performance is reached (0.73 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 11.00 to 10.00 cycles (1.10x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1260\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>ENDBR64</td></tr><tr><td>PUSH %R14</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>XOR %EDI,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>PUSH %R13</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>PUSH %R12</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>PUSH %RBP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>XOR %EBP,%EBP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>PUSH %RBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>SUB $0x90,%RSP</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %FS:0x28,%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV %RAX,0x88(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>XOR %EAX,%EAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>LEA 0x30(%RSP),%RBX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CALL 1200 <.plt.sec@start+0xb0></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>MOV %RAX,%RDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 1220 <.plt.sec@start+0xd0></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>MOV $0x20,%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CALL 11e0 <.plt.sec@start+0x90></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>LEA 0x10(%RSP),%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>LEA 0x18(%RSP),%R8</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV $0x2,%EDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV $0x320,%ESI</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV $0x320,%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CALL 11a0 <.plt.sec@start+0x50></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>XOR %EAX,%EAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 1e30 <init_system></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>NOPL (%RAX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>MOV 0x18(%RSP),%RDI</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>CALL 11b0 <.plt.sec@start+0x60></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>MOV 0x10(%RSP),%RDI</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>CALL 1160 <.plt.sec@start+0x10></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>CALL 1170 <.plt.sec@start+0x20></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>MOV 0x88(%RSP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>XOR %FS:0x28,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 1a34 <main+0x7d4></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>ADD $0x90,%RSP</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>XOR %EAX,%EAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>POP %RBX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>POP %RBP</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>POP %R12</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>POP %R13</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>POP %R14</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>RET</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td></tr><tr><td>NOPW (%RAX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>NOPL (%RAX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 1230 <.plt.sec@start+0xe0></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>NOPL (%RAX)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr></table>",
        },
      },
      header = {
        "Warnings:\n<ul><li>The number of fused uops of the instruction [ENDBR64] is unknown</li><li>Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.</li></ul>",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Make array accesses unit-stride:\n<ul><li>If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 11.00 to 0.73 cycles (15.04x speedup).",
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
          details = "Calling (and then returning from) a function prevents many compiler optimizations (like vectorization), breaks control flow (which reduces pipeline performance) and executes extra instructions to save/restore the registers used inside it, which is very expensive (dozens of cycles). Consider to inline small functions.\n<ul><li>.plt.sec@start: 1 occurrences</li><li>init_system: 1 occurrences</li><li>unknown: 7 occurrences</li></ul>",
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
          txt = "<table><tr><td>nb instructions</td><td>47</td></tr><tr><td>nb uops</td><td>55</td></tr><tr><td>loop length</td><td>197</td></tr><tr><td>used x86 registers</td><td>12</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>0</td></tr><tr><td>used ymm registers</td><td>0</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>4</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "MACRO FUSION NOT POSSIBLE\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>11.00 cycles</td></tr><tr><td>front end</td><td>11.00 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th></tr><tr><td>uops</td><td>3.75</td><td>3.75</td><td>5.00</td><td>5.00</td><td>7.50</td><td>3.50</td><td>10.00</td><td>8.00</td><td>8.00</td><td>7.50</td></tr><tr><td>cycles</td><td>3.75</td><td>3.75</td><td>5.00</td><td>5.00</td><td>7.50</td><td>3.50</td><td>10.00</td><td>8.00</td><td>8.00</td><td>7.50</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>NA</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>11.00</td></tr><tr><td>Dispatch</td><td>10.00</td></tr><tr><td>Overall L1</td><td>11.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>0%</td></tr><tr><td>load</td><td>0%</td></tr><tr><td>store</td><td>0%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>0%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>8%</td></tr><tr><td>load</td><td>12%</td></tr><tr><td>store</td><td>12%</td></tr><tr><td>mul</td><td>NA (no mul vectorizable/vectorized instructions)</td></tr><tr><td>add-sub</td><td>NA (no add-sub vectorizable/vectorized instructions)</td></tr><tr><td>fma</td><td>NA (no fma vectorizable/vectorized instructions)</td></tr><tr><td>div/sqrt</td><td>NA (no div/sqrt vectorizable/vectorized instructions)</td></tr><tr><td>other</td><td>7%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each call to the function takes 11.00 cycles. At this rate:\n<ul><li>2% of peak load performance is reached (3.64 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li><li>1% of peak store performance is reached (0.73 out of 64.00 bytes stored per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Performance is limited by instruction throughput (loading/decoding program instructions to execution core) (front-end is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 11.00 to 10.00 cycles (1.10x speedup).\n",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the function is: 1260\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>ENDBR64</td></tr><tr><td>PUSH %R14</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>XOR %EDI,%EDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>PUSH %R13</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>PUSH %R12</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>PUSH %RBP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>XOR %EBP,%EBP</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>PUSH %RBX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>SUB $0x90,%RSP</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV %FS:0x28,%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>MOV %RAX,0x88(%RSP)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0.50</td><td>3</td><td>0.50</td></tr><tr><td>XOR %EAX,%EAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>LEA 0x30(%RSP),%RBX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CALL 1200 <.plt.sec@start+0xb0></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>MOV %RAX,%RDI</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 1220 <.plt.sec@start+0xd0></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>MOV $0x20,%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CALL 11e0 <.plt.sec@start+0x90></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>LEA 0x10(%RSP),%RCX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>LEA 0x18(%RSP),%R8</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV $0x2,%EDX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV $0x320,%ESI</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>MOV $0x320,%EDI</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>CALL 11a0 <.plt.sec@start+0x50></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>XOR %EAX,%EAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 1e30 <init_system></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>NOPL (%RAX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>MOV 0x18(%RSP),%RDI</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>CALL 11b0 <.plt.sec@start+0x60></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>MOV 0x10(%RSP),%RDI</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>CALL 1160 <.plt.sec@start+0x10></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>CALL 1170 <.plt.sec@start+0x20></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>MOV 0x88(%RSP),%RAX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>XOR %FS:0x28,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0.50</td><td>0.50</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td></tr><tr><td>JNE 1a34 <main+0x7d4></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr><tr><td>ADD $0x90,%RSP</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>XOR %EAX,%EAX</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>POP %RBX</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>POP %RBP</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>POP %R12</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>POP %R13</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>POP %R14</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>2</td><td>0.50</td></tr><tr><td>RET</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>1</td></tr><tr><td>NOPW (%RAX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>NOPL (%RAX,%RAX,1)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>CALL 1230 <.plt.sec@start+0xe0></td><td>2</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>1</td><td>0.50</td><td>0.50</td><td>0.50</td><td>0</td><td>2</td></tr><tr><td>NOPL (%RAX)</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr></table>",
        },
      },
      header = {
        "Warnings:\n<ul><li>The number of fused uops of the instruction [ENDBR64] is unknown</li><li>Detected a function call instruction: ignoring called function instructions.\nRerun with --follow-calls=append to include them to analysis  or with --follow-calls=inline to simulate inlining.</li></ul>",
        "0% of peak computational performance is used (0.00 out of 4.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = "<ul><li>Try another compiler or update/tune your current one</li><li>Make array accesses unit-stride:\n<ul><li>If your function streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) =&gt; for(i) a.x[i] = b.x[i]; (fast, stride 1)</li></ul></li></ul>",
          details = "All SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized function can use their full power.\n",
          title = "Vectorization",
          txt = "Your function is not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your function, you can lower the cost of an iteration from 11.00 to 0.73 cycles (15.04x speedup).",
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
      "The function is defined in:\n<ul><li>/usr/include/x86_64-linux-gnu/bits/stdio2.h:107</li><li>/home/anism/Bureau/Test Nbody Version Scalaire /nbody_Version_SSE_Packed.c:41-43,66,198-205,228-229,242-243,250,258-308</li></ul>\n",
      "Warnings:\nIgnoring paths for analysis",
    },
  },
}
