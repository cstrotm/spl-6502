;****************************************
;  &. ampdot  -  convert 32bit number d
;                into ASCII at addr
;                addr must be 10 bytes                
;  ( addr d -- )
;
ampdot
                jsr get_op1
        	jsr get_ta
                lda #10
        	sta op2
		ldy #9
ampdot_1
                sty op2+1
                jsr div32
                ldy op2+1
                clc
                adc #48
                sta (ta),y
                dey
                bpl ampdot_1
                rts
div32
                lda #0
                ldy #$20
div32_1		asl op1
		rol op1+1
		rol op1+2
		rol op1+3
		rol
		cmp op2
		bcc div32_2
		sbc op2
		inc op1
div32_2		dey
		bne div32_1
		rts
