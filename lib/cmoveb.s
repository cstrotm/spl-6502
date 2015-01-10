;****************************************
;  cmoveb  -  move a range of bytes backwards		
;
;  ( a b n -- ) 
;  n bytes from a to b
;
cmoveb 
    jsr get_ta
    jsr get_op1
    ldx ta+1
    clc
    txa	
    adc op1+1
    sta op1+1
    clc
    txa
    adc op1+3
    sta op1+3
    inx 
    ldy ta
    beq cmoveb3
    dey
    beq cmoveb2
cmoveb1
    lda (op1),y
    sta (op1+2),y
    dey
    bne cmoveb1
cmoveb2
    lda (op1),y
    sta (op1+2),y
cmoveb3
    dey
    dec op1+1
    dec op1+3
    dex
    bne cmoveb1
    rts

