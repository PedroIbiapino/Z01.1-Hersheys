; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH argument 0
leaw $0,%A
movw %A, %D
leaw %ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 2 - POP static 0
; 3 - PUSH argument 1
leaw $1,%A
movw %A, %D
leaw %ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 4 - POP static 1
; 5 - PUSH constant 0
leaw $0,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 8 - PUSH static 0
; 9 - PUSH static 1
; 10 - SUB
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $SP, %A
subw (%A),$1, %A
subw (%A), %D, %D
movw %D, (%A)
; 13 - PUSH constant 6
leaw $6,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 14 - PUSH constant 8
leaw $8,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 16 - POP temp 0
; 17 - PUSH constant 23
leaw $23,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 18 - PUSH constant 15
leaw $15,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 20 - POP temp 0
; 23 - Goto Incondicional
leaw $WHILE%A
jmp
nop
; 25 - PUSH argument 0
leaw $0,%A
movw %A, %D
leaw %ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 26 - POP static 0
; 27 - PUSH argument 1
leaw $1,%A
movw %A, %D
leaw %ARG,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 28 - POP static 1
; 29 - PUSH constant 0
leaw $0,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 32 - PUSH static 0
; 33 - PUSH static 1
; 34 - SUB
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $SP, %A
subw (%A),$1, %A
subw (%A), %D, %D
movw %D, (%A)
; End
