/* Listas */

/*Existem várias funções e métodos para trabalhar com listas separadas por vírgulas
(ou outros caracteres) no Progress 4GL.

NUM-ENTRIES Retorna o número de entradas em uma lista. Opcionalmente, você pode 
especificar o delimitador, a vírgula é o padrão

NUM-ENTRIES(string [, delimitador])

Usando vírgula, o delimitador padrão. */



DEFINE VARIABLE cList AS CHARACTER NO-UNDO.

cList = "Goodbye,cruel,world!".

DISPLAY NUM-ENTRIES(cList). //3
