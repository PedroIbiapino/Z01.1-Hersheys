; 0 - PUSH constant 111
movw $111, %D
; 1 - PUSH constant 333
movw $333, %D
; 2 - PUSH constant 888
movw $888, %D
; 3 - POP static 8
; 4 - POP static 3
; 5 - POP static 1
; 6 - PUSH static 3
; 7 - PUSH static 1
; 8 - SUB
; 9 - PUSH static 8
; 10 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %D
movw %D, (%A)
; End
