/* Concatenando strings */

// Usando o + operador você pode concatenar facilmente duas ou mais strings.


DEFINE VARIABLE cString AS CHARACTER   NO-UNDO.

cString = "HELLO".

cString = cString + " " + "GOODBYE".

DISPLAY cString FORMAT "X(20)".
