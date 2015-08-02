;**********************************************
;  storeindainc  -  pop the stack and store at
;	         location pointed to by A-Reg
;	         and increment A (A!+)
;
storeindainc 
    dec sp
    ldx sp
    ldy #1
    lda stack+$80,x  ; high-byte
    sta (areg),y
    lda stack,x      ; low-byte
    dey
    sta (areg),y
    inc areg
    beq .1
    inc areg+1	 	
.1  rts