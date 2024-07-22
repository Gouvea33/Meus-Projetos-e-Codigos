/* Funções de declaração direta */

/* Uma função pode ser declarada diretamente, isso é semelhante às especificações 
em um arquivo de cabeçalho C.Dessa forma o compilador sabe que uma função será 
disponibilizada posteriormente. Sem declarações futuras, a função DEVE ser 
declarada antes de ser chamada no código. A declaração direta consiste na FUNCTION 
especificação (nome da função, tipo de retorno e tipos e ordem de dados de 
parâmetro).Se a declaração direta não corresponder à função real, o compilador 
produzirá erros e o código não será executado. */


FUNCTION dividableByThree LOGICAL (piNumber AS INTEGER) FORWARD.

DISPLAY dividableByThree(9).

FUNCTION dividableByThree LOGICAL (piNumber AS INTEGER):

    IF piNumber MODULO 3 = 0 THEN
        RETURN TRUE.
    ELSE 
        RETURN FALSE.
END.



