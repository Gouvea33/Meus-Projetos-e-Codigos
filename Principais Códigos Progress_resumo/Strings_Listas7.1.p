// Usando outro delimitador, ponto e v�rgula:


DEFINE VARIABLE cList AS CHARACTER   NO-UNDO.

cList = "Goodbye;cruel;world!".

DISPLAY NUM-ENTRIES(cList, ";"). //3
