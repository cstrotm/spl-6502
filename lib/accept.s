;****************************************
;  accept -  get a line of text
;            in the input buffer
;            ( addr -- len )
;
;  Apple II specific.
;
accept
    jsr get_ta        ;  output address
    jsr $fd6f        ;  get a line, $200
    stx tb            ;  length
    ldy tb
    beq accept_done        ;  zero length, exit
accept_loop
    dey
    lda $200,y        ;  get character
    and #$7f        ;  clear high bit
    sta (ta),y        ;  store in output string
    cpy #0
    beq accept_cont
    jmp accept_loop
accept_cont
    lda #0
    ldy tb
    sta (ta),y        ;  ending '\0'
accept_done
    lda tb
    ldx #0
    jmp push        ;  push actual length

