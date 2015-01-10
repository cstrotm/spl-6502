;*****************************************
;  m32  -  op1 * op2 = res, unsigned
;          destroys op1, op2
;
m32 
    jsr zerores    ;  zero result
    lda #0        ;  zero high part of res
    sta res+4
    sta res+5
    sta res+6
    sta res+7

    ldy #32
m32_loop 
    lsr op1+3
    ror op1+2
    ror op1+1
    ror op1
    bcc m32_shift

    clc
    lda res+4        ;  add op2 to res high
    adc op2
    sta res+4
    lda res+5
    adc op2+1
    sta res+5
    lda res+6
    adc op2+2
    sta res+6
    lda res+7
    adc op2+3
    sta res+7
        
m32_shift 
    ror res+7
    ror res+6
    ror res+5        ;  res *= 2
    ror res+4
    ror res+3
    ror res+2
    ror res+1
    ror res
    dey
    bne m32_loop
m32_end 
    rts

