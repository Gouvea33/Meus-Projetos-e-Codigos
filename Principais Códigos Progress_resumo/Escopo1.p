/* Escopo */

/* O procedimento tem escopo próprio. O escopo externo irá "sangrar" no 
procedimento, mas não o contrário.*/

/* Declarar uma variável dentro de um procedimento que tenha o mesmo nome de um 
parâmetro externo criará apenas uma variável local. */


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
