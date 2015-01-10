;****************************************
;  set_file_info  -  ( buf name -- ec 1 | 0 )
;
;  Issue a ProDOS "set_file_info" command.
;  Apple II specific.  buf is the buffer holding
;  the required data.
;
set_file_info 
    jsr pop                 ;  pathname (counted)
    sta set_info_tbl+1
    stx set_info_tbl+2
    jsr get_ta              ;  buffer address
    ldy #10
set_info_loop 
    lda (ta),y              ;  copy to table
    sta set_info_adr,y
    dey
    bpl set_info_loop
    jsr $BF00
    .byte $C3
    .word set_info_tbl
    bcs set_info_err
    lda #0                  ;  no error
    tax
    jmp push
set_info_err 
    ldx #0
    jsr push                ;  push error code
    ldx #0
    lda #1
    jmp push                ;  and 1
set_info_tbl 
    .byte 7                 ;  # params
    .word $0000             ;  pathname (in)
set_info_adr 
    .byte 0                 ;  access code
    .byte 0                 ;  file type code
    .word $0000             ;  aux type code
    .byte 0                 ;  unused
    .word $0000             ;  unused
    .word $0000             ;  modification date
    .word $0000             ;  modification time

