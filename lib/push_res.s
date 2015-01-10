;****************************************
;  push_res
;
push_res 
    lda res
    ldx res+1
    jsr push
    lda res+2
    ldx res+3
    jmp push

