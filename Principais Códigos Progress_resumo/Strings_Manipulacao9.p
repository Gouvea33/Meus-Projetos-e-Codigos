/*Manipula��o de strings */

/* Existem algumas fun��es �teis integradas para trabalhar com strings. Todas as 
fun��es que trabalham com a posi��o dos caracteres come�am com o �ndice 1 como 
primeiro caractere, e n�o 0 como � comum em muitos idiomas.

STRING - converte qualquer valor em uma string

Este exemplo converte o n�mero inteiro 2000 na string "2000". */


DEFINE VARIABLE i AS INTEGER     NO-UNDO.
DEFINE VARIABLE c AS CHARACTER   NO-UNDO.

i = 2000.

c = STRING(i).

DISPLAY c.
