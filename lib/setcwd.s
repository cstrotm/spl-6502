;****************************************
;  setcwd  -  ( addr -- ec 1 | 0 )
;
;  Issue a ProDOS "set_prefix" command.
;  Apple II specific.
;
setcwd 
    jsr pop                 ;  address to store prefix
    sta setcwd_tbl+1        ;  (must be 65+ bytes)
    stx setcwd_tbl+2        ;  (counted string)
    jsr $BF00
    .byte $C6
    .word setcwd_tbl
    bcs setcwd_err
    lda #0                  ;  no error
    tax
    jmp push
setcwd_err 
    ldx #0
    jsr push                ;  push error code
    ldx #0
    lda #1
    jmp push                ;  and 1
setcwd_tbl 
    .byte 1                 ;  # params
    .word $0000             ;  data buffer

