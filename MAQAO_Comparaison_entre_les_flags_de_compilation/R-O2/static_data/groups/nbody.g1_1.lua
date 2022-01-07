_group = {
  {
    group_size = 4,
    pattern = "SSSS",
    opcodes = "VMOVSS,VMOVSS,VMOVSS,VMOVSS,",
    offsets = "0,4,8,12,",
    addresses = "0x18a2,0x1962,0x1a25,0x1ae5,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 16,
    head = 0,
    unroll_factor = 4,
  },
  {
    group_size = 4,
    pattern = "SSSS",
    opcodes = "VMOVSS,VMOVSS,VMOVSS,VMOVSS,",
    offsets = "0,4,8,12,",
    addresses = "0x182a,0x18e7,0x19a9,0x1a6a,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 16,
    head = 0,
    unroll_factor = 4,
  },
  {
    group_size = 4,
    pattern = "SSSS",
    opcodes = "VMOVSS,VMOVSS,VMOVSS,VMOVSS,",
    offsets = "0,4,8,12,",
    addresses = "0x180c,0x18c6,0x1988,0x1a4b,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 16,
    head = 0,
    unroll_factor = 4,
  },
  {
    group_size = 4,
    pattern = "SSSS",
    opcodes = "VMOVSS,VMOVSS,VMOVSS,VMOVSS,",
    offsets = "0,4,8,12,",
    addresses = "0x1849,0x1909,0x19ca,0x1a8a,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 16,
    head = 0,
    unroll_factor = 4,
  },
  {
    group_size = 24,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,VMULSS,",
    offsets = "6432,6402,6371,6343,6309,6282,6246,6213,6179,6151,6118,6090,6052,6019,5986,5958,5924,5895,5857,5826,5794,5765,5731,5703,",
    addresses = "0x1804,0x1822,0x1841,0x185d,0x187f,0x189a,0x18be,0x18df,0x1901,0x191d,0x193e,0x195a,0x1980,0x19a1,0x19c2,0x19de,0x1a00,0x1a1d,0x1a43,0x1a62,0x1a82,0x1a9f,0x1ac1,0x1add,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 96,
    accessed_memory_nooverlap = 96,
    accessed_memory_overlap = 0,
    span = 733,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 4,
    pattern = "SSSS",
    opcodes = "VMOVSS,VMOVSS,VMOVSS,VMOVSS,",
    offsets = "0,4,8,12,",
    addresses = "0x1865,0x1925,0x19e6,0x1aa7,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 16,
    head = 0,
    unroll_factor = 4,
  },
  {
    group_size = 25,
    pattern = "SLSSLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "MOV,MOVSXD,MOV,MOV,MOV,VMULSS,MOV,VMULSS,VMULSS,MOV,VMULSS,MOV,VMULSS,VMULSS,MOV,VMULSS,MOV,VMULSS,VMULSS,VMULSS,MOV,MOV,VMULSS,VMULSS,CMP,",
    offsets = "-52,-52,-52,-52,-64,-52,-72,-52,-52,-64,-52,-72,-52,-52,-64,-52,-72,-52,-52,-52,-64,-72,-52,-52,-80,",
    addresses = "0x17cd,0x17d5,0x17d9,0x17e7,0x17f7,0x17ff,0x181a,0x183c,0x187a,0x18b1,0x18b9,0x18d7,0x18fc,0x1939,0x1973,0x197b,0x1999,0x19bd,0x19fb,0x1a3a,0x1a3f,0x1a5a,0x1a7d,0x1abc,0x1af0,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 136,
    accessed_memory_nooverlap = 28,
    accessed_memory_overlap = 108,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 4,
    pattern = "SSSS",
    opcodes = "VMOVSS,VMOVSS,VMOVSS,VMOVSS,",
    offsets = "0,4,8,12,",
    addresses = "0x1887,0x1946,0x1a08,0x1ac9,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 16,
    head = 0,
    unroll_factor = 4,
  },
}
