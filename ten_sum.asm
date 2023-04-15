; Add 10 numbers
; Data in x3010, store result in R5

; R2 = memory x3010, R3 = Mem[R2], R4 = count = 10

.ORIG x3000
  AND R1, R1, #0
  AND R4, R4, #0
  ADD R4, R4, #10
  LEA R2, Data

Loop LDR R3, R2, #0
  ADD R1, R1, R3
  ADD R2, R2, #1
  ADD R4, R4, #-1
  BRp Loop

  HALT

  .BLKW #6
Data .FILL x3107
  .FILL x2819
  .FILL x0110
  .FILL x0310
  .FILL x0110
  .FILL x1110
  .FILL x11B1
  .FILL x0019
  .FILL x0007
  .FILL x0004
.END