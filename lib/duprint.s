;****************************************
;  duprint  -  unsigned 32-bit print
;
duprint 
    jsr get_op2
    jsr btod
    jmp pntres

