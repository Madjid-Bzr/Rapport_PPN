_group = {
  {
    group_size = 9,
    pattern = "SLSLSLSLS",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-40,-32,-32,-24,-24,-16,-16,-8,-8,",
    addresses = "0xc9d8,0xc9dd,0xc9ea,0xc9ef,0xc9fc,0xca01,0xca0e,0xca13,0xca20,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 72,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 32,
    span = 40,
    head = 40,
    unroll_factor = 1,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "MULSD,MULSD,MULSD,MULSD,MULSD,",
    offsets = "102260,102238,102220,102202,102184,",
    addresses = "0xc9cc,0xc9e2,0xc9f4,0xca06,0xca18,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 84,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xc9c8,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
}
