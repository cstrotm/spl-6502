;****************************************
;  ddiv  -  double precision division
;            ( d0 d1 -- d0/d1 )
;
ddiv 
    jsr get_ops        ;  get op1, op2
    lda #0
    sta sign        ;  start positive
    lda op1+3
    bpl ddiv_next        ;  op1 positive
    lda #$ff        ;  make sign negative
    sta sign
    lda #op1        ;  complement op1
    sta ta
    lda #0            ;  op1 on zero page
    sta ta+1
    jsr neg
ddiv_next 
    lda op2+3
    bpl ddiv_go        ;  op2 positive
    lda sign        ;  invert sign
    eor #$ff
    sta sign
    lda #op2        ;  complement op2
    sta ta
    lda #0
    sta ta+1
    jsr neg
ddiv_go 
    lda op1            ;  put op1 => res
    sta res
    lda op1+1
    sta res+1
    lda op1+2
    sta res+2
    lda op1+3
    sta res+3

    jsr d32            ;  do the division

    lda sign
    beq ddiv_end
    lda #res
    sta ta
    lda #0
    sta ta+1
    jsr neg

ddiv_end 
    lda res+4        ;  get the remainder
    sta rem
    lda res+5
    sta rem+1
    lda res+6
    sta rem+2
    lda res+7
    sta rem+3
    rts

