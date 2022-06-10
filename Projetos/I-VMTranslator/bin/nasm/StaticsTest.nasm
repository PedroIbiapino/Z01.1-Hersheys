; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH argument 0
; 2 - POP static 0
; 3 - PUSH argument 1
; 4 - POP static 1
; 5 - PUSH constant 0
movw $0, %D
; 8 - PUSH static 0
; 9 - PUSH static 1
; 10 - SUB
; 13 - PUSH constant 6
movw $6, %D
; 14 - PUSH constant 8
movw $8, %D
; 16 - POP temp 0
; 17 - PUSH constant 23
movw $23, %D
; 18 - PUSH constant 15
movw $15, %D
; 20 - POP temp 0
; 25 - PUSH argument 0
; 26 - POP static 0
; 27 - PUSH argument 1
; 28 - POP static 1
; 29 - PUSH constant 0
movw $0, %D
; 32 - PUSH static 0
; 33 - PUSH static 1
; 34 - SUB
; End
