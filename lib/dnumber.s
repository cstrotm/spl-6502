;****************************************
;  dnumber  -  convert an ascii string
;    in memory to a signed 32-bit number.
;    (addr -- d)
;
dnumber 
    lda #0
    sta res
    sta res+1
    sta res+2
    sta res+3
    sta sign
    jsr pop
    sta tb
    stx tb+1
    ldy #0
dnumber_loop 
    lda (tb),y
    beq dnumber_done1
    sty ta            ;  stash y
    jsr dctoi
    bcs dnumber_error
    ldy ta
    iny
    beq dnumber_error
    jmp dnumber_loop
dnumber_done1 
    lda sign
    beq dnumber_done2
    ;  negate
    lda #res
    sta ta
    lda #0
    sta ta+1
    jsr neg
dnumber_done2 
    lda res
    ldx res+1
    jsr push
    lda res+2
    ldx res+3
    jmp push
dnumber_error 
    lda #0            ;  error -> 0
    tax
    jsr push
    lda #0
    tax
    jmp push


;****************************************
;  dmult10  -  multiply res by 10
;
dmult10 
    lda res
    sta rem
    lda res+1
    sta rem+1
    lda res+2
    sta rem+2
    lda res+3
    sta rem+3
    ldy #3
dmult10_loop 
    asl res
    rol res+1
    rol res+2
    rol res+3
    dey
    bne dmult10_loop
    asl rem
    rol rem+1
    rol rem+2
    rol rem+3
    clc
    lda res
    adc rem
    sta res
    lda res+1
    adc rem+1
    sta res+1
    lda res+2
    adc rem+2
    sta res+2
    lda res+3
    adc rem+3
    sta res+3
    rts


;***************************************
;  dctoi  -  convert a character in A
;    to a digit and apply it to the output
;    value.  Handles signs and whitespace.
;    Returns carry set on error, else clear.
;
dctoi 
    cmp #'-
    bne dctoi_1
    lda #1
dctoi_0 
    sta sign
    clc
    rts
dctoi_1 
    cmp #'+
    bne dctoi_2
    lda #0
    jmp dctoi_0
dctoi_2 
    cmp #32
    bne dctoi_3
    clc
    rts
dctoi_3 
    cmp #'0
    bcc dctoi_err
    cmp #'9
    beq dctoi_ok
    bcs dctoi_err
dctoi_ok 
    sec
    sbc #48
    jsr dprocess_digit
    clc
    rts
dctoi_err 
    sec
    rts


;***************************************
;  dprocess_digit -  multiply partial
;    result by 10 and add new digit
;
dprocess_digit 
    sta op2
    jsr dmult10
    clc
    lda op2
    adc res
    sta res
    lda res+1
    adc #0
    sta res+1
    lda res+2
    adc #0
    sta res+2
    lda res+3
    adc #0
    sta res+3
    rts
    
