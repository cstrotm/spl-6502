;****************************************
;  prhex2  -  output TOS as a 2 digit hex
;
;  Apple II specific.
;
prhex2 
    jsr pop        ;  pop number
    jmp cprhex    ;  print low as hex

