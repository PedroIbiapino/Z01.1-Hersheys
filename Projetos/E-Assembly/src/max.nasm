; Arquivo: Max.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares 
; Data: 27/03/2017
; Log :
;     - Rafael Corsi portado para Z01
;
; Calcula R2 = max(R0, R1)  (R0,R1,R2 se referem a  RAM[0],RAM[1],RAM[2])
; ou seja, o maior valor que estiver, ou em R0 ou R1 sera copiado para R2
; Estamos considerando número inteiros

leaw $R0, %A
movw (%A), %D
leaw $R1, %A
movw (%A), %A
subw %A, %D, %D

leaw $POSITIVO, %A
jg %D
nop

leaw $NEGATIVO, %A
jl %D
nop

leaw $ZERO, %A
je %D
nop

POSITIVO:
leaw $R1, %A
movw (%A), %D
leaw $R2, %A
movw %D, (%A)
leaw $END, %A
jmp
nop

NEGATIVO:
leaw $R0, %A
movw (%A), %D
leaw $R2, %A
movw %D, (%A)
leaw $END, %A
jmp
nop

ZERO:
nop