;****************************************
;  bset  -  ( n b -- n' )
;  set bit b of n
;
bset 
    jsr get_ab
    ldx #1
    stx tmp
    dex
    stx tmp+1
    lda tb
    and #$0f
    beq bset_done
    tax
bset_loop 
    asl tmp
    rol tmp+1
    dex
    bne bset_loop
bset_done 
    lda ta
    ora tmp
    sta ta
    lda ta+1
    ora tmp+1
    tax
    lda ta
    jmp push

