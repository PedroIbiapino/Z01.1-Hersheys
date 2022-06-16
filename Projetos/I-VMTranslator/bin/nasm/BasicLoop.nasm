; 0 - PUSH constant 0
leaw $0,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 1 - POP temp 0
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $5,%A
movw %D,(%A)
; 2 - PUSH constant 1
leaw $1,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 3 - POP temp 1
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $6,%A
movw %D,(%A)
; Label (marcador)
LOOP_START:
; 4 - PUSH temp 0
leaw $5,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 5 - PUSH constant 10
leaw $10,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 6 - EQ
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $SP, %A
subw (%A),$1,%A
subw (%A), %D, %D
leaw $END1 %A
je %D
nop
leaw $SP, %A
subw (%A),$1,%A
movw $0, (%A)
leaw $END2, %A
jmp
nop
END1:
leaw $SP, %A
subw (%A),$1,%A
movw $-1,(%A)
END2:
; 7 - Goto Condicional
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw %D, %A
movw (%A), %D
notw %D
leaw $END, %A
je %D
nop
; 8 - PUSH temp 0
leaw $5,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 9 - PUSH constant 1
leaw $1,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 10 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %D
movw %D, (%A)
addw $1, %A, %D
leaw $0, %A
movw %D, (%A)
; 11 - POP temp 0
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $5,%A
movw %D,(%A)
; 12 - PUSH temp 1
leaw $6,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 13 - PUSH temp 1
leaw $6,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 14 - ADD
leaw $0, %A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
addw (%A), %D, %D
movw %D, (%A)
addw $1, %A, %D
leaw $0, %A
movw %D, (%A)
; 15 - POP temp 1
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $6,%A
movw %D,(%A)
; 16 - Goto Incondicional
leaw $LOOP_START,%A
jmp
nop
; Label (marcador)
END:
; End
