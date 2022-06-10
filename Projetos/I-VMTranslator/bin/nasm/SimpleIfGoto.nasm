; 0 - PUSH constant 5
movw $5, %D
; 1 - PUSH constant 15
movw $15, %D
; 2 - PUSH constant 15
movw $15, %D
; 3 - EQ
; 5 - PUSH constant 3
movw $3, %D
; 6 - POP temp 0
; 7 - PUSH constant 15
movw $15, %D
; 8 - PUSH constant 9
movw $9, %D
; 9 - EQ
; 11 - PUSH constant 2
movw $2, %D
; 12 - POP temp 1
; End
