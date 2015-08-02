;**********************************************
;  storeindbinc  -  pop the stack and store at
;	         location pointed to by B-Reg
;	         and increment B (B!+)
;
storeindbinc 
    dec sp
    ldx sp
    ldy #1
    lda stack+$80,x  ; high-byte
    sta (breg),y
    lda stack,x      ; low-byte
    dey
    sta (breg),y
    inc breg
    beq .1
    inc breg+1	 	
.1  rts