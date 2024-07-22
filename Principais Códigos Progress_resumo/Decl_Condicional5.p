/*O valor de IF-part e o valor de ELSE-part devem ser do mesmo tipo de dado. 
Não é possível usar ELSE IF neste caso.*/

DEFINE VARIABLE dat                AS DATE        NO-UNDO.
DEFINE VARIABLE beforeTheFifth     AS LOGICAL   NO-UNDO.

dat = TODAY.

beforeTheFifth = (IF DAY(dat) < 5 THEN TRUE ELSE FALSE).
