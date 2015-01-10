;****************************************
;  pad  -  push the output text buffer
;          address on the stack
;
pad 
    lda #<outbuf
    ldx #>outbuf
    jmp push

