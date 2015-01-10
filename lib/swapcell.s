;**********************************************
;  swapcell  -  swap the lo/hi-byte of a 16bit
;               cell on the stack
swapcell
    ldy sp
    dey
    ldx stack+$80,y
    lda stack,y
    sta stack+$80,y
    txa
    sta stack,y
    rts

