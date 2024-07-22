/* SUBSTRING - retorna ou atribui uma parte de uma string

SUBSTRING(string, posição inicial, comprimento).
Retorna caracteres de "comprimento" de "string" começando na posição "posição 
inicial".

SUBSTRING(string, posição inicial).
Retorna o resto da "string", começando na posição "posição inicial" */


DEFINE VARIABLE cString AS CHARACTER   NO-UNDO.

cString = "ABCDEFGH".

DISPLAY SUBSTRING(cString, 4, 2). //Displays "DE" 
DISPLAY SUBSTRING(cString, 4). //Displays "DEFGH"
