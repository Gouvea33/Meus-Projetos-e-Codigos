/* ENTRY - fun��o - retorna uma entrada especificada em uma lista

Como de costume, a posi��o inicial � 1, n�o 0!

ENTRADA(entrada, lista [, delimitador]). */


DEFINE VARIABLE cList AS CHARACTER   NO-UNDO.

cList = "Goodbye,cruel,world!".

DISPLAY ENTRY(2, cList). //cruel
