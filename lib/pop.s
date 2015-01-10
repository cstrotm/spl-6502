;**********************************************
;  pop  -  pop the stack to AX
;
pop 
    dec sp
    ldy sp
    ldx stack+$80,y
    lda stack,y
    rts

