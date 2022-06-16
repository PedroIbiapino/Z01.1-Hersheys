; 0 - LT
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
jl %D
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
; End
