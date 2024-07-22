/*LENGTH - retorna o comprimento de uma string

COMPRIMENTO(string). //Retorna um inteiro com o comprimento da string. */


DEFINE VARIABLE cString AS CHARACTER   NO-UNDO.

cString = "HELLO".

MESSAGE "The string " cString " is " LENGTH(cString) " characters long" VIEW-AS ALERT-BOX.
