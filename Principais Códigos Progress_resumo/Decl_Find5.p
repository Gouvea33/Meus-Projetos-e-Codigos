// REGISTROS BLOQUEADOS

/* Sempre que outros usuários possam adquirir o bloqueio de um registro, é melhor 
levar essa possibilidade em consideração. Colisões ocorrerão!

É melhor lidar com isso programaticamente usando a NO-WAIT instrução. Isso diz ao 
AVM para apenas passar o FIND se o registro estiver bloqueado por outra pessoa e 
permitir que você resolva esse problema.*/

FIND FIRST Customer EXCLUSIVE-LOCK NO-ERROR NO-WAIT.

/* Check for availability */
IF AVAILABLE Customer THEN DO:

    /* Check that no lock (from somebody else) is present */
    IF NOT LOCKED Customer THEN DO:
        /* Do your stuff here */
    END.
    ELSE DO:
        MESSAGE "I'm afraid somebody else has locked this record!" VIEW-AS ALERT-BOX ERROR.
    END.
END.


