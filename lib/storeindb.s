;**********************************************
;  storeindb  -  pop the stack and store an
;	         location pointed to by B-Reg
;	         (B!)
;
storeindb 
    dec sp
    ldx sp
    ldy #1
    lda stack+$80,x  ; high-byte
    sta (breg),y
    lda stack,x      ; low-byte
    dey
    sta (breg),y	
    rts