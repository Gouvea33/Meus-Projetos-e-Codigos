/* TRIM - remove espa�os em branco iniciais e finais (ou outros caracteres).

Isso pode ser �til ao limpar dados.

TRIM(sequ�ncia de caracteres)

Remove todos os espa�os iniciais e finais, tabula��es,quebras de linha e retornos 
de carro.

TRIM(string, caractere).

Remove todos os "caracteres" iniciais e finais.

LEFT-TRIM e RIGHT-TRIM faz a mesma coisa, mas apenas � frente ou atr�s. */


DEFINE VARIABLE c AS CHARACTER   NO-UNDO.

c = "__HELLO_WORLD_____".

DISPLAY TRIM(c, "_").
/*Displays HELLO_WORLD without all the leading and 
trailing underscores but leaves the one in the middle.
REPLACE would have removed that one as well */
