/* Recurs�o */

/* A recurs�o - RUN o procedimento em si est� dentro do procedimento. No entanto, 
se voc� recorrer muito, a pilha ficar� sem espa�o. Um procedimento de c�lculo do 
fatorial. */

PROCEDURE factorial:
    DEFINE INPUT  PARAMETER piNum AS INTEGER     NO-UNDO.
    DEFINE OUTPUT PARAMETER piFac AS INTEGER     NO-UNDO.

    DEFINE VARIABLE iFac AS INTEGER     NO-UNDO.

    IF piNum = 1 THEN DO:
        pifac = 1.
    END.
    ELSE DO:
        RUN factorial(piNum - 1, OUTPUT iFac).
        piFac = piNum * iFac.
    END.

END PROCEDURE.

DEFINE VARIABLE f AS INTEGER  NO-UNDO.

RUN factorial(7, OUTPUT f).

DISPLAY f.
