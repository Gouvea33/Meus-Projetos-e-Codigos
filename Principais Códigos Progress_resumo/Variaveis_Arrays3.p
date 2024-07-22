/* Você pode usar a INITIAL opção na DEFINE VARIABLE instrução para definir valores
iniciais. */


DEFINE VARIABLE a AS CHARACTER EXTENT 3 INITIAL ["one","two","three"] NO-UNDO.
/* Some statements (like DISPLAY) can handle a whole array: */
DISPLAY a.


