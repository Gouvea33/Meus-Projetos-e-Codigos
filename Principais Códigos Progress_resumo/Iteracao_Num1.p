/* Iterando */

// Maneiras de iterar (loop) no Progress ABL.

// DO var = in�cio PARA t�rmino [POR passo]

/* Esta itera��o altera um valor de um ponto inicial at� um final, opcionalmente 
por um valor especificado para cada etapa. A altera��o padr�o � 1.*/


DEFINE VARIABLE i AS INTEGER     NO-UNDO.

DO i = 10 TO 15:
    DISPLAY i WITH FRAME x1 6 DOWN .
    DOWN WITH FRAME x1.
END.
