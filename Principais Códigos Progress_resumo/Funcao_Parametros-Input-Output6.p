/* Parâmetros de saída e entrada-saída */

/* Uma função só pode retornar um único valor, mas há uma maneira de contornar 
isso: os parâmetros não estão limitados aos parâmetros de entrada. Você pode 
declarar INPUT e parâmetros OUTPUT.INPUT-OUTPUT

Ao contrário dos INPUT parâmetros, você deve especificar OUTPUT ou INPUT-OUTPUT 
antes dos parâmetros.

Algumas convenções de codificação podem não gostar disso, mas isso pode ser 
feito. */


/* Function will add numbers and return a sum (AddSomSumbers(6) = 6 + 5 + 4 + 3 + 2 + 1 = 21 */
/* It will also have a 1% per iteration of failing                                           */
/* To handle that possibility we will have a status output parameter                         */

FUNCTION AddSomeNumbers INTEGER ( INPUT number AS INTEGER, OUTPUT procstatus AS CHARACTER):
    
    procStatus = "processing".

    DEFINE VARIABLE i AS INTEGER     NO-UNDO.
    DEFINE VARIABLE n AS INTEGER     NO-UNDO.
    /* Iterate number times */
    DO i = 1 TO number:
        /* Do something */

        n = n + i.
        
        /* Fake a 1% chance for an error that breaks the function */
        IF RANDOM(1,100) = 1 THEN
            RETURN 0.
    END.

    procStatus = "done".
    RETURN n.
END.


DEFINE VARIABLE ret   AS INTEGER     NO-UNDO.
DEFINE VARIABLE stat  AS CHARACTER   NO-UNDO.

/* Call the function */
ret = AddSomeNumbers(30, OUTPUT stat).

/* If "stat" is done we made it! */
IF stat = "done" THEN DO:
    MESSAGE "We did it! Sum:" ret VIEW-AS ALERT-BOX.
END.
ELSE DO:
    MESSAGE "An error occured" VIEW-AS ALERT-BOX ERROR.
END.
