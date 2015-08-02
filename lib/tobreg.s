;**********************************************
;  tobreg  -  pop the stack to b-register
;
toareg
    dec sp
    ldy sp
    ldx stack+$80,y
    stx breg+1
    lda stack,y
    sta breg
    rts
