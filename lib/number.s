;****************************************
;  number  -  convert an ascii string
;    in memory to a signed 16-bit number.
;    (addr -- n)
;
number 
    lda #0
    sta ta
    sta ta+1
    sta sign
    jsr pop
    sta tb
    stx tb+1
    ldy #0
number_loop 
    lda (tb),y
    beq number_done1
    sty op2            ;  stash y
    jsr ctoi
    bcs number_error
    ldy op2            ;  restore y
    iny
    beq number_error
    jmp number_loop
number_done1 
    lda sign
    beq number_done2
    jsr comp_ta        ;  negate ta
number_done2 
    lda ta
    ldx ta+1
    jmp push
number_error 
    lda #0            ;  error -> 0
    tax
    jmp push


;****************************************
;  mult10  -  multiply ta by 10
;
mult10 
    lda ta
    sta op1
    lda ta+1
    sta op1+1
    ldy #3
mult10_loop 
    asl ta
    rol ta+1
    dey
    bne mult10_loop
    asl op1
    rol op1+1
    clc
    lda ta
    adc op1
    sta ta
    lda ta+1
    adc op1+1
    sta ta+1
    rts


;***************************************
;  ctoi  -  convert a character in A
;    to a digit and apply it to the output
;    value.  Handles signs and whitespace.
;    Returns carry set on error, else clear.
;
ctoi 
    cmp #'-
    bne ctoi_1
    lda #1
ctoi_0 
    sta sign
    clc
    rts
ctoi_1 
    cmp #'+
    bne ctoi_2
    lda #0
    jmp ctoi_0
ctoi_2 
    cmp #32
    bne ctoi_3
    clc
    rts
ctoi_3 
    cmp #'0
    bcc ctoi_err
    cmp #'9
    beq ctoi_ok
    bcs ctoi_err
ctoi_ok 
    sec
    sbc #48
    jsr process_digit
    clc
    rts
ctoi_err 
    sec
    rts


;***************************************
;  process_digit -  multiply partial
;    result by 10 and add new digit
;
process_digit 
    sta tmp
    jsr mult10
    clc
    lda tmp
    adc ta
    sta ta
    lda ta+1
    adc #0
    sta ta+1
    rts
    
