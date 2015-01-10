;****************************************
;  count  -  ( c-addr1 -- caddr2 u )
;  return the character string specification for the counted string
;  stored in c-addr1. c-addr2 is the address of the first character
;  after c-addr1. u is the content of the character at caddr1, which
;  is the length in character of the string in c-addr2.
;
count 
    jsr get_ta          ;  get address of c-addr1
    jsr plus1		;  add TOS by 1
    ldy #0
    lda (ta),y		; get count byte
    jmp push0a		; push to stack


    
