/* Gerador de n�meros aleat�rios */

/* RANDOM - gera um n�mero aleat�rio

ALEAT�RIO(baixo, alto)

Gera um n�mero inteiro pseudoaleat�rio entre baixo e alto */


// Example that generates 20 random numbers between 1 and 20 (1 and 20 included)


DEFINE VARIABLE i AS INTEGER NO-UNDO.

DO i = 1 TO 20.
    DISPLAY i RANDOM(1, 20).
    PAUSE.
END.


