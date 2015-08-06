;****************************************
;  0trim  -  trim leading zeroes from
;            string at addr and make it
;            an counted string in PAD
;  ( addr len -- )
;
0trim
	jsr pop      ; get len
	sta tmp
	inc tmp
	jsr get_ta
	ldx #0
	ldy #$FF
0trim_1
	dec tmp
	beq 0trim_3   ; all zeros
	iny
	lda (ta),y
	cmp #48		; is 0?
	beq 0trim_1
0trim_2
	inx
	lda (ta),y
	sta outbuf,x	; store char
	iny
	dec tmp
	bpl 0trim_2
	dex
0trim_3
	stx outbuf	; count
	rts
	