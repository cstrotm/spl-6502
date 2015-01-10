;****************************************
;  rename  -  ( src dest -- ec 1 | 0 )
;
;  Issue a ProDOS "rename" command.
;  Apple II specific.
;
rename 
    jsr pop                 ;  destination name (counted)
    sta rename_tbl+3
    stx rename_tbl+4
    jsr pop                 ;  source name (counted)
    sta rename_tbl+1
    stx rename_tbl+2
    jsr $BF00
    .byte $C2
    .word rename_tbl
    bcs rename_err
    lda #0                  ;  no error
    tax
    jmp push
rename_err 
    ldx #0
    jsr push                ;  push error code
    ldx #0
    lda #1
    jmp push                ;  and 1
rename_tbl 
    .byte 2                 ;  # params
    .word $0000             ;  current name
    .word $0000             ;  new name
