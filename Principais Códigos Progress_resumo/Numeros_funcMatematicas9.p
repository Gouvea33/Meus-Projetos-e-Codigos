/* Operadores */

/* Progress suporta +/- * como operadores. Eles não podem ser sobrecarregados. A 
divisão sempre retorna um decimal.Se algum dos números em um cálculo for decimal, 
um decimal será retornado. Caso contrário, um INTEGER ou INT64.

Não há operador += or ++. Para aumentar ou diminuir uma variável, você tem que 
atribuí-la a si mesma mais ou menos alguma coisa. Então, para adicionar 1 a uma 
variável, você faz: i = i + 1. */


DEFINE VARIABLE i AS INTEGER     NO-UNDO.
DEFINE VARIABLE j AS INTEGER     NO-UNDO.

i = 3.
j = 2.

DISPLAY i + j. // 3 + 2 = 5

DISPLAY i - j. // 3 - 2 = 1

DISPLAY i / j. // 3 / 2 = 1.5

DISPLAY INTEGER(i / j). //Integer(3/2) = 2.

DISPLAY i * j. //3 x 2 = 6


