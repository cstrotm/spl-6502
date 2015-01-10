;****************************************
;  and  -  logical and
;
booland
    jsr get_ab
    ldx #0
    lda ta
    ora ta+1    ;  any bits on?
    beq and_0
    lda tb        ;  ta is true
    ora tb+1
    beq and_0    ;  1 & 0 -> 0
    lda #1        ;  1 & 1 -> 1
    jmp push
and_0
    lda #0
    jmp push    ;  answer is 0

