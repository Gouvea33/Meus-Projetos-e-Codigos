/* Escopo */

/* O procedimento tem escopo pr�prio. O escopo externo ir� "sangrar" no 
procedimento, mas n�o o contr�rio.*/

/* Declarar uma vari�vel dentro de um procedimento que tenha o mesmo nome de um 
par�metro externo criar� apenas uma vari�vel local. */


DEFINE VARIABLE i AS INTEGER     NO-UNDO INIT 1.
DEFINE VARIABLE j AS INTEGER     NO-UNDO.

PROCEDURE p:
    
    DEFINE VARIABLE i AS INTEGER     NO-UNDO INIT 5.

    MESSAGE i VIEW-AS ALERT-BOX. // 5
    MESSAGE j VIEW-AS ALERT-BOX. // 0

    j = 2.

END PROCEDURE.

RUN p.

MESSAGE i VIEW-AS ALERT-BOX. // 1
MESSAGE j VIEW-AS ALERT-BOX. // 2
