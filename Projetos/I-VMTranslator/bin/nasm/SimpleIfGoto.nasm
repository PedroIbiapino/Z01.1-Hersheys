; 0 - PUSH constant 5
leaw $5,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 1 - PUSH constant 15
leaw $15,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 2 - PUSH constant 15
leaw $15,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 3 - EQ
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
; 4 - Goto Condicional
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw %D, %A
movw (%A), %D
notw %D
leaw $IF1, %A
je %D
nop
; Label (marcador)
ELSE1:
; 5 - PUSH constant 3
leaw $3,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; Label (marcador)
IF1:
; 6 - POP temp 0
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $5,%A
movw %D,(%A)
; 7 - PUSH constant 15
leaw $15,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 8 - PUSH constant 9
leaw $9,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 9 - EQ
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
; 10 - Goto Condicional
leaw $SP, %A
movw (%A), %D
decw %D
movw %D, (%A)
movw %D, %A
movw (%A), %D
notw %D
leaw $IF2, %A
je %D
nop
; Label (marcador)
ELSE2:
; 11 - PUSH constant 2
leaw $2,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 12 - POP temp 1
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $6,%A
movw %D,(%A)
; Label (marcador)
IF2:
; End
