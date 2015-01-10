;****************************************
;  push_rem
;
push_rem 
    lda rem
    ldx rem+1
    jsr push
    lda rem+2
    ldx rem+3
    jmp push

