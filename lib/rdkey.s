;**********************************************
;  rdkey  -  get character in A from kybd
;
;  Apple II specific, modify for other
;  systems.
;
rdkey 
    jsr $fd0c    ;  get key
    and #$7f    ;  clear high bit
    rts

