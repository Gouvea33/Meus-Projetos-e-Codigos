/* ENTRY - método - atribuindo o valor de uma entrada especificada em uma lista

ENTRADA(entrada, lista [, delimitador]) = valor */



DEFINE VARIABLE cList AS CHARACTER   NO-UNDO.

cList = "Goodbye,cruel,world!".

ENTRY(1, cList) = "Hello".
ENTRY(2, cList) = "nice".

MESSAGE REPLACE(cList, ",", " ") VIEW-AS ALERT-BOX. //Hello nice world!
