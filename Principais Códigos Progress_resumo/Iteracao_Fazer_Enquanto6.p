/* FAZER ENQUANTO */

/* Um DO WHILEloop continuará em loop, a menos que a WHILE parte - seja atendida. 
Isso torna mais fácil executar para sempre e consumir todo o tempo de um núcleo da 
CPU.

Expressão DO WHILE :

FIM.

expressão é qualquer combinação de lógica booleana, comparações, variáveis, campos,
etc. que é avaliada como um valor verdadeiro. */

/* This is a well defined DO WHILE loop that will run as long as i is lower than 
10*/


DEFINE VARIABLE i AS INTEGER     NO-UNDO.
DO WHILE i < 10:
    i = i + 1.
END.

DISPLAY i. // Will display 10
