/* Gerador de números aleatórios */

/* RANDOM - gera um número aleatório

ALEATÓRIO(baixo, alto)

Gera um número inteiro pseudoaleatório entre baixo e alto */


// Example that generates 20 random numbers between 1 and 20 (1 and 20 included)


DEFINE VARIABLE i AS INTEGER NO-UNDO.

DO i = 1 TO 20.
    DISPLAY i RANDOM(1, 20).
    PAUSE.
END.


