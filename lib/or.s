;****************************************
;  or  -  logical or
;
or 
    jsr get_ab
    ldx #0
    lda ta
    ora ta+1    ;  any bits on?
    beq or_ta_0
    lda #1        ;  ta is true
    jmp push    ;  answer is true
or_ta_0 
    lda tb        ;  ta is false
    ora tb+1
    beq or_0    ;  0 | 0 -> 0
    lda #1        ;  tb is true
    jmp push    ;  answer is true
or_0 
    lda #0
    jmp push    ;  answer is false

