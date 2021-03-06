_group = {
  {
    group_size = 10,
    pattern = "LSLSLSLSLS",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "0,0,8,8,16,16,24,24,32,32,",
    addresses = "0x73b4,0x7406,0x7440,0x749c,0x751d,0x7572,0x75ad,0x7609,0x7674,0x7730,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 80,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 40,
    span = 40,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 4,
    pattern = "LLLL",
    opcodes = "SUBSD,SUBSD,MOVSD,MULSD,",
    offsets = "8,-8,8,-8,",
    addresses = "0x74b1,0x74f6,0x7627,0x7648,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 24,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 19,
    pattern = "LLLLLLLLLLLLLLLLLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,ADDSD,SUBSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "8,16,960,0,944,488,472,480,960,1904,944,1888,952,1432,1416,1424,1904,1888,1896,",
    addresses = "0x73c4,0x73d1,0x73da,0x73e2,0x73e6,0x740a,0x7412,0x747b,0x74a1,0x74a9,0x74cc,0x74ed,0x7551,0x7577,0x757f,0x75e8,0x760e,0x7616,0x770a,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 152,
    accessed_memory_nooverlap = 120,
    accessed_memory_overlap = 32,
    span = 1912,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 21,
    pattern = "LLLLLLLLLLLLLLLLLLLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,ADDSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,ADDSD,MULSD,MULSD,MOVSD,MOVSD,ADDSD,MOVSD,MOVSD,ADDSD,",
    offsets = "952,936,472,480,464,952,936,944,952,936,1416,1424,1408,952,936,0,8,-8,1888,1896,1880,",
    addresses = "0x741b,0x7423,0x7449,0x745a,0x7467,0x74bf,0x74d5,0x752d,0x7588,0x7590,0x75b6,0x75c7,0x75d4,0x7653,0x7660,0x767d,0x768a,0x7694,0x76d8,0x76e9,0x76f6,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 168,
    accessed_memory_nooverlap = 120,
    accessed_memory_overlap = 48,
    span = 1912,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 19,
    pattern = "LLLLLLLLLLLLLLLLLLL",
    opcodes = "MULSD,MULSD,MULSD,MULSD,MULSD,MOVSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MOVSD,MOVSD,MULSD,MOVSD,MULSD,MULSD,MULSD,",
    offsets = "123178,124074,123104,122857,123904,124785,122883,122651,123674,122739,122492,123507,124457,124410,122540,122294,122236,122178,123197,",
    addresses = "0x73ee,0x73f6,0x7438,0x746f,0x7490,0x74b6,0x7515,0x7545,0x7566,0x75a5,0x75dc,0x75fd,0x761f,0x762d,0x766c,0x7699,0x76cc,0x76fe,0x7722,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 152,
    accessed_memory_nooverlap = 152,
    accessed_memory_overlap = 0,
    span = 2615,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLL",
    opcodes = "MOVSD,MOVSD,ADDSD,",
    offsets = "0,8,-8,",
    addresses = "0x76b0,0x76bd,0x76c7,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 24,
    accessed_memory_nooverlap = 24,
    accessed_memory_overlap = 0,
    span = 24,
    head = 0,
    unroll_factor = 1,
  },
}
