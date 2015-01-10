;****************************************
;  dmult  -  double precision multiply
;            ( d0 d1 -- d0*d1 )
;
dmult 
    jsr get_ops
    lda #0
    sta sign        ;  start positive
    lda op1+3
    bpl dmult_next        ;  op1 positive
    lda #$ff        ;  make sign negative
    sta sign
    lda #op1        ;  complement op1
    sta ta
    lda #0            ;  op1 is on zero page
    sta ta+1
    jsr neg
dmult_next 
    lda op2+3
    bpl dmult_go
    lda sign
    eor #$ff
    lda #op2
    sta ta
    lda #0
    sta ta+1
    jsr neg
dmult_go 
    jsr m32
    lda sign
    beq dmult_end
    lda #res
    sta ta
    lda #0
    sta ta+1
    jsr neg
dmult_end 
    jmp push_res

