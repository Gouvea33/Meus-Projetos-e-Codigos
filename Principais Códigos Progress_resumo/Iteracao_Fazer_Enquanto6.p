/* FAZER ENQUANTO */

/* Um DO WHILEloop continuar� em loop, a menos que a WHILE parte - seja atendida. 
Isso torna mais f�cil executar para sempre e consumir todo o tempo de um n�cleo da 
CPU.

Express�o DO WHILE :

FIM.

express�o � qualquer combina��o de l�gica booleana, compara��es, vari�veis, campos,
etc. que � avaliada como um valor verdadeiro. */

/* This is a well defined DO WHILE loop that will run as long as i is lower than 
10*/


DEFINE VARIABLE i AS INTEGER     NO-UNDO.
DO WHILE i < 10:
    i = i + 1.
END.

DISPLAY i. // Will display 10
