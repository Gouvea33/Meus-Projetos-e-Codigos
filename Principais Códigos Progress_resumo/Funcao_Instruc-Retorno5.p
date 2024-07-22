/* V�rias instru��es de retorno (mas um �nico valor de retorno)*/

/* Uma fun��o pode ter v�rias instru��es de retorno e podem ser colocadas em 
diferentes partes da fun��o real.Todos eles precisam retornar o mesmo tipo de 
dados.*/

FUNCTION returning DATE ( dat AS DATE):
    IF dat < TODAY THEN DO:
        DISPLAY "<".
        RETURN dat - 200.
    END.
    ELSE DO:
        DISPLAY ">".
        RETURN TODAY. 
    END.
END.

MESSAGE returning(TODAY + RANDOM(-50, 50)) VIEW-AS ALERT-BOX.

/* Na verdade, uma fun��o n�o precisa retornar nada. Ent�o o valor de retorno ser�? (desconhecido). 
O compilador n�o detectar� isso, mas � bom evitar. */


/* This function will only return TRUE or ?, never FALSE, so it might lead to troubles */
FUNCTION inTheFuture LOGICAL ( dat AS DATE):
    IF dat > TODAY THEN DO:
        RETURN TRUE.
    END.
END.
MESSAGE inTheFuture(TODAY + RANDOM(-50, 50)) VIEW-AS ALERT-BOX.


