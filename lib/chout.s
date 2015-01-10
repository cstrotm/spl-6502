;**********************************************
;  chout  -  output character in A
;
;  Atari 400/800/XL/XE/XEGS specific, modify 
;  for other systems.  
;
chout
    stx ex
    sty ey
    sta ea
    jsr chout2
    ldx ex
    ldy ey
    lda ea
    rts
    
chout2 
    tax         ; save char
    lda $E407   ; PUSH PRINT CHAR OS VECTOR
    pha         ; ON STACK
    lda $E406
    pha
    txa
    rts         ; jump to ROM routine

