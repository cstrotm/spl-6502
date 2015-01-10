;****************************************
;  over  -  ( a b -- a b a )
;
over 
    ldy sp
    dey
    dey
    dey
    ldx stack,y    ;  a - high
    dey
    lda stack,y    ;  a - low
    jmp push    ;  push over b

