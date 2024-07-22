// Passando para funções


DEFINE TEMP-TABLE ttNumbers NO-UNDO
    FIELD num1     AS INTEGER
    FIELD num2     AS INTEGER
    INDEX index1 num1 num2.

DEFINE VARIABLE iNum AS INTEGER     NO-UNDO.

/* Forward declare the function */
FUNCTION hasAPair RETURNS LOGICAL (INPUT TABLE ttNumbers) FORWARD.

DO iNum = 1 TO 100:
    CREATE ttNumbers.
    ASSIGN ttNumbers.num1 = RANDOM(1,100)
           ttNumbers.num2 = RANDOM(1,100).
END.

MESSAGE hasAPair(INPUT TABLE ttNumbers) VIEW-AS ALERT-BOX.


/* Function to check if two records has the same value in num1 and num2 */
FUNCTION hasAPair RETURNS LOGICAL (INPUT TABLE ttNumbers):

    FIND FIRST ttNumbers WHERE ttNumbers.num1 = ttNumbers.num2 NO-ERROR.
    IF AVAILABLE ttNumbers THEN
        RETURN TRUE.
    ELSE 
        RETURN FALSE.

END FUNCTION.
