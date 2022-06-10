; 0 - POPP temp 0
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
leaw $5,%A
movw %D, (%A)
; End
