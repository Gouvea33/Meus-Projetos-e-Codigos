/* TRIM - remove espaços em branco iniciais e finais (ou outros caracteres).

Isso pode ser útil ao limpar dados.

TRIM(sequência de caracteres)

Remove todos os espaços iniciais e finais, tabulações,quebras de linha e retornos 
de carro.

TRIM(string, caractere).

Remove todos os "caracteres" iniciais e finais.

LEFT-TRIM e RIGHT-TRIM faz a mesma coisa, mas apenas à frente ou atrás. */


DEFINE VARIABLE c AS CHARACTER   NO-UNDO.

c = "__HELLO_WORLD_____".

DISPLAY TRIM(c, "_").
/*Displays HELLO_WORLD without all the leading and 
trailing underscores but leaves the one in the middle.
REPLACE would have removed that one as well */
