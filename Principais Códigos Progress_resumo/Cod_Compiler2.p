/* Compilando um programa com um aviso */

/* program-with-warning.p */

DEFINE VARIABLE c AS CHARACTER   NO-UNDO.
DEFINE VARIABLE i AS INTEGER     NO-UNDO.

c = "hello".
DISPLAY c.

//This RETURN makes the program exit here and the code below unreachable.
RETURN.

IF TRUE THEN DO:
    i = 10. 
END.
