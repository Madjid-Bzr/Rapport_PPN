_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xd5dc,",
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
  {
    group_size = 10,
    pattern = "LSLSLSLSLS",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-40,-40,-32,-32,-24,-24,-16,-16,-8,-8,",
    addresses = "0xd61e,0xd627,0xd660,0xd669,0xd6a2,0xd6ab,0xd6e4,0xd6ed,0xd726,0xd72f,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 40,
    span = 40,
    head = 40,
    unroll_factor = 1,
  },
  {
    group_size = 4,
    pattern = "LLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-32,-24,-16,-8,",
    addresses = "0xd62c,0xd66e,0xd6b0,0xd6f2,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 4,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xd5d8,",
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
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-40,-32,-24,-16,-8,",
    addresses = "0xd5fc,0xd63e,0xd680,0xd6c2,0xd704,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 40,
    unroll_factor = 5,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "MULSD,MULSD,MULSD,MULSD,MULSD,",
    offsets = "99122,99056,98990,98924,98858,",
    addresses = "0xd616,0xd658,0xd69a,0xd6dc,0xd71e,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 272,
    head = 0,
    unroll_factor = 5,
  },
  {
    group_size = 4,
    pattern = "LLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-32,-24,-16,-8,",
    addresses = "0xd631,0xd673,0xd6b5,0xd6f7,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 4,
  },
  {
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-40,-32,-24,-16,-8,",
    addresses = "0xd609,0xd64b,0xd68d,0xd6cf,0xd711,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 40,
    unroll_factor = 5,
  },
}