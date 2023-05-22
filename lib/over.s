;****************************************
;  over  -  ( a b -- a b a )
;
over 
    ldy sp
    dey
    dey
    ldx stack+$80,y    ;  a - high
    lda stack,y        ;  a - low
    jmp push    ;  push over b

