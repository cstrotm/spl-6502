;****************************************
;  bclr  -  ( n b -- n' )
;  clear bit b of n.
;
bclr
    jsr get_ab
    ldx #1
    stx tmp
    dex
    stx tmp+1
    lda tb
    and #$0f
    beq bclr_done
    tax
bclr_loop
    asl tmp
    rol tmp+1
    dex
    bne bclr_loop
bclr_done
    lda tmp
    eor #$ff
    sta tmp
    lda tmp+1
    eor #$ff
    sta tmp+1
    lda ta
    and tmp
    sta ta
    lda ta+1
    and tmp+1
    tax
    lda ta
    jmp push

