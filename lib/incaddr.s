	;; **********************************
	;; ++ ( addr -- ) increment value at
	;; addr by one

incaddr
	jsr get_ta
	ldy #0
	lda (ta),y
        clc
        adc #1
        sta (ta),y
	bcc inc2
	iny
	lda (ta),y
	adc #0
	sta (ta),y
inc2	rts
	