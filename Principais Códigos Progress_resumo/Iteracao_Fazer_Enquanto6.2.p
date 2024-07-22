/* Entretanto, o compilador não irá ajudá-lo, então verifique se a WHILE parte - 
eventualmente é atendida. */

/* Oops. Didnt increase i. This will run forever... */

DEFINE VARIABLE i AS INTEGER     NO-UNDO.
DO WHILE i < 10:
    i = 1.
END.
