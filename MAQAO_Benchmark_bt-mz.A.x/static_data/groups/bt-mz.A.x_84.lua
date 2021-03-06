_group = {
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "MOVSD,MOVSD,",
    offsets = "8,0,",
    addresses = "0xecce,0xee35,",
    stride_status = "Not Analyzed",
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
    group_size = 23,
    pattern = "SSSSSSSSSSSSSSSSSSSSSSS",
    opcodes = "MOVSD,MOV,MOV,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOV,MOV,MOVSD,MOVSD,MOVSD,MOV,MOV,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-160,-80,-40,-192,-152,-112,-32,-72,-184,-144,-64,-24,-104,-176,-136,-96,-16,-56,-168,-128,-88,-48,-8,",
    addresses = "0xecf9,0xed09,0xed11,0xed4a,0xed61,0xed7b,0xed85,0xed97,0xedaf,0xedc0,0xedcd,0xedd9,0xede1,0xedf9,0xee0a,0xee12,0xee1f,0xee2b,0xee55,0xee88,0xeea4,0xeec0,0xef00,",
    stride_status = "Success",
    stride = 200,
    memory_status = "Success",
    accessed_memory = 184,
    accessed_memory_nooverlap = 184,
    accessed_memory_overlap = 0,
    span = 192,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 25,
    pattern = "SSSSSSSSSSSSSSSSSSSSSSSSS",
    opcodes = "MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOVSD,MOVSD,MOVSD,MOV,MOV,MOV,MOVSD,MOV,MOV,MOVSD,MOV,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "-200,-120,-160,-80,-40,-112,-72,-32,-192,-152,-184,-64,-144,-24,-104,-136,-96,-56,-16,-176,-168,-128,-88,-8,-48,",
    addresses = "0xeeca,0xeed9,0xeee1,0xeeec,0xeef4,0xef13,0xef1b,0xef23,0xef30,0xef41,0xef60,0xef71,0xef79,0xef89,0xef91,0xef9b,0xefa6,0xefae,0xefb3,0xefc0,0xf01e,0xf02b,0xf039,0xf043,0xf048,",
    stride_status = "Success",
    stride = 200,
    memory_status = "Success",
    accessed_memory = 200,
    accessed_memory_nooverlap = 200,
    accessed_memory_overlap = 0,
    span = 200,
    head = 200,
    unroll_factor = 1,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MULSD,",
    offsets = "0,",
    addresses = "0xee3a,",
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
    group_size = 32,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "MOVSD,MOVSD,DIVSD,MOVSD,MOVSD,MOVSD,MULSD,MOVSD,MOVSD,MOVSD,MULSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MULSD,MOVSD,MULSD,MOVSD,MULSD,MOVSD,MULSD,MOVSD,MOVSD,MOVSD,MULSD,MULSD,MOVSD,MULSD,",
    offsets = "-32,-32,-40,-24,-16,-32,-24,-24,-32,-32,-16,-16,-32,-8,-32,-32,-8,-24,-32,-16,-32,-32,-32,-24,-16,-32,-24,-16,-8,-32,-24,-16,",
    addresses = "0xed19,0xed52,0xed57,0xed69,0xed80,0xed9c,0xeda1,0xedb7,0xedc8,0xede6,0xedeb,0xee01,0xee1a,0xee30,0xee48,0xee5d,0xee62,0xee8d,0xee92,0xeea9,0xeeae,0xeec5,0xef0e,0xef4d,0xef96,0xefc8,0xefcd,0xefd2,0xeffa,0xf026,0xf030,0xf03e,",
    stride_status = "Success",
    stride = 40,
    memory_status = "Success",
    accessed_memory = 256,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 216,
    span = 40,
    head = 40,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "SS",
    opcodes = "MOV,MOV,",
    offsets = "0,80,",
    addresses = "0xecd8,0xecdf,",
    stride_status = "Success",
    stride = 200,
    memory_status = "Success",
    accessed_memory = 16,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 0,
    span = 88,
    head = 0,
    unroll_factor = 2,
  },
  {
    group_size = 2,
    pattern = "LL",
    opcodes = "MOVSD,ADDSD,",
    offsets = "0,0,",
    addresses = "0xed1e,0xee73,",
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
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0xecc8,",
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
