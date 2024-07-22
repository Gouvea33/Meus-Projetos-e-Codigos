// A menos que especificado como CASE-SENSITIVE.

DEFINE VARIABLE c AS CHARACTER   NO-UNDO CASE-SENSITIVE.
DEFINE VARIABLE d AS CHARACTER   NO-UNDO.

c = "hello".
d = "hello".

DISPLAY CAPS(c) = LC(d). // no
