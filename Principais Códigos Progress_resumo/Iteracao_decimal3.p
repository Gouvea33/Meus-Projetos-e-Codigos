/* Decimais. Mas ent�o voc� provavelmente deseja usar BY - caso contr�rio, INTEGER 
teria funcionado da mesma forma. */


DEFINE VARIABLE de AS DECIMAL  NO-UNDO.

DO de = 1.8 TO 2.6 BY 0.2:
    DISPLAY "Value" de.
END.
