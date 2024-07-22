// Lembre-se de que strings normalmente não diferenciam maiúsculas de minúsculas.

DEFINE VARIABLE c AS CHARACTER   NO-UNDO.
DEFINE VARIABLE d AS CHARACTER   NO-UNDO.

c = "hello".
d = "hello".

DISPLAY CAPS(c) = LC(d). // yes
