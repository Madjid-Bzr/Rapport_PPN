_group = {
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "VMOVDQU,VMOVUPS,",
    offsets = "0,0,",
    addresses = "0x19c7,0x19d5,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 13,
    pattern = "LLLLLLLLLLLLL",
    opcodes = "VCOMISD,VCOMISD,VCOMISD,VCOMISD,VCOMISD,VCOMISD,VCOMISD,VCOMISD,VCOMISD,VCOMISD,VCOMISD,VCOMISD,VCOMISD,",
    offsets = "8,16,24,32,40,48,56,64,72,80,88,96,104,",
    addresses = "0x18d0,0x1906,0x1917,0x194e,0x195f,0x1995,0x19a6,0x19dd,0x19ee,0x1a25,0x1a36,0x1a6c,0x1a7d,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 104,
    accessed_memory_nooverlap = 104,
    accessed_memory_overlap = 0,
    span = 104,
    head = 0,
    unroll_factor = 13,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "VMOVSD,VMOVSD,VMOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x18e6,0x18eb,0x18f9,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "VMOVDQU,VMOVUPS,",
    offsets = "0,0,",
    addresses = "0x1938,0x1946,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "VMOVSD,VMOVSD,VMOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x19bc,0x19c1,0x19d0,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "VMOVDQU,VMOVUPS,",
    offsets = "0,0,",
    addresses = "0x1a9e,0x1aac,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "VMOVDQU,VMOVUPS,",
    offsets = "0,0,",
    addresses = "0x1980,0x198d,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "VMOVSD,VMOVSD,VMOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x1a93,0x1a98,0x1aa7,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 8,
    pattern = "LLLLLLLL",
    opcodes = "MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,",
    offsets = "22456,22385,22314,22242,22171,22099,22027,21956,",
    addresses = "0x1891,0x18d8,0x191f,0x1967,0x19ae,0x19f6,0x1a3e,0x1a85,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 64,
    accessed_memory_nooverlap = 64,
    accessed_memory_overlap = 0,
    span = 508,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 16,
    pattern = "LLLLLLLLLLLLLLLL",
    opcodes = "VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,VMOVSD,",
    offsets = "0,8,0,8,0,8,0,8,0,8,0,8,0,8,0,8,",
    addresses = "0x1879,0x1884,0x18bb,0x18cb,0x1902,0x1912,0x194a,0x195a,0x1991,0x19a1,0x19d9,0x19e9,0x1a21,0x1a31,0x1a68,0x1a78,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 128,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 112,
    span = 16,
    head = 0,
    unroll_factor = 2,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "VMOVSD,VMOVSD,VMOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x189f,0x18a4,0x18b2,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "VMOVDQU,VMOVUPS,",
    offsets = "0,0,",
    addresses = "0x18aa,0x18b7,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "VMOVDQU,VMOVUPS,",
    offsets = "0,0,",
    addresses = "0x1a57,0x1a64,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "VMOVSD,VMOVSD,VMOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x1975,0x197a,0x1988,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "VMOVSD,VMOVSD,VMOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x192d,0x1932,0x1941,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "VMOVDQU,VMOVUPS,",
    offsets = "0,0,",
    addresses = "0x18f1,0x18fe,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "VMOVDQU,VMOVUPS,",
    offsets = "0,0,",
    addresses = "0x1a0f,0x1a1d,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "VMOVSD,VMOVSD,VMOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x1a4c,0x1a51,0x1a5f,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLL",
    opcodes = "VCOMISD,VCOMISD,VCOMISD,",
    offsets = "0,8,16,",
    addresses = "0x187d,0x1889,0x18bf,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 24,
    accessed_memory_nooverlap = 24,
    accessed_memory_overlap = 0,
    span = 24,
    head = 0,
    unroll_factor = 3,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "VMOVSD,VMOVSD,VMOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x1a04,0x1a09,0x1a18,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
}
