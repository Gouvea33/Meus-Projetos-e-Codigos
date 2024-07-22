/* Declara��es condicionais */

/* Case-instru��o � muito mais rigorosa que a IF/ELSE-condicional. Ele s� pode 
comparar uma �nica vari�vel e apenas igualdade, n�o maior/menor que etc.*/

DEFINE VARIABLE c AS CHARACTER NO-UNDO.

CASE c:
    WHEN "A" THEN DO:
        RUN procedureA.
    END.
    WHEN "B" THEN DO:
        RUN procedureB.
    END.
    OTHERWISE DO:
        RUN procedureX.
    END.
END CASE.

