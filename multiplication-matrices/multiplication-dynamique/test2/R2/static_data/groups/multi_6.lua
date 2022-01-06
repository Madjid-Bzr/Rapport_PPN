_group = {
  {
    group_size = 4,
    pattern = "SSSS",
    opcodes = "MOV,MOV,MOV,MOV,",
    offsets = "0,4,8,12,",
    addresses = "0xeeb,0xf11,0xf35,0xf5d,",
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
    pattern = "LLLL",
    opcodes = "MOV,MOV,MOV,MOV,",
    offsets = "0,0,0,0,",
    addresses = "0xece,0xef4,0xf1a,0xf3f,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 24,
    span = 8,
    head = 0,
    unroll_factor = 4,
  },
}
