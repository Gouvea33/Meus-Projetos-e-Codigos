/* Strings */

/* No Progress ABL existem dois tipos de strings, aquelas definidas como CHARACTER
e aquelas definidas como LONGCHAR.Um arquivo com mais de 32K de comprimento � um 
arquivo LONGCHAR. A maioria das strings n�o diferencia mai�sculas de min�sculas, a 
menos que seja especificada de outra forma.

Observa��es:

Lembre-se: todas as posi��es come�am na posi��o 1! */

/* BEGINS and MATCHES */

/* BEGINS - retorna TRUE se uma string come�ar com outra string.

string1 COME�A string2

Se string1 COME�A com (ou for igual a) string2, isso retornar� verdadeiro. Caso 
contr�rio, retornar� falso. Se a string dois estiver vazia (""), ela sempre 
retornar� verdadeiro.

BEGINS � muito �til em consultas onde voc� deseja pesquisar o in�cio de algo, por 
exemplo um nome. Mas � basicamente uma fun��o que trabalha com strings. */


DEFINE VARIABLE str AS CHARACTER   NO-UNDO.
DEFINE VARIABLE beg AS CHARACTER   NO-UNDO.

str = "HELLO".
beg = "HELLO".
DISPLAY str BEGINS beg. // yes

str = "HELLO".
beg = "H".
DISPLAY str BEGINS beg. // yes

str = "HELLO".
beg = "".
DISPLAY str BEGINS beg. // yes


str = "HELLO".
beg = "HELLO WORLD".
DISPLAY str BEGINS beg. // no

