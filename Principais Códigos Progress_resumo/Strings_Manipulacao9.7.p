/* REPLACE - substitui uma string dentro de uma string.

REPLACE(string, string de origem, string para)

Substitui from-string por to-string em string. From-string e to-string n�o precisam
ter o mesmo comprimento, to-string tamb�m pode ser nada ("") para remover um 
caractere. */


DEFINE VARIABLE c AS CHARACTER   NO-UNDO.

c = "ELLO".

DISPLAY REPLACE(c, "E", "HE"). // Displays "HELLO"

c = "ABABABA".

DISPLAY REPLACE(c, "B", ""). // Remove all Bs
