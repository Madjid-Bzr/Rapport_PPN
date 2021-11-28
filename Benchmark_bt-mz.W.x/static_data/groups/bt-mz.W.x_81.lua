_group = {
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "8,",
    addresses = "0x10c24,",
    stride_status = "Success",
    stride = -40,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 34,
    pattern = "LLLLSSSLSSLSSSSSLSSSSSLSSSSSLSSSSS",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "8,56,64,72,8,8,8,80,8,8,16,16,16,16,16,16,24,24,24,24,24,24,32,32,32,32,32,32,40,40,40,40,40,40,",
    addresses = "0x10c34,0x10c39,0x10c42,0x10c47,0x10c50,0x10c65,0x10c7a,0x10c8f,0x10c94,0x10ca9,0x10cb6,0x10cc3,0x10cd8,0x10ced,0x10d02,0x10d17,0x10d24,0x10d31,0x10d46,0x10d5b,0x10d70,0x10d85,0x10d92,0x10d9f,0x10db4,0x10dc9,0x10dde,0x10df3,0x10e00,0x10e09,0x10e1a,0x10e2b,0x10e3c,0x10e4d,",
    stride_status = "Success",
    stride = -40,
    memory_status = "Success",
    accessed_memory = 272,
    accessed_memory_nooverlap = 72,
    accessed_memory_overlap = 200,
    span = 80,
    head = 72,
    unroll_factor = 1,
  },
  {
    group_size = 24,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MULSD,MULSD,MULSD,MULSD,MULSD,",
    offsets = "640,680,720,760,608,648,688,728,768,616,656,696,736,776,624,664,704,744,784,632,672,712,752,792,",
    addresses = "0x10c55,0x10c6a,0x10c7f,0x10c99,0x10cae,0x10cc8,0x10cdd,0x10cf2,0x10d07,0x10d1c,0x10d36,0x10d4b,0x10d60,0x10d75,0x10d8a,0x10da4,0x10db9,0x10dce,0x10de3,0x10df8,0x10e0e,0x10e1f,0x10e30,0x10e41,",
    stride_status = "Success",
    stride = -600,
    memory_status = "Success",
    accessed_memory = 192,
    accessed_memory_nooverlap = 192,
    accessed_memory_overlap = 0,
    span = 192,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0x10c20,",
    stride_status = "Success",
    stride = -600,
    memory_status = "Success",
    accessed_memory = 8,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 0,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
}
