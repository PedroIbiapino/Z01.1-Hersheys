; 0 - PUSH constant 10
leaw $10,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 1 - PUSH local 0
leaw $0,%A
movw %A, %D
leaw %LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 2 - POP local 0
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $0,%A
movw %A, %D
leaw $LCL, %A
addw (%A), %D, %D
leaw $R15, %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %A
movw (%A), %D
leaw $R15, %A
movw (%A), %A
movw %D, (%A)
; 3 - PUSH constant 21
leaw $21,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 4 - PUSH constant 22
leaw $22,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 5 - POP argument 2
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $2,%A
movw %A, %D
leaw $ARG, %A
addw (%A), %D, %D
leaw $R15, %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %A
movw (%A), %D
leaw $R15, %A
movw (%A), %A
movw %D, (%A)
; 6 - POP argument 1
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $1,%A
movw %A, %D
leaw $ARG, %A
addw (%A), %D, %D
leaw $R15, %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %A
movw (%A), %D
leaw $R15, %A
movw (%A), %A
movw %D, (%A)
; 7 - PUSH constant 36
leaw $36,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 8 - POP this 6
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $6,%A
movw %A, %D
leaw $THIS, %A
addw (%A), %D, %D
leaw $R15, %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %A
movw (%A), %D
leaw $R15, %A
movw (%A), %A
movw %D, (%A)
; 9 - PUSH constant 42
leaw $42,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 10 - PUSH constant 45
leaw $45,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 11 - POP that 5
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $5,%A
movw %A, %D
leaw $THAT, %A
addw (%A), %D, %D
leaw $R15, %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %A
movw (%A), %D
leaw $R15, %A
movw (%A), %A
movw %D, (%A)
; 12 - POP that 2
leaw $SP, %A
movw (%A), %D
decw %D
movw %D,(%A)
leaw $2,%A
movw %A, %D
leaw $THAT, %A
addw (%A), %D, %D
leaw $R15, %A
movw %D, (%A)
leaw $SP, %A
movw (%A), %A
movw (%A), %D
leaw $R15, %A
movw (%A), %A
movw %D, (%A)
; 13 - PUSH constant 510
leaw $510,%A
movw %A, %D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 14 - POP temp 6
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
movw (%A),%A
movw (%A),%D
leaw $11,%A
movw %D,(%A)
; 15 - PUSH local 0
leaw $0,%A
movw %A, %D
leaw %LCL,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 16 - PUSH that 5
leaw $5,%A
movw %A, %D
leaw %THAT,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 17 - ADD
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
; 18 - PUSH argument 1
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
; 19 - SUB
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
; 20 - PUSH this 6
leaw $6,%A
movw %A, %D
leaw %THIS,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 21 - PUSH this 6
leaw $6,%A
movw %A, %D
leaw %THIS,%A
addw (%A),%D,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 22 - ADD
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
; 23 - SUB
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
; 24 - PUSH temp 6
leaw $11,%A
movw (%A),%D
leaw %SP,%A
movw (%A), %A
movw %D, (%A)
leaw %SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 25 - ADD
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
; End
