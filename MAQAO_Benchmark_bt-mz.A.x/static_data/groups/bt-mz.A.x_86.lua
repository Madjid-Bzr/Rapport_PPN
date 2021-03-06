_group = {
  {
    group_size = 25,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,MULSD,",
    offsets = "0,8,16,24,32,0,8,16,24,32,0,8,16,24,32,0,8,16,24,32,0,8,16,24,32,",
    addresses = "0x1343c,0x1345b,0x13470,0x13485,0x1349a,0x134af,0x134c9,0x134df,0x134f5,0x1350b,0x13521,0x1353b,0x13551,0x13567,0x1357d,0x13593,0x135ad,0x135c3,0x135d9,0x135ef,0x13605,0x1361f,0x13635,0x1364b,0x13661,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 200,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 160,
    span = 40,
    head = 0,
    unroll_factor = 5,
  },
  {
    group_size = 1,
    pattern = "L",
    opcodes = "MOVSD,",
    offsets = "0,",
    addresses = "0x13438,",
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
  {
    group_size = 30,
    pattern = "LSSSSSLSSSSSLSSSSSLSSSSSLSSSSS",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "0,0,0,0,0,0,8,8,8,8,8,8,16,16,16,16,16,16,24,24,24,24,24,24,32,32,32,32,32,32,",
    addresses = "0x13447,0x1344f,0x13464,0x13479,0x1348e,0x134a3,0x134b3,0x134bc,0x134d2,0x134e8,0x134fe,0x13514,0x13525,0x1352e,0x13544,0x1355a,0x13570,0x13586,0x13597,0x135a0,0x135b6,0x135cc,0x135e2,0x135f8,0x13609,0x13612,0x13628,0x1363e,0x13654,0x1366d,",
    stride_status = "Not Analyzed",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 240,
    accessed_memory_nooverlap = 40,
    accessed_memory_overlap = 200,
    span = 40,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 24,
    pattern = "LLLLLLLLLLLLLLLLLLLLLLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "640,680,720,760,608,648,688,728,768,616,656,696,736,776,624,664,704,744,784,632,672,712,752,792,",
    addresses = "0x13453,0x13468,0x1347d,0x13492,0x134a7,0x134c1,0x134d7,0x134ed,0x13503,0x13519,0x13533,0x13549,0x1355f,0x13575,0x1358b,0x135a5,0x135bb,0x135d1,0x135e7,0x135fd,0x13617,0x1362d,0x13643,0x13659,",
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
}
