;****************************************
;  keyp  -  push true if a key pressed
;
keyp 
    jsr rdykey    ;  key ready?
    bcs keyp_yes
    lda #0
    tax
    jmp push    ;  push 0
keyp_yes 
    lda #1
    ldx #0
    jmp push    ;  push 1

