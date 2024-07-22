// Um exemplo simples do sports2000:

FIND FIRST Customer NO-LOCK WHERE CustNum = 1 NO-ERROR.
IF AVAILABLE Customer THEN DO:
    DISPLAY Customer.NAME.
END.
ELSE DO:
    MESSAGE "No record available".
END.


/* PRIMEIRO - encontre o primeiro registro que corresponde � consulta

NO-LOCK - n�o bloqueie o registro - o que significa que apenas leremos e n�o 
alteraremos o registro.

ONDE - esta � a consulta

NO-ERROR - n�o falhe se n�o houver nenhum registro dispon�vel.

(SE) DISPON�VEL Cliente - verifique se encontramos um registro ou n�o */


findLoop:
REPEAT :
    FIND NEXT Customer NO-LOCK WHERE NAME BEGINS "N" NO-ERROR.

    IF AVAILABLE customer THEN DO:
        DISPLAY Customer.NAME.
    END.
    ELSE DO:
        LEAVE findLoop.
    END.
END.
     
