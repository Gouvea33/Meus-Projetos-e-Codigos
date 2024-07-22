/* Par�metros de ENTRADA e SA�DA */

/* Um procedimento pode ter par�metros de diferentes tipos: entrada, sa�da, entrada
-sa�da (bidirecional) e tamb�m alguns tipos especiais como tabelas tempor�rias e 
conjuntos de dados). Na instru��o run � opcional declarar INPUT(� considerado 
padr�o) - todas as outras dire��es devem ser declaradas especificamente. 
Um procedimento que recebe dois inteiros como entrada e gera um decimal. */

PROCEDURE divideAbyB:
    
    DEFINE INPUT  PARAMETER piA       AS INTEGER     NO-UNDO.
    DEFINE INPUT  PARAMETER piB       AS INTEGER     NO-UNDO.
    DEFINE OUTPUT PARAMETER pdeResult AS DECIMAL     NO-UNDO.

    pdeResult = piA / piB.

END PROCEDURE.

DEFINE VARIABLE de AS DECIMAL     NO-UNDO.

RUN divideAbyB(10, 2, OUTPUT de).

DISPLAY de. //5.00

/* Os par�metros s�o totalmente opcionais. Voc� pode misturar e combinar da maneira
que quiser. A ordem dos par�metros depende de voc�, mas � �til come�ar com a 
entrada e terminar com a sa�da - voc� precisa coloc�-los na ordem correta na 
instru��o run e misturar as dire��es pode ser irritante. */
