;****************************************
;  plus2  -  ( a -- a+2 )
;
plus2 
    jsr get_ta    ;  get TOS
    inc ta        ;  add 1
    bne plus2_0
    inc ta+1
plus2_0 
    inc ta        ;  add another 1
    bne plus2_1
    inc ta+1
plus2_1 
    lda ta        ;  push back
    ldx ta+1
    jmp push

