;****************************************
;  dmod  -  32-bit mod
;
dmod 
    jsr ddiv        ;  divide
    lda rem
    ldx rem+1
    jsr push        ;  push remainder
    lda rem+2
    ldx rem+3
    jmp push

