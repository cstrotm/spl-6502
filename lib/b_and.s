;****************************************
;  b_and  -  bitwise and
;
b_and
    jsr get_tb
    jsr pop
    and tb              ;  al & bl
    sta ta
    txa        
    and tb+1            ;  ah & bh
    tax
    lda ta
    jmp push 

