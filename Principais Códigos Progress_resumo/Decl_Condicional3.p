/* Assim como com a IF instru��o - cada ramifica��o pode ser uma �nica instru��o 
ou um bloco. Assim como acontece com a ELSE instru��o -, OTHERWISE n�o � 
obrigat�rio. */

DEFINE VARIABLE c AS CHARACTER   NO-UNDO.

CASE c:
    WHEN "A" THEN
        RUN procedureA.
    WHEN "B" OR WHEN "C" THEN
        RUN procedureB-C.
END CASE.

