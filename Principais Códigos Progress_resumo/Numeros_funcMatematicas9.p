/* Operadores */

/* Progress suporta +/- * como operadores. Eles n�o podem ser sobrecarregados. A 
divis�o sempre retorna um decimal.Se algum dos n�meros em um c�lculo for decimal, 
um decimal ser� retornado. Caso contr�rio, um INTEGER ou INT64.

N�o h� operador += or ++. Para aumentar ou diminuir uma vari�vel, voc� tem que 
atribu�-la a si mesma mais ou menos alguma coisa. Ent�o, para adicionar 1 a uma 
vari�vel, voc� faz: i = i + 1. */


DEFINE VARIABLE i AS INTEGER     NO-UNDO.
DEFINE VARIABLE j AS INTEGER     NO-UNDO.

i = 3.
j = 2.

DISPLAY i + j. // 3 + 2 = 5

DISPLAY i - j. // 3 - 2 = 1

DISPLAY i / j. // 3 / 2 = 1.5

DISPLAY INTEGER(i / j). //Integer(3/2) = 2.

DISPLAY i * j. //3 x 2 = 6


