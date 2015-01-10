;**********************************************
;  rdykey  -  return carry set if key ready
;
;  Apple II specific, modify for other
;  systems.
;
rdykey 
    clc        ;  clear carry
    lda $c000    ;  get kybd state
    bpl rdykey_nxt    ;  if < 128, not ready
    sec        ;  ready, set carry
rdykey_nxt 
    rts
