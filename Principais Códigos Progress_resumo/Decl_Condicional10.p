/* A ELSE parte - n�o � obrigat�ria.*/

DEFINE VARIABLE l AS LOGICAL   NO-UNDO.

l = TRUE.

IF l = TRUE THEN DO:
    MESSAGE "The l variable has the value TRUE" VIEW-AS ALERT-BOX.
END.

