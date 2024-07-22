/* Várias IF instruções - podem ser aninhadas com a ELSE IF sintaxe.*/

DEFINE VARIABLE i AS INTEGER     NO-UNDO.

IF i = 0 THEN DO:
    RUN procedure1.
    RUN procedure2.
END.
ELSE IF i = 1 THEN DO:
    RUN procedure3.
    RUN procedure4.

END.
ELSE DO: 
    RUN procedure5.
    RUN procedure6.
END.
