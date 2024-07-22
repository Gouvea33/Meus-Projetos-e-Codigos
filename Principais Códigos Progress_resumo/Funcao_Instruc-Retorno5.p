/* Várias instruções de retorno (mas um único valor de retorno)*/

/* Uma função pode ter várias instruções de retorno e podem ser colocadas em 
diferentes partes da função real.Todos eles precisam retornar o mesmo tipo de 
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

/* Na verdade, uma função não precisa retornar nada. Então o valor de retorno será? (desconhecido). 
O compilador não detectará isso, mas é bom evitar. */


/* This function will only return TRUE or ?, never FALSE, so it might lead to troubles */
FUNCTION inTheFuture LOGICAL ( dat AS DATE):
    IF dat > TODAY THEN DO:
        RETURN TRUE.
    END.
END.
MESSAGE inTheFuture(TODAY + RANDOM(-50, 50)) VIEW-AS ALERT-BOX.


