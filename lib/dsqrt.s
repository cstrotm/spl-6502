;****************************************
;  dsqrt  -  32-bit square root
;
dsqrt 
    jsr get_op1
    jsr d_sqrt
    jmp push_res

