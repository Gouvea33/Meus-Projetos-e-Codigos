/* Se você não definir todas as extensões, o restante receberá o último valor 
definido. */


DEFINE VARIABLE a AS CHARACTER EXTENT 10 INITIAL ["one","two","three"] NO-UNDO.
DISPLAY a.
