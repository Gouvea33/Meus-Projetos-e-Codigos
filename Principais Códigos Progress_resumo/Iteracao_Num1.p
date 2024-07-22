/* Iterando */

// Maneiras de iterar (loop) no Progress ABL.

// DO var = início PARA término [POR passo]

/* Esta iteração altera um valor de um ponto inicial até um final, opcionalmente 
por um valor especificado para cada etapa. A alteração padrão é 1.*/


DEFINE VARIABLE i AS INTEGER     NO-UNDO.

DO i = 10 TO 15:
    DISPLAY i WITH FRAME x1 6 DOWN .
    DOWN WITH FRAME x1.
END.
