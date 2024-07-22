/* Declarações condicionais */

/* Case-instrução é muito mais rigorosa que a IF/ELSE-condicional. Ele só pode 
comparar uma única variável e apenas igualdade, não maior/menor que etc.*/

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

