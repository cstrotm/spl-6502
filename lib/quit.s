;****************************************
;  quit  -  ( -- )
;
;  Jump through DOSVEC, leave program to DOS
;
;  Atari 400/800/XL/XE/XEGS specific.
;
quit 
    jmp ($A0)

