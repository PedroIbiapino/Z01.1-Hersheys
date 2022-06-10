; 0 - PUSH constant 0
movw $0, %D
; 1 - POP temp 0
; 2 - PUSH constant 1
movw $1, %D
; 3 - POP temp 1
; 4 - PUSH temp 0
; 5 - PUSH constant 10
movw $10, %D
; 6 - EQ
; 8 - PUSH temp 0
; 9 - PUSH constant 1
movw $1, %D
; 10 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %D
movw %D, (%A)
; 11 - POP temp 0
; 12 - PUSH temp 1
; 13 - PUSH temp 1
; 14 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %D
movw %D, (%A)
; 15 - POP temp 1
; End
