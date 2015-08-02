;**********************************************
;  toyreg  -  pop the stack to y-register
;
toareg
    dec sp
    ldy sp
    ldx stack+$80,y
    stx yreg+1
    lda stack,y
    sta yreg
    rts
