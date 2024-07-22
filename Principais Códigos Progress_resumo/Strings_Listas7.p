/* Listas */

/*Existem v�rias fun��es e m�todos para trabalhar com listas separadas por v�rgulas
(ou outros caracteres) no Progress 4GL.

NUM-ENTRIES Retorna o n�mero de entradas em uma lista. Opcionalmente, voc� pode 
especificar o delimitador, a v�rgula � o padr�o

NUM-ENTRIES(string [, delimitador])

Usando v�rgula, o delimitador padr�o. */



DEFINE VARIABLE cList AS CHARACTER NO-UNDO.

cList = "Goodbye,cruel,world!".

DISPLAY NUM-ENTRIES(cList). //3
