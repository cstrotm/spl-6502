;*****************************************
;  prbuf  -  print the output character
;    buffer ignoring leading zeros.
;
prbuf 
    ldy #$0
    ldx outbuf    		; count
prbuf_loop
    iny
    lda outbuf,y
    jsr chout
    dex
    bne prbuf_loop
    rts

