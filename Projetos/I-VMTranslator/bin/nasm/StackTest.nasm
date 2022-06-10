; 0 - PUSH constant 17
movw $17, %D
; 1 - PUSH constant 17
movw $17, %D
; 2 - EQ
; 3 - PUSH constant 17
movw $17, %D
; 4 - PUSH constant 16
movw $16, %D
; 5 - EQ
; 6 - PUSH constant 16
movw $16, %D
; 7 - PUSH constant 17
movw $17, %D
; 8 - EQ
; 9 - PUSH constant 892
movw $892, %D
; 10 - PUSH constant 891
movw $891, %D
; 11 - LT
; 12 - PUSH constant 891
movw $891, %D
; 13 - PUSH constant 892
movw $892, %D
; 14 - LT
; 15 - PUSH constant 891
movw $891, %D
; 16 - PUSH constant 891
movw $891, %D
; 17 - LT
; 18 - PUSH constant 32767
movw $32767, %D
; 19 - PUSH constant 32766
movw $32766, %D
; 20 - GT
; 21 - PUSH constant 32766
movw $32766, %D
; 22 - PUSH constant 32767
movw $32767, %D
; 23 - GT
; 24 - PUSH constant 32766
movw $32766, %D
; 25 - PUSH constant 32766
movw $32766, %D
; 26 - GT
; 27 - PUSH constant 57
movw $57, %D
; 28 - PUSH constant 31
movw $31, %D
; 29 - PUSH constant 53
movw $53, %D
; 30 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %D
movw %D, (%A)
; 31 - PUSH constant 112
movw $112, %D
; 32 - SUB
; 33 - NEG
; 34 - AND
; 35 - PUSH constant 82
movw $82, %D
; 36 - OR
; End
