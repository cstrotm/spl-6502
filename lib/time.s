;****************************************
;  time  -  ( -- hh mm )
;
;  Issue a ProDOS "get_time" command and
;  return the hour and minute or zero.
;  Apple II specific.
;
time 
    jsr $BF00           ;  read the card
    .byte $82           ;  puts time in 0xBF92/0xBF93
    .word 0000
    lda $BF93           ;  hour
    ldx #0
    jsr push
    lda $BF92           ;  minute
    ldx #0
    jmp push
