_group = {
  {
    group_size = 5,
    pattern = "SSSSS",
    opcodes = "MOVUPS,MOVUPS,MOVUPS,MOVUPS,MOVUPS,",
    offsets = "-64,-80,-48,-32,-16,",
    addresses = "0x18bc9,0x18bd0,0x18bd4,0x18bd8,0x18bdc,",
    stride_status = "Success",
    stride = 80,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 80,
    accessed_memory_overlap = 0,
    span = 80,
    head = 80,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLL",
    opcodes = "MOVSD,MOVUPD,MOVUPD,",
    offsets = "32,16,0,",
    addresses = "0x18b90,0x18b96,0x18bae,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 40,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 0,
    span = 40,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLL",
    opcodes = "MOVSD,MOVSD,MOVHPD,",
    offsets = "8,24,0,",
    addresses = "0x18ba0,0x18ba7,0x18bb4,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 24,
    accessed_memory_nooverlap = 24,
    accessed_memory_overlap = 0,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "MOVHPD,MOVHPD,",
    offsets = "16,32,",
    addresses = "0x18bbb,0x18bc2,",
    stride_status = "Iteration not constant",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 24,
    head = 0,
    unroll_factor = 2,
  },
}
