/* Compilando um programa com erro */

DEFINE VARIABLE c AS CHARACTER   NO-UNDO.
DEFINE VARIABLE i AS INTEGER     NO-UNDO.

c = "hello".
DISPLAY c.
//Casting should be required below...
IF TRUE THEN DO:
    i = c.
END.

