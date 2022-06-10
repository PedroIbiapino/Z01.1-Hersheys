; 0 - PUSH constant 3030
movw $3030, %D
; 1 - POP pointer 0
; 2 - PUSH constant 3040
movw $3040, %D
; 3 - POP pointer 1
; 4 - PUSH constant 32
movw $32, %D
; 5 - POP this 2
; 6 - PUSH constant 46
movw $46, %D
; 7 - POP that 6
; 8 - PUSH pointer 0
; 9 - PUSH pointer 1
; 10 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %D
movw %D, (%A)
; 11 - PUSH this 2
; 12 - SUB
; 13 - PUSH that 6
; 14 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %D
movw %D, (%A)
; End
