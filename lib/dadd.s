;****************************************
;  dadd  -  32-bit signed addition
;
dadd 
    jsr get_ops        ;  get op1, op2
    jsr d_add        ;  add
    jmp push_res


