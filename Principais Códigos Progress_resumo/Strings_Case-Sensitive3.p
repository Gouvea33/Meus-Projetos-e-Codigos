/* Cadeias de caracteres sens�veis a mai�sculas e min�sculas */

/* Todas as strings em Progress ABL diferenciam mai�sculas de min�sculas, a menos 
que especificado de outra forma.

Este exemplo exibir� uma caixa de mensagem informando que as strings s�o id�nticas. 
*/


DEFINE VARIABLE str1 AS CHARACTER   NO-UNDO.
DEFINE VARIABLE str2 AS CHARACTER   NO-UNDO.

str1 = "abc".
str2 = "ABC".

IF str1 = str2 THEN 
    MESSAGE "The strings are identical" VIEW-AS ALERT-BOX.
