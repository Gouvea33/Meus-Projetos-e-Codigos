/* Recursão */

/* A recursão - RUN o procedimento em si está dentro do procedimento. No entanto, 
se você recorrer muito, a pilha ficará sem espaço. Um procedimento de cálculo do 
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
