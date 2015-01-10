;****************************************
;  u_str  -  unsigned convert to
;    ASCII in outbuf
;    ( n -- )
;
u_str 
    ldy #0
    sty outbuf        ;  outbuf char count
    jsr get_ta    ;  TOS -> ta
u_str_1 
    jsr btoa    ;  convert to ASCII
    ldy outbuf      ;  terminate with
    lda #$9b     ; EOL
    sta outbuf+1,y
    rts

