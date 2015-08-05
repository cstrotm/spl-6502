;****************************************
;  type  -  print string at addr with len
;        ( adr len -- )
;
type
                jsr get_ta    ;  get len
                jsr get_tb    ;  get address
        	ldx ta
        	ldy #$FF	
type_1
                iny
                lda (tb),y    ;  get character
                jsr chout     ;  send to screen
                dex           ;  decrement counter 
                bne type_1
                rts
