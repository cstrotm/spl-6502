;****************************************
;  print  -  signed print TOS
;
print 
    jsr n_str    ;  convert to ASCII
    jmp prbuf    ;  and print

