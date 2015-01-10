;****************************************
;  strcmp  -  ( a b -- -1|0|+1 )
;  compare two strings
;
strcmp 
    jsr get_ab
    ldx #0
    ldy #0
strcmp_loop 
    lda (ta),y
    beq strcmp_done
    sta tmp
    lda (tb),y
    beq strcmp_done
    cmp tmp
    bcc strcmp_less
    beq strcmp_next
    ldx #1
    jmp strcmp_done
strcmp_less 
    ldx #2
    jmp strcmp_done
strcmp_next 
    iny
    bne strcmp_loop
strcmp_done 
    cpx #0
    beq strcmp_equal
    cpx #1
    beq strcmp_lthan
strcmp_gthan 
    lda #1            ;  >
    ldx #0
    jmp push
strcmp_lthan 
    lda #$ff
    tax
    jmp push          ;  <
strcmp_equal 
    ldy #0
strcmp_loop1 
    lda (ta),y
    beq strcmp_cont1
    iny
    beq strcmp_cont1
    jmp strcmp_loop1
strcmp_cont1 
    sty tmp
    ldy #0
strcmp_loop2 
    lda (tb),y
    beq strcmp_cont2
    iny
    beq strcmp_cont2
    jmp strcmp_loop2
strcmp_cont2 
    tya
    cmp tmp
    beq strcmp_equal1
    bcc strcmp_gthan
    jmp strcmp_lthan
strcmp_equal1 
    lda #0
    tax               ;  =
    jmp push
