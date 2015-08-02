;**********************************************
;  toareg  -  pop the stack to a-register
;
toareg
    dec sp
    ldy sp
    ldx stack+$80,y
    stx areg+1
    lda stack,y
    sta areg
    rts
