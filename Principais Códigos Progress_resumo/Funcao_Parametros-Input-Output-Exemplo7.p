//  Exemplo de INPUT-OUTPUT par�metro:

/* Function doubles a string and returns the length of the new string */
FUNCTION doubleString RETURN INTEGER (INPUT-OUTPUT str AS CHARACTER).

    str = str + str.

    RETURN LENGTH(str).

END.

DEFINE VARIABLE str AS CHARACTER   NO-UNDO.
DEFINE VARIABLE len AS INTEGER     NO-UNDO.

str = "HELLO".

len = doubleString(INPUT-OUTPUT str).

MESSAGE 
    "New string: " str SKIP
    "Length: " len VIEW-AS ALERT-BOX.
    
    
