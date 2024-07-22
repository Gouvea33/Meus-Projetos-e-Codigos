/* SUBSTRING - retorna ou atribui uma parte de uma string

SUBSTRING(string, posi��o inicial, comprimento).
Retorna caracteres de "comprimento" de "string" come�ando na posi��o "posi��o 
inicial".

SUBSTRING(string, posi��o inicial).
Retorna o resto da "string", come�ando na posi��o "posi��o inicial" */


DEFINE VARIABLE cString AS CHARACTER   NO-UNDO.

cString = "ABCDEFGH".

DISPLAY SUBSTRING(cString, 4, 2). //Displays "DE" 
DISPLAY SUBSTRING(cString, 4). //Displays "DEFGH"
