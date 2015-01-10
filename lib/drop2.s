;****************************************
;  drop2  -  drop the top two stack items
;
drop2 
    jsr pop        ;  drop first
    jmp pop        ;  and the second

