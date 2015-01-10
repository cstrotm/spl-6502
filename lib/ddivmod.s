;****************************************
;  ddivmod  -  32-bit divide & mod
;
ddivmod 
    jsr ddiv        ;  divide
    lda res
    ldx res+1
    jsr push        ;  push quotient
    lda res+2
    ldx res+3
    jsr push
    lda rem
    ldx rem+1
    jsr push        ;  push remainder
    lda rem+2
    ldx rem+3
    jmp push

