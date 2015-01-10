;****************************************
;  dsub  -  32-bit subtraction
;
dsub 
    jsr get_ops        ;  get op1, op2
    jsr d_sub        ;  subtract
    jmp push_res

