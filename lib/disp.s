;****************************************
;  disp  -  print counted string
;        ( adr -- )
;
disp 
    jsr get_ta    ;  get address
    ldy #0
    lda (ta),y    ; get length
    beq disp_end  ; len = 0
    tax
disp_loop
    iny
    lda (ta),y    ;  get character
    jsr chout     ;  send to screen
    dex           ;  decrement counter 
    bne disp_loop
disp_end
    rts

