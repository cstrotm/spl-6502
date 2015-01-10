;****************************************
;  plus1  -  ( a -- a+1 )
;
plus1 
    jsr get_ta    ;  get TOS
    inc ta        ;  add 1
    bne plus1_nxt
    inc ta+1
plus1_nxt 
    lda ta        ;  push back
    ldx ta+1
    jmp push

