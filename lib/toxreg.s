;**********************************************
;  toxreg  -  pop the stack to x-register
;
toareg
    dec sp
    ldy sp
    ldx stack+$80,y
    stx xreg+1
    lda stack,y
    sta xreg
    rts
