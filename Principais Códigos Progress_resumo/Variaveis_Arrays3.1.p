/* Se voc� n�o definir todas as extens�es, o restante receber� o �ltimo valor 
definido. */


DEFINE VARIABLE a AS CHARACTER EXTENT 10 INITIAL ["one","two","three"] NO-UNDO.
DISPLAY a.
