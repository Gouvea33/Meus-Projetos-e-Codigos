/* Convertendo maiúsculas e minúsculas */

/* as strings normalmente não diferenciam maiúsculas de minúsculas, mas isso 
apenas se refere à comparação de strings.Existem funções integradas para alterar o
caso.

CAPS (sequência)

Torna a string maiúscula

LC (sequência)

Torna a string minúscula */


DEFINE VARIABLE c AS CHARACTER   NO-UNDO.
DEFINE VARIABLE d AS CHARACTER   NO-UNDO.

c = "Hello".
d = "World".

DISPLAY CAPS(c) LC(d). // HELLO world

