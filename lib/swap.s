;****************************************
;  swap  -  swap TOS and TOS-1
;
swap 
    jsr get_ta
    jsr get_tb
    lda ta        ;  push TOS
    ldx ta+1
    jsr push
    lda tb        ;  push TOS-1
    ldx tb+1
    jmp push

