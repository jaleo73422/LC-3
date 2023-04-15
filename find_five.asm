; Read consecutive numbers at ten positions starting from x3100
; R0 = 1, R1 = -5, R3 = 10, R4 = x3100, R2 = M[R4]

.ORIG x3000
  AND R0, R0, #0
  ADD R0, R0, #1

  AND R1, R1, #0
  ADD R1, R1, #-5


  AND R3, R3, #0
  ADD R3, R3, #10


  LD R4, Addr
;Loop LDR R2, R4, #0
;  ADD R2, R2, #-5
;  BRnp #1 
;  HALT
;  ADD R4, R4, #1
;  ADD R3, R3, #-1
;  BRp Loop
;  AND R0, R0, #0
;  HALT

;
  LDR R2, R4, #0
Loop ADD R2, R2, R1
  BRz Bye
  ADD R4, R4, #1
  LDR R2, R4, #0
  ADD R3, R3, #-1
  BRp Loop
  ADD R0, R0, #0
;

Bye HALT

Addr .FILL x3100
.END

;set number
; [x3100] 9
; [x3101] 7
; [x3102] 32
; [x3103] 0
; [x3104] -8
; [x3105] 19
; [x3106] 6
; [x3107] 13
; [x3108] 5
; [x3109] 61