_group = {
  {
    group_size = 8,
    pattern = "LLLLLLLL",
    opcodes = "VPMULLD,VPMULLD,VPMULLD,VPMULLD,VPMULLD,VPMULLD,VPMULLD,VPMULLD,",
    offsets = "0,32,64,96,128,160,192,224,",
    addresses = "0x9d1,0x9d7,0x9de,0x9e5,0x9f1,0x9fb,0xa05,0xa15,",
    stride_status = "Success",
    stride = 256,
    memory_status = "Success",
    accessed_memory = 256,
    accessed_memory_nooverlap = 256,
    accessed_memory_overlap = 0,
    span = 256,
    head = 256,
    unroll_factor = 8,
  },
  {
    group_size = 8,
    pattern = "SSSSSSSS",
    opcodes = "VMOVDQA,VMOVDQA,VMOVDQA,VMOVDQA,VMOVDQA,VMOVDQA,VMOVDQA,VMOVDQA,",
    offsets = "0,32,64,96,128,160,192,224,",
    addresses = "0x9ec,0xa0f,0xa1f,0xa25,0xa2b,0xa34,0xa3d,0xa46,",
    stride_status = "Success",
    stride = 256,
    memory_status = "Success",
    accessed_memory = 256,
    accessed_memory_nooverlap = 256,
    accessed_memory_overlap = 0,
    span = 256,
    head = 256,
    unroll_factor = 8,
  },
}