// Usar um OR each WHEN pode comparar valores diferentes:

DEFINE VARIABLE c AS CHARACTER   NO-UNDO.

CASE c:
    WHEN "A" THEN DO:
        RUN procedureA.
    END.
    WHEN "B" OR WHEN "C" THEN DO:
        RUN procedureB-C.
    END.
    OTHERWISE DO:
        RUN procedureX.
    END.
END CASE.

