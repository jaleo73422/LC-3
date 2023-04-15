; Find position of first "1" from 15 numbers.
; The memory of first number is x3100. 
; The position of first number is 15. 
; Store -1 in R1, if there is no "1".
; R1 = 15, R2 = x3100, R3 = Mem[R2]

.ORIG x3000
  AND R1, R1, #0     ;0101 001 001 1 00000
  ADD R1, R1, #15    ;0001 001 001 1 01111

  LD R2 Addr         ;0010 010 000001000

Loop LDR R3, R2, #0  ;0110 011 010 000000
  ADD R3, R3, #-1    ;0001 011 011 1 11111
  BRz Bye            ;0000 010 000000110
  ADD R2, R2, #1     ;0001 010 010 1 00001
  ADD R1, R1, #-1    ;0001 001 001 1 11111
  BRp Loop           ;0000 001 111111001
  ADD R1, R1, #-1    ;0001 001 001 1 11111
  HALT               ;1111 0000 0010 0101

Addr .FILL x3100     ;
Bye HALT             ;
.END