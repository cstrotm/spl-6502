;****************************************
;  strmatch - ( str pattern -- 0|1 )
;  does str match pattern?
;
strmatch 
    jsr get_ab        ;  get ta and tb
    jsr strmatch_check
    bcc strmatch_no
    lda #1
    ldx #0
    jmp push
strmatch_no 
    lda #0
    tax
    jmp push

;
;  Match string in ta to pattern
;  (based on routine by Paul Guertin, www.6502.org)
;
strmatch_check 
    ldx #0
    ldy #$ff
strmatch_next 
    sty tmp
    txa
    tay
    lda (tb),y
    ldy tmp
    cmp #'*
    beq strmatch_star
    iny
    cmp #'?
    bne strmatch_reg
    lda (ta),y
    beq strmatch_fail
strmatch_reg 
    cmp (ta),y
    bne strmatch_fail
    inx
    cmp #0
    bne strmatch_next
strmatch_found 
    rts
strmatch_star 
    inx
    sta tmp+1
    sty tmp
    txa
    tay
    lda (tb),y
    sta res
    lda tmp+1
    cmp res
    beq strmatch_star
strmatch_stloop 
    txa
    pha
    tya
    pha
    jsr strmatch_next
    pla
    tay
    pla
    tax
    bcs strmatch_found
    iny
    lda (ta),y
    bne strmatch_stloop
strmatch_fail 
    clc
    rts
