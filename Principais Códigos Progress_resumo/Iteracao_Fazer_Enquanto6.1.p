/* Você pode usar qualquer número de verificações na WHILE parte.*/


DEFINE VARIABLE i AS INTEGER   NO-UNDO.
DO WHILE TODAY = DATE("18-07-2024") AND RANDOM(1,100) < 99:
    i = i + 1.
END.

MESSAGE i "iterations done" VIEW-AS ALERT-BOX.
