;************************************
; CTOGGLE ( n addr -- )
; toggle bits in byte at given address
;
ctoggle
	jsr get_ta
	jsr pop
	ldy #0
	eor (ta),y
	sta (ta),y
	rts

