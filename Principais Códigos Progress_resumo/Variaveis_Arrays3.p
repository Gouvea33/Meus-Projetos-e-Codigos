/* Voc� pode usar a INITIAL op��o na DEFINE VARIABLE instru��o para definir valores
iniciais. */


DEFINE VARIABLE a AS CHARACTER EXTENT 3 INITIAL ["one","two","three"] NO-UNDO.
/* Some statements (like DISPLAY) can handle a whole array: */
DISPLAY a.


