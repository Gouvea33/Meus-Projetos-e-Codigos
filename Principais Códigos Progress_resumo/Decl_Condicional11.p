/* O IF/ ELSE IF pode comparar várias condicionais,com ou sem conexões internas.*/

DEFINE VARIABLE i AS INTEGER     NO-UNDO.
DEFINE VARIABLE l AS LOGICAL     NO-UNDO.

IF i < 30 OR l = TRUE THEN DO:
    
END.
ELSE IF i > 30 AND l = FALSE OR TODAY = DATE("2017-08-20") THEN DO:

END.
ELSE DO:
    MESSAGE "I dont really know what happened here".
END.

