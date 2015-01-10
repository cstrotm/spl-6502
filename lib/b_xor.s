;****************************************
;  b_xor  -  bitwise xor
;
b_xor
    jsr get_tb
    jsr pop
    eor tb              ;  al ^ bl
    sta ta
    txa             
    eor tb+1            ;  ah ^ bh
    tax
    lda ta
    jmp push 

