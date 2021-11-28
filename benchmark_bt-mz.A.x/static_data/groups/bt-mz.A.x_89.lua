_group = {
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "MOVSD,MOVSD,",
    offsets = "8,0,",
    addresses = "0x1147c,0x115de,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 16,
    head = 0,
    unroll_factor = 2,
  },
  {
    group_size = 25,
    pattern = "SSSSSSSSSSSSSSSSSSSSSSSSS",
    opcodes = "MOV,MOV,MOV,MOV,MOV,MOVSD,MOV,MOV,MOV,MOVSD,MOVSD,MOV,MOV,MOV,MOVSD,MOV,MOV,MOVSD,MOV,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-200,-120,-160,-80,-40,-152,-112,-72,-32,-192,-184,-64,-144,-24,-104,-136,-96,-56,-16,-176,-168,-128,-88,-8,-48,",
    addresses = "0x1166f,0x1167e,0x11686,0x11691,0x11699,0x116be,0x116c6,0x116ce,0x116d6,0x116e7,0x11702,0x11713,0x1171b,0x1172b,0x11733,0x1173d,0x11748,0x11750,0x11755,0x11762,0x117b2,0x117d1,0x117db,0x117e8,0x117ed,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 200,
    accessed_memory_nooverlap = 200,
    accessed_memory_overlap = 0,
    span = 200,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MULSD,",
    offsets = "0,",
    addresses = "0x115e3,",
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
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0x11477,",
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
    group_size = 25,
    pattern = "SSSSSSSSSSSSSSSSSSSSSSSSS",
    opcodes = "MOV,MOV,MOVSD,MOV,MOV,MOVSD,MOVSD,MOV,MOV,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOV,MOVSD,MOVSD,MOV,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "0,40,80,120,160,8,48,128,168,88,16,56,96,176,136,64,24,104,184,144,32,72,112,152,192,",
    addresses = "0x11482,0x1148c,0x1149f,0x114b0,0x114b8,0x114ee,0x114fc,0x11506,0x11511,0x11520,0x1153e,0x11555,0x11568,0x11572,0x11587,0x11599,0x115aa,0x115b8,0x115c2,0x115d1,0x115fc,0x11618,0x11646,0x11662,0x116a5,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 200,
    accessed_memory_nooverlap = 200,
    accessed_memory_overlap = 0,
    span = 200,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 31,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "MOVSD,MULSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MULSD,MOVSD,MOVSD,MOVSD,MULSD,MOVSD,MULSD,MOVSD,MOVSD,MOVSD,MULSD,MOVSD,MOVSD,MULSD,MULSD,MOVSD,MOVSD,MOVSD,MULSD,MOVSD,MULSD,MULSD,",
    offsets = "16,24,24,16,24,16,24,32,24,32,32,24,40,24,16,24,24,40,24,32,24,16,24,32,16,24,32,40,16,24,32,",
    addresses = "0x114c3,0x114cd,0x114f3,0x11501,0x11525,0x11543,0x1155a,0x1156d,0x1158f,0x11594,0x115af,0x115bd,0x115d9,0x115f3,0x11601,0x1160a,0x1161d,0x11622,0x1164b,0x11650,0x1166a,0x116b1,0x116f8,0x11738,0x1176a,0x1176f,0x11774,0x117a9,0x117be,0x117d6,0x117e0,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 248,
    accessed_memory_nooverlap = 32,
    accessed_memory_overlap = 216,
    span = 32,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "MOVSD,ADDSD,",
    offsets = "0,0,",
    addresses = "0x1152a,0x11633,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 8,
    accessed_memory_overlap = 8,
    span = 8,
    head = 0,
    unroll_factor = 1,
  },
}
