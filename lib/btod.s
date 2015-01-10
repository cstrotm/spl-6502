;****************************************
;  btod  -  32-bit binary to BCD
;    input in op2..op2+3, output in res
;    ..res+6
;
btod 
    lda #0
    ldy #6
btod_loop1 
    sta res-1,y
    dey
    bne btod_loop1
    ldx #32
    sed
btod_loop2 
    asl op2
    rol op2+1
    rol op2+2
    rol op2+3
    lda res
    adc res
    sta res
    lda res+1
    adc res+1
    sta res+1
    lda res+2
    adc res+2
    sta res+2
    lda res+3
    adc res+3
    sta res+3
    lda res+4
    adc res+4
    sta res+4
    lda res+5
    adc res+5
    sta res+5
    dex
    bne btod_loop2
    cld
    rts

