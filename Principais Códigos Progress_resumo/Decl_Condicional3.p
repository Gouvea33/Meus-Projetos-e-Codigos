/* Assim como com a IF instrução - cada ramificação pode ser uma única instrução 
ou um bloco. Assim como acontece com a ELSE instrução -, OTHERWISE não é 
obrigatório. */

DEFINE VARIABLE c AS CHARACTER   NO-UNDO.

CASE c:
    WHEN "A" THEN
        RUN procedureA.
    WHEN "B" OR WHEN "C" THEN
        RUN procedureB-C.
END CASE.

