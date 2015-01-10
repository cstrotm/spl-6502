;****************************************
;  uncount  -  ( s -- s )
;
;  Convert a uncounted string at
;  s to a null-terminated string.
;
uncount 
    jsr get_ta          ;  address -> ta, ta+1
    ldy #0
    lda (ta),y          ;  count
    sta tb              ;  keep count+1 in tb
    inc tb
    ldy #1
uncount_loop 
    lda (ta),y
    dey
    sta (ta),y
    iny
    iny
    tya
    cmp tb              ;  compare to count
    bne uncount_loop
    lda #0
    dey
    sta (ta),y          ;  null
    lda ta
    ldx ta+1
    jmp push


