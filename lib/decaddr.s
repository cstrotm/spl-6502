	;; **********************************
	;; -- ( addr -- ) decrement value at
	;; addr by one

decaddr
	jsr get_ta
	ldy #0
	lda (ta),y
        sec
        sbc #1
        sta (ta),y
	bcs dec2
	iny
	lda (ta),y
	sbc #0
	sta (ta),y
dec2	rts
	