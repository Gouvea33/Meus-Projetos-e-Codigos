/* Compilando o programa */

COMPILE program-with-warning.p SAVE.

DEFINE VARIABLE iError AS INTEGER     NO-UNDO.

MESSAGE  
    "Errors: "   COMPILER:ERROR SKIP
    "Warnings: " COMPILER:WARNING SKIP
    "Messages: " COMPILER:NUM-MESSAGES
    VIEW-AS ALERT-BOX INFORMATION.

DO iError = 1 TO COMPILER:NUM-MESSAGES:
    DISPLAY 
        COMPILER:GET-FILE-NAME(iError)    LABEL "Filename" FORMAT "x(20)"
        COMPILER:GET-MESSAGE(iError)      LABEL "Message"  FORMAT "x(50)"
        COMPILER:GET-NUMBER(iError)       LABEL "Msg#"  
        COMPILER:GET-ERROR-COLUMN(iError) LABEL "Column"
        COMPILER:GET-ERROR-ROW(iError)    LABEL "Row"
            WITH FRAME fr1 SIDE-LABELS 1 COLUMNS.
END.

