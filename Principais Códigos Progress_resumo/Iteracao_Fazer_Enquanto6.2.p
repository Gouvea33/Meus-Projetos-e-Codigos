/* Entretanto, o compilador n�o ir� ajud�-lo, ent�o verifique se a WHILE parte - 
eventualmente � atendida. */

/* Oops. Didnt increase i. This will run forever... */

DEFINE VARIABLE i AS INTEGER     NO-UNDO.
DO WHILE i < 10:
    i = 1.
END.
