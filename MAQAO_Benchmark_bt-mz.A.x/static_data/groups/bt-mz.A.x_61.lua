_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xb7f9,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 9,
    pattern = "LLLLLLLLL",
    opcodes = "MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,CMP,",
    offsets = "56,48,40,32,24,16,8,64,0,",
    addresses = "0xb620,0xb642,0xb67a,0xb76f,0xb826,0xb8d6,0xb8e1,0xb8f1,0xb964,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 72,
    accessed_memory_nooverlap = 72,
    accessed_memory_overlap = 0,
    span = 72,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 7,
    pattern = "LLLLLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-40,-24,-32,-24,-8,-16,-8,",
    addresses = "0xb637,0xb650,0xb68d,0xb725,0xb782,0xb7bb,0xb847,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 56,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 16,
    span = 40,
    head = 40,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "ADDSD,",
    offsets = "0,",
    addresses = "0xb820,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xb610,",
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
    addresses = "0xb688,0xb720,0xb7b6,0xb84c,",
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
    opcodes = "ADDSD,",
    offsets = "0,",
    addresses = "0xb887,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "SUBSD,MOVSD,",
    offsets = "0,0,",
    addresses = "0xb787,0xb91e,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 8,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 10,
    pattern = "LSLSLSLSLS",
    opcodes = "ADDSD,MOVSD,ADDSD,MOVSD,ADDSD,MOVSD,ADDSD,MOVSD,ADDSD,MOVSD,",
    offsets = "-40,-40,-32,-32,-24,-24,-16,-16,-8,-8,",
    addresses = "0xb675,0xb683,0xb6ec,0xb71b,0xb75d,0xb7b1,0xb7ea,0xb83c,0xb8a8,0xb95f,",
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
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xb815,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xb6b6,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xb66f,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "ADDSD,",
    offsets = "0,",
    addresses = "0xb6c6,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 7,
    pattern = "LLLLLLL",
    opcodes = "SUBSD,ADDSD,MOVSD,MOVSD,SUBSD,MOVSD,MOVSD,",
    offsets = "-24,-40,-32,-24,-8,-16,-8,",
    addresses = "0xb655,0xb662,0xb699,0xb730,0xb78d,0xb7c0,0xb85c,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 56,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 16,
    span = 40,
    head = 40,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "ADDSD,MULSD,",
    offsets = "0,0,",
    addresses = "0xb792,0xb929,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 8,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 20,
    pattern = "LLLLLLLLLLLLLLLLLLLL",
    opcodes = "MULSD,MULSD,MULSD,MULSD,MULSD,MOVSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MOVSD,MOVSD,MULSD,MULSD,MULSD,MULSD,MULSD,",
    offsets = "106174,107065,105867,106924,106018,105744,106795,107022,107664,105843,106638,105744,105517,107493,107452,105410,106432,105338,105263,105413,",
    addresses = "0xb65a,0xb667,0xb6cc,0xb6e4,0xb6f6,0xb748,0xb755,0xb762,0xb798,0xb7a5,0xb7e2,0xb808,0xb82b,0xb862,0xb86b,0xb88d,0xb8a0,0xb8ce,0xb910,0xb953,",
    stride_status = "RIP based value",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 160,
    accessed_memory_nooverlap = 147,
    accessed_memory_overlap = 13,
    span = 2409,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MULSD,",
    offsets = "0,",
    addresses = "0xb900,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xb63c,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MULSD,",
    offsets = "0,",
    addresses = "0xb8eb,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xb841,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xb852,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xb692,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xb8db,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xb625,",
    stride_status = "Success",
    stride = 8,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 8,
    unroll_factor = 1,
  },
}
