// Lembre-se de que strings normalmente n�o diferenciam mai�sculas de min�sculas.

DEFINE VARIABLE c AS CHARACTER   NO-UNDO.
DEFINE VARIABLE d AS CHARACTER   NO-UNDO.

c = "hello".
d = "hello".

DISPLAY CAPS(c) = LC(d). // yes
