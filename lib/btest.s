;****************************************
;  btest  -  ( n b -- 0|1 )
;  test if bit b of n is set (ie, return
;  the bit value)
;
btest 
    jsr get_ab
    lda tb
    and #$0f        ;  only low nibble
    beq btest_done
    tax
btest_loop 
    lsr ta+1
    ror ta
    dex
    bne btest_loop
btest_done 
    lda ta
    and #1
    jsr push

