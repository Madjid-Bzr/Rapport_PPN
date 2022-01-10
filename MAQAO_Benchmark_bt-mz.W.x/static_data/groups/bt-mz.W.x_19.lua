_group = {
  {
    group_size = 6,
    pattern = "LSLLLL",
    opcodes = "MOV,MOVSD,MOVAPD,MOVAPD,MOVSD,CMP,",
    offsets = "24,152,176,192,208,16,",
    addresses = "0x4b64,0x4b81,0x4b92,0x4b9b,0x4ba4,0x4bc2,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 60,
    accessed_memory_nooverlap = 60,
    accessed_memory_overlap = 0,
    span = 200,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "SS",
    opcodes = "MOVUPS,MOVUPS,",
    offsets = "0,16,",
    addresses = "0x4bb1,0x4bb4,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 2,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MULSD,",
    offsets = "134637,",
    addresses = "0x4b73,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOV,",
    offsets = "0,",
    addresses = "0x4b8f,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "S",
    opcodes = "MOVSD,",
    offsets = "32,",
    addresses = "0x4bb8,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
}