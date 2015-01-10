;****************************************
;  abs  -  absolute value
;
abs
    jsr get_tb    ;  TOS -> tb
    lda tb+1    ;  check sign
    bpl abs_done    ;  already pos
    jsr comp_tb    ;  2s complement
abs_done
    lda tb    
    ldx tb+1
    jmp push    ;  push on stack


