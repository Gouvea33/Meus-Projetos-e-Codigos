/* Qualquer vari�vel criada dentro de um procedimento � acess�vel apenas a esse 
procedimento.Isso gerar� um erro do compilador: */

PROCEDURE p:
    
    DEFINE VARIABLE i AS INTEGER     NO-UNDO INIT 5.

END PROCEDURE.

RUN p.

MESSAGE i VIEW-AS ALERT-BOX. 
/* ** Missing FOR, FIND or CREATE for a table with i in current block. (232)
** Could not understand line 9. (196) */
