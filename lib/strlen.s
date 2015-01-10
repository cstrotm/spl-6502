;****************************************
;  strlen  -  ( addr -- len )
;
strlen 
    jsr get_ta
    ldy #0
strlen_loop 
    lda (ta),y
    beq strlen_done
    iny
    bne strlen_loop
strlen_done     
    tya
    ldx #0
    jmp push

