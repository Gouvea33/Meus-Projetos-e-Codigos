/* Cadeias de caracteres sensíveis a maiúsculas e minúsculas */

/* Todas as strings em Progress ABL diferenciam maiúsculas de minúsculas, a menos 
que especificado de outra forma.

Este exemplo exibirá uma caixa de mensagem informando que as strings são idênticas. 
*/


DEFINE VARIABLE str1 AS CHARACTER   NO-UNDO.
DEFINE VARIABLE str2 AS CHARACTER   NO-UNDO.

str1 = "abc".
str2 = "ABC".

IF str1 = str2 THEN 
    MESSAGE "The strings are identical" VIEW-AS ALERT-BOX.
