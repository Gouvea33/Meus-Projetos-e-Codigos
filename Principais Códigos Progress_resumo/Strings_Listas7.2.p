/* ENTRY - função - retorna uma entrada especificada em uma lista

Como de costume, a posição inicial é 1, não 0!

ENTRADA(entrada, lista [, delimitador]). */


DEFINE VARIABLE cList AS CHARACTER   NO-UNDO.

cList = "Goodbye,cruel,world!".

DISPLAY ENTRY(2, cList). //cruel
