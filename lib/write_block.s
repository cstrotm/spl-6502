;****************************************
;  write_block  -  ( buf blk drv -- ec 1 | 0 )
;
;  Issue a ProDOS "write_block" command.
;  Apple II specific.
;
write_block 
    jsr pop                 ;  slot/drive
    sta write_block_tbl+1
    jsr pop                 ;  block number
    sta write_block_tbl+4
    stx write_block_tbl+5
    jsr pop                 ;  data buffer
    sta write_block_tbl+2
    stx write_block_tbl+3
    jsr $BF00
    .byte $81
    .word write_block_tbl
    bcs write_block_err
    lda #0                  ;  no error
    tax
    jmp push
write_block_err 
    ldx #0
    jsr push                ;  push error code
    ldx #0
    lda #1
    jmp push                ;  and 1
write_block_tbl 
    .byte 3                 ;  # params
    .byte 0                 ;  unit number
    .word $0000             ;  data buffer
    .word $0000             ;  block number

