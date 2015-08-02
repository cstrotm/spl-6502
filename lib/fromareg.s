;**********************************************
;  fromareg  -  read the A register
;

fromareg
    lda areg
    ldy sp
    sta stack,y
    lda areg+1
    sta stack+$80,y
    inc sp
    rts
	
