;****************************************
;  pdos_addr
;
;  Turn 0,1,2 in A into 8A,8E,92
;  in A.
;
pdos_addr 
    tax
    lda pdos_addr1,x
    rts
pdos_addr1 
    .byte $8A
    .byte $8E
    .byte $92
