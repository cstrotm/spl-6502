;****************************************
;  read_block  -  ( buf blk drv -- ec 1 | 0 )
;
;  Issue a ProDOS "read_block" command.
;  Apple II specific.
;
read_block 
    jsr pop                 ;  slot/drive
    sta read_block_tbl+1
    jsr pop                 ;  block number
    sta read_block_tbl+4
    stx read_block_tbl+5
    jsr pop                 ;  data buffer
    sta read_block_tbl+2
    stx read_block_tbl+3
    jsr $BF00
    .byte $80
    .word read_block_tbl
    bcs read_block_err
    lda #0                  ;  no error
    tax
    jmp push
read_block_err 
    ldx #0
    jsr push                ;  push error code
    ldx #0
    lda #1
    jmp push                ;  and 1
read_block_tbl 
    .byte 3                 ;  # params
    .byte 0                 ;  unit number
    .word $0000             ;  data buffer
    .word $0000             ;  block number

