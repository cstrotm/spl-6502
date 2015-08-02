;**********************************************
;  fromxreg  -  read the X register
;

fromxreg
    lda xreg
    ldy sp
    sta stack,y
    lda xreg+1
    sta stack+$80,y
    inc sp
    rts
