/* Ou um bloco, por exemplo, adicionando um DO-block:*/

DEFINE VARIABLE i AS INTEGER     NO-UNDO.

IF i = 0 THEN DO:
    RUN procedure1.
    RUN procedure2.
END.
ELSE DO: 
    RUN procedure3.
    RUN procedure4.
END.
