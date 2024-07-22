/* Decimais. Mas então você provavelmente deseja usar BY - caso contrário, INTEGER 
teria funcionado da mesma forma. */


DEFINE VARIABLE de AS DECIMAL  NO-UNDO.

DO de = 1.8 TO 2.6 BY 0.2:
    DISPLAY "Value" de.
END.
