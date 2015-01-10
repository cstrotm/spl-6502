;****************************************
;  emit  -  output TOS as a character
;
emit 
    jsr pop        ;  get TOS
    jmp chout    ;  output character

