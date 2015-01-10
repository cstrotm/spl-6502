;****************************************
;  b_or  -  bitwise or
;
b_or
    jsr get_tb
    jsr pop
    ora tb              ;  al | bl
    sta ta
    txa        
    ora tb+1            ;  ah | bh
    tax
    lda ta
    jmp push 

