/* Convertendo mai�sculas e min�sculas */

/* as strings normalmente n�o diferenciam mai�sculas de min�sculas, mas isso 
apenas se refere � compara��o de strings.Existem fun��es integradas para alterar o
caso.

CAPS (sequ�ncia)

Torna a string mai�scula

LC (sequ�ncia)

Torna a string min�scula */


DEFINE VARIABLE c AS CHARACTER   NO-UNDO.
DEFINE VARIABLE d AS CHARACTER   NO-UNDO.

c = "Hello".
d = "World".

DISPLAY CAPS(c) LC(d). // HELLO world

