;****************************************
;  xor  -  logical xor
;
xor 
    jsr get_ab
    ldx #0
    lda ta
    ora ta+1    ;  any bits on?
    beq xor_ta_0
    lda tb        ;  ta is true
    ora tb+1
    beq xor_1    ;  1 ^ 0 -> 1
    jmp xor_0    ;  1 ^ 1 -> 0
xor_ta_0 
    lda tb        ;  ta is false
    ora tb+1
    beq xor_0    ;  0 ^ 0 -> 0
xor_1 
    lda #1
    jmp push    ;  answer is 1
xor_0 
    lda #0
    jmp push    ;  answer is 0

