/* Para declarar uma string com distinção entre maiúsculas e minúsculas, basta 
adicionar o atributo CASE-SENSITIVE. */

DEFINE VARIABLE str1 AS CHARACTER   NO-UNDO CASE-SENSITIVE.
DEFINE VARIABLE str2 AS CHARACTER   NO-UNDO.

str1 = "abc".
str2 = "ABC".

IF str1 = str2 THEN 
    MESSAGE "The strings are identical" VIEW-AS ALERT-BOX.
ELSE 
    MESSAGE "There's a difference" VIEW-AS ALERT-BOX.
	
// (Basta que uma das strings tenha neste caso).

