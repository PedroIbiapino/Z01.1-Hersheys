; 0 - POPP temp 2
leaw %SP, %A
movw, (%A), %D
decw %D
movw %D, %A
movw (%A), %D
leaw, $7, %A
movw, %D, (%A)
; End
