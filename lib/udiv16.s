;****************************************
;  Unsigned division and mod
;
udiv16 
    lda #0        ;  a/b
    sta op1
    sta op1+1
    ldx #16
udiv16_nxtbt 
    asl ta
    rol ta+1
    rol op1
    rol op1+1
    lda op1
    sec
    sbc tb
    tay
    lda op1+1
    sbc tb+1
    bcc udiv16_cntdn
    inc ta
    sta op1+1
    tya
    sta op1
udiv16_cntdn 
    dex
    bne udiv16_nxtbt
    rts

