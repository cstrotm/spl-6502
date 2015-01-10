;****************************************
;  umult16  -  unsigned multiply
;
umult16 
    ;  Unsigned 16 x 16 -> 32 multiply
    lda #0
    sta res+2
    sta res+3
    ldx #16
umult_nxtbt 
    lsr tb+1
    ror tb
    bcc umult_align
    lda res+2
    clc
    adc ta
    sta res+2
    lda res+3
    adc ta+1
umult_align 
    ror A
    sta res+3
    ror res+2
    ror res+1
    ror res
    dex
    bne umult_nxtbt
    rts

