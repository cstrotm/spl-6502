;*****************************************
;  d32  -  unsigned division, res/op2 => res
;          with remainder in res+4..res+7
;
d32 
    lda #0
    sta res+4
    sta res+5        ;  clear remainder
    sta res+6
    sta res+7

    ldx #32
d32_loop 
    asl res            ;  shift quotient left
    rol res+1
    rol res+2
    rol res+3
    rol res+4        ;  shift remainder left
    rol res+5
    rol res+6
    rol res+7

    sec
    lda res+4        ;  subtract op2 from rem
    sbc op2
    sta tmp
    lda res+5
    sbc op2+1
    sta tmp+1
    lda res+6
    sbc op2+2
    sta tmp+2
    lda res+7
    sbc op2+3
    bcc d32_next        ;  divisor > partial dividend

    inc res            ;  bump quotient

    sta res+7        ;  store new partial dividend
    lda tmp+2
    sta res+6
    lda tmp+1
    sta res+5
    lda tmp
    sta res+4

d32_next 
    dex
    bne d32_loop
    rts

