; 0 - PUSH constant 5
movw $5, %D
; 1 - PUSH constant 9
movw $9, %D
; 2 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %D
movw %D, (%A)
; End
