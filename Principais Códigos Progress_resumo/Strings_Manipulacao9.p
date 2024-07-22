/*Manipulação de strings */

/* Existem algumas funções úteis integradas para trabalhar com strings. Todas as 
funções que trabalham com a posição dos caracteres começam com o índice 1 como 
primeiro caractere, e não 0 como é comum em muitos idiomas.

STRING - converte qualquer valor em uma string

Este exemplo converte o número inteiro 2000 na string "2000". */


DEFINE VARIABLE i AS INTEGER     NO-UNDO.
DEFINE VARIABLE c AS CHARACTER   NO-UNDO.

i = 2000.

c = STRING(i).

DISPLAY c.
