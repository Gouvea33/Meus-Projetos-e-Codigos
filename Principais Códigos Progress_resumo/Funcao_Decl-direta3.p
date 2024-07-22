/* Fun��es de declara��o direta */

/* Uma fun��o pode ser declarada diretamente, isso � semelhante �s especifica��es 
em um arquivo de cabe�alho C.Dessa forma o compilador sabe que uma fun��o ser� 
disponibilizada posteriormente. Sem declara��es futuras, a fun��o DEVE ser 
declarada antes de ser chamada no c�digo. A declara��o direta consiste na FUNCTION 
especifica��o (nome da fun��o, tipo de retorno e tipos e ordem de dados de 
par�metro).Se a declara��o direta n�o corresponder � fun��o real, o compilador 
produzir� erros e o c�digo n�o ser� executado. */


FUNCTION dividableByThree LOGICAL (piNumber AS INTEGER) FORWARD.

DISPLAY dividableByThree(9).

FUNCTION dividableByThree LOGICAL (piNumber AS INTEGER):

    IF piNumber MODULO 3 = 0 THEN
        RETURN TRUE.
    ELSE 
        RETURN FALSE.
END.



