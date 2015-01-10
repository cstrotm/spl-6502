;****************************************
;  uprint  -  unsigned print TOS
;
uprint 
    jsr u_str    ;  convert to ASCII
    jmp prbuf    ;  and print

