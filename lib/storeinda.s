;**********************************************
;  storeinda  -  pop the stack and store an
;	         location pointed to by A-Reg
;	         (A!)
;
storeinda 
    dec sp
    ldx sp
    ldy #1
    lda stack+$80,x  ; high-byte
    sta (areg),y
    lda stack,x      ; low-byte
    dey
    sta (areg),y	
    rts