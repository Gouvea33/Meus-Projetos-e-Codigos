/* Alguns usos do compiler identificador (Progress)*/

/* Supondo que ok-program.p seja um programa sem erros ou avisos */

COMPILE ok-program.p SAVE NO-ERROR.

DEFINE VARIABLE iError AS INTEGER     NO-UNDO.

MESSAGE  
    "Errors: "   COMPILER:ERROR SKIP
    "Warnings: " COMPILER:WARNING SKIP
    "Messages: " COMPILER:NUM-MESSAGES
    VIEW-AS ALERT-BOX INFORMATION.
