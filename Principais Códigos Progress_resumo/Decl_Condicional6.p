/* V�rias compara��es podem ser feitas na IF instru��o */

DEFINE VARIABLE between5and10 AS LOGICAL     NO-UNDO.
DEFINE VARIABLE i             AS INTEGER     NO-UNDO INIT 7.

between5and10 = (IF i >= 5 AND i <= 10 THEN TRUE ELSE FALSE).

MESSAGE between5and10 VIEW-AS ALERT-BOX.

 
