;****************************************
;  btoa  -  convert unsigned value in
;    ta, ta+1 to ASCII characters in
;    outbuf.
;
;    Bibo Assembler Toolsdisk
;    
; 
btoa 
	lda #$80
	sta ea
	
	ldx #8
btoa1	lda #0
	sta tmp
btoa2	lda ta
	sec
	sbc ntab,x
	tay
	lda ta+1
	sbc ntab+1,x
	bcc btoa3
	sta ta+1
	sty ta
	inc tmp
	jmp btoa2
btoa3   lda tmp
	bne btoa4
	cpx #0
	beq btoa4
	bit ea
	bmi btoa5
btoa4   asl ea
	ora #'0
	jsr ptrout
btoa5	dex
	dex
	bpl btoa1
	rts
ntab	.byte 1,0	; 1
	.byte 10,0	; 10
	.byte 100,0	; 100
	.byte $E8,3	; 1000
	.byte $10,$27	; 10000
	