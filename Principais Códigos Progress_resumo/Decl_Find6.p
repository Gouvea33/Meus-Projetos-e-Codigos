// Um exemplo simples do sports2000:

FIND FIRST Customer NO-LOCK WHERE CustNum = 1 NO-ERROR.
IF AVAILABLE Customer THEN DO:
    DISPLAY Customer.NAME.
END.
ELSE DO:
    MESSAGE "No record available".
END.


/* PRIMEIRO - encontre o primeiro registro que corresponde à consulta

NO-LOCK - não bloqueie o registro - o que significa que apenas leremos e não 
alteraremos o registro.

ONDE - esta é a consulta

NO-ERROR - não falhe se não houver nenhum registro disponível.

(SE) DISPONÍVEL Cliente - verifique se encontramos um registro ou não */


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
     
