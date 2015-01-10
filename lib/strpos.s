;****************************************
;  strpos  -  ( addr c -- -1|idx )
;  return index into string in addr
;  for first occurrence of c or -1
;  if not found
;
strpos 
    jsr get_ab
    ldy #0
strpos_loop 
    lda (ta),y
    beq strpos_fail
    cmp tb
    beq strpos_found
    iny
    bne strpos_loop
strpos_fail 
    lda #$ff
    tax
    jmp push
strpos_found 
    tya
    ldx #0
    jmp push

