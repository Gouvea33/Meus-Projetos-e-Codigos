/* M�NIMO e M�XIMO - retorna o menor e o maior n�mero

M�NIMO(n�mero1, n�mero2, ... n�mero...)

M�XIMO(n�mero1, n�mero2, ... n�mero...) */


DEFINE VARIABLE i AS INTEGER     NO-UNDO.
DEFINE VARIABLE j AS INTEGER     NO-UNDO.
DEFINE VARIABLE k AS INTEGER     NO-UNDO.

i = 40.
j = 45.
k = 56.

DISPLAY MINIMUM(i, j, k) MAXIMUM(i, j, k). // Displays 40 and 56
