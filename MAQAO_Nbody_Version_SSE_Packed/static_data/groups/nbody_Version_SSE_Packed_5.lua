_group = {
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "MOVDQU,MOVUPS,",
    offsets = "0,0,",
    addresses = "0x17c2,0x17cf,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "MOVSD,MOVSD,MOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x184b,0x1850,0x1860,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "MOVDQU,MOVUPS,",
    offsets = "0,0,",
    addresses = "0x177a,0x1787,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "MOVDQU,MOVUPS,",
    offsets = "0,0,",
    addresses = "0x1856,0x1864,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "MOVSD,MOVSD,MOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x1644,0x1649,0x1659,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "MOVSD,MOVSD,MOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x1690,0x1696,0x16a5,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 13,
    pattern = "LLLLLLLLLLLLL",
    opcodes = "COMISD,COMISD,COMISD,COMISD,COMISD,COMISD,COMISD,COMISD,COMISD,COMISD,COMISD,COMISD,COMISD,",
    offsets = "8,16,24,32,40,48,56,64,72,80,88,96,104,",
    addresses = "0x1679,0x16b2,0x16c3,0x16fa,0x170c,0x1744,0x1757,0x178f,0x17a0,0x17d6,0x17e8,0x1820,0x1833,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 104,
    accessed_memory_nooverlap = 104,
    accessed_memory_overlap = 0,
    span = 104,
    head = 0,
    unroll_factor = 13,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "MOVSD,MOVSD,MOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x1800,0x1805,0x1814,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "MOVSD,MOVSD,MOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x17b7,0x17bc,0x17cb,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "MOVDQU,MOVUPS,",
    offsets = "0,0,",
    addresses = "0x180b,0x1818,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "MOVDQU,MOVUPS,",
    offsets = "0,0,",
    addresses = "0x164f,0x165d,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 16,
    pattern = "LLLLLLLLLLLLLLLL",
    opcodes = "MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,MOVSD,",
    offsets = "0,8,0,8,0,8,0,8,0,8,0,8,0,8,0,8,",
    addresses = "0x161e,0x1629,0x1661,0x1673,0x16ae,0x16be,0x16f5,0x1707,0x173f,0x1751,0x178b,0x179b,0x17d2,0x17e2,0x181b,0x182d,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 128,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 112,
    span = 16,
    head = 0,
    unroll_factor = 2,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "MOVDQU,MOVUPS,",
    offsets = "0,0,",
    addresses = "0x169c,0x16aa,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "MOVDQU,MOVUPS,",
    offsets = "0,0,",
    addresses = "0x16e5,0x16f2,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 8,
    pattern = "LLLLLLLL",
    opcodes = "MOV,MOV,MOV,MOV,MOV,MOV,MOV,MOV,",
    offsets = "18955,18879,18806,18733,18657,18585,18512,18437,",
    addresses = "0x1636,0x1682,0x16cb,0x1714,0x1760,0x17a8,0x17f1,0x183c,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 64,
    accessed_memory_nooverlap = 64,
    accessed_memory_overlap = 0,
    span = 526,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "MOVSD,MOVSD,MOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x176f,0x1774,0x1783,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLL",
    opcodes = "COMISD,COMISD,COMISD,",
    offsets = "0,8,16,",
    addresses = "0x1622,0x162e,0x1666,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 24,
    accessed_memory_nooverlap = 24,
    accessed_memory_overlap = 0,
    span = 24,
    head = 0,
    unroll_factor = 3,
  },
  {
    group_size = 2,
    pattern = "LS",
    opcodes = "MOVDQU,MOVUPS,",
    offsets = "0,0,",
    addresses = "0x172e,0x173c,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "MOVSD,MOVSD,MOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x1723,0x1728,0x1738,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLS",
    opcodes = "MOVSD,MOVSD,MOVUPS,",
    offsets = "0,8,0,",
    addresses = "0x16da,0x16df,0x16ee,",
    stride_status = "Not mono block loop",
    stride = 0,
    memory_status = "Success",
    accessed_memory = 32,
    accessed_memory_nooverlap = 16,
    accessed_memory_overlap = 16,
    span = 16,
    head = 0,
    unroll_factor = 1,
  },
}
