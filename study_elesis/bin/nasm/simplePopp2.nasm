; 0 - POPP temp 2
leaw $SP, %A
movw (%A), %A
decw %A
movw (%A), %D
leaw $7,%A
movw %D, (%A)
; End
