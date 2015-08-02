;**********************************************
;  fromyreg  -  read the Y register
;

fromyreg
    lda yreg
    ldy sp
    sta stack,y
    lda yreg+1
    sta stack+$80,y
    inc sp
    rts
