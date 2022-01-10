_group = {
  {
    group_size = 10,
    pattern = "LSLSLSLSLS",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-40,-40,-32,-32,-24,-24,-16,-16,-8,-8,",
    addresses = "0xcd0d,0xcd16,0xcd42,0xcd4b,0xcd77,0xcd80,0xcdac,0xcdb5,0xcde1,0xcdea,",
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
    group_size = 5,
    pattern = "LLLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-40,-32,-24,-16,-8,",
    addresses = "0xccf8,0xcd2d,0xcd62,0xcd97,0xcdcc,",
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
    group_size = 4,
    pattern = "LLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-32,-24,-16,-8,",
    addresses = "0xcd1b,0xcd50,0xcd85,0xcdba,",
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
    addresses = "0xccdc,",
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
    group_size = 4,
    pattern = "LLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-32,-24,-16,-8,",
    addresses = "0xcd20,0xcd55,0xcd8a,0xcdbf,",
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
    opcodes = "MULSD,MULSD,MULSD,MULSD,MULSD,",
    offsets = "101443,101390,101337,101284,101231,",
    addresses = "0xcd05,0xcd3a,0xcd6f,0xcda4,0xcdd9,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 220,
    head = 0,
    unroll_factor = 5,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xccd8,",
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