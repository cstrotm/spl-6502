;**********************************************
;  frombreg  -  read the B register
;

frombreg
    lda breg
    ldy sp
    sta stack,y
    lda breg+1
    sta stack+$80,y
    inc sp
    rts
