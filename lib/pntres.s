;****************************************
;  pntres  -  print res..res+6 as BCD
;
pntres 
    ldy #0
    ldx #6
pntres_loop 
    lda res,x
    and #$f0
    lsr A
    lsr A
    lsr A
    lsr A
    bne pntres_cont1
    cpy #1
    beq pntres_cont1
    jmp pntres_next
pntres_cont1 
    ora #$30
    jsr chout
    ldy #1
pntres_next 
    lda res,x
    and #$0f
    bne pntres_cont3
    cpy #1
    beq pntres_cont3
    jmp pntres_cont2
pntres_cont3 
    ora #$30
    jsr chout
    ldy #1
pntres_cont2 
    dex
    beq pntres_loop
    bpl pntres_loop
    cpy #0
    bne pntres_done
    lda #$30
    jsr chout
pntres_done 
    rts


