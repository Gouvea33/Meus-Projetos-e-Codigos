/* Strings */

/* No Progress ABL existem dois tipos de strings, aquelas definidas como CHARACTER
e aquelas definidas como LONGCHAR.Um arquivo com mais de 32K de comprimento é um 
arquivo LONGCHAR. A maioria das strings não diferencia maiúsculas de minúsculas, a 
menos que seja especificada de outra forma.

Observações:

Lembre-se: todas as posições começam na posição 1! */

/* BEGINS and MATCHES */

/* BEGINS - retorna TRUE se uma string começar com outra string.

string1 COMEÇA string2

Se string1 COMEÇA com (ou for igual a) string2, isso retornará verdadeiro. Caso 
contrário, retornará falso. Se a string dois estiver vazia (""), ela sempre 
retornará verdadeiro.

BEGINS é muito útil em consultas onde você deseja pesquisar o início de algo, por 
exemplo um nome. Mas é basicamente uma função que trabalha com strings. */


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

