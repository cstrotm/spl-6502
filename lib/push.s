;**********************************************
;  push  -  Push AX onto the data stack
;  push0a - push A onto the data stack, highbyte (X) is zero
;

push0a
    ldx #0
push 
    ldy sp
    sta stack,y
    txa
    sta stack+$80,y
    inc sp
    rts

