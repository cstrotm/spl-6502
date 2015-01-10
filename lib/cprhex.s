;****************************************
;  cprhex  -  output A-Reg as a 2 digit hex
;
;

cprhex    
         pha
         lsr
         lsr
         lsr
         lsr
         jsr prhex01
         pla
         and #$0F
prhex01  ora #$30
         cmp #$3A
         bcc prhex02
         adc #$06
prhex02  jsr chout
	 rts
