;*****************************************
;  primm  -  print embedded text string
;
primm 
    pla
    sta tmp
    pla
    sta tmp+1
primm_psinb 
    ldy #1
    lda (tmp),y
    inc tmp
    bne primm_psich0
    inc tmp+1
primm_psich0 
    ora #0
    beq primm_psix1
    jsr chout
    jmp primm_psinb
primm_psix1 
    inc tmp
    bne primm_psix2
    inc tmp+1
primm_psix2 
    jmp (tmp)

