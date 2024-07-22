/* O CALL-object n�o � t�o leve quanto a FUN��O DIN�MICA. Ele pode ser usado 
para chamar coisas diferentes: fun��es, procedimentos, programas externos, 
fun��es DLL do Windows. Ele tamb�m pode invocar m�todos em objetos e acessar 
getters/setters.*/


DEFINE VARIABLE functionHandle AS HANDLE      NO-UNDO.
DEFINE VARIABLE returnvalue    AS CHARACTER   NO-UNDO.

FUNCTION isPalindrome LOGICAL (INPUT txt AS CHARACTER, OUTPUT txtBackwards AS CHARACTER):
    DEFINE VARIABLE i AS INTEGER     NO-UNDO.

    DO i = LENGTH(txt) TO 1 BY -1:
        txtBackwards = txtBackwards + SUBSTRING(txt, i, 1).
    END.

    IF txt = txtBackwards THEN
        RETURN TRUE.
    ELSE 
        RETURN FALSE.

END FUNCTION.

CREATE CALL functionHandle.
functionHandle:CALL-NAME      = "isPalindrome".
/* Sets CALL-TYPE to the default */
functionHandle:CALL-TYPE  = FUNCTION-CALL-TYPE.
functionHandle:NUM-PARAMETERS = 2.
functionHandle:SET-PARAMETER(1, "CHARACTER", "INPUT", "HELLO WORLD").
functionHandle:SET-PARAMETER(2, "CHARACTER", "OUTPUT", returnvalue). 
functionHandle:INVOKE.

MESSAGE "Text backwards: " returnvalue "Is it a palindrome? " functionHandle:RETURN-VALUE VIEW-AS ALERT-BOX.

DELETE OBJECT functionHandle.


CREATE CALL functionHandle.
functionHandle:CALL-NAME      = "isPalindrome".
/* Sets CALL-TYPE to the default */
functionHandle:CALL-TYPE  = FUNCTION-CALL-TYPE.
functionHandle:NUM-PARAMETERS = 2.
functionHandle:SET-PARAMETER(1, "CHARACTER", "INPUT", "ANNA").
functionHandle:SET-PARAMETER(2, "CHARACTER", "OUTPUT", returnvalue). 
functionHandle:INVOKE.

MESSAGE "Text backwards: " returnvalue "Is it a palindrome? " functionHandle:RETURN-VALUE VIEW-AS ALERT-BOX.

DELETE OBJECT functionHandle.

