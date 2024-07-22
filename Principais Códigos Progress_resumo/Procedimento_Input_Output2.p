/* Parâmetros de ENTRADA e SAÍDA */

/* Um procedimento pode ter parâmetros de diferentes tipos: entrada, saída, entrada
-saída (bidirecional) e também alguns tipos especiais como tabelas temporárias e 
conjuntos de dados). Na instrução run é opcional declarar INPUT(é considerado 
padrão) - todas as outras direções devem ser declaradas especificamente. 
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

/* Os parâmetros são totalmente opcionais. Você pode misturar e combinar da maneira
que quiser. A ordem dos parâmetros depende de você, mas é útil começar com a 
entrada e terminar com a saída - você precisa colocá-los na ordem correta na 
instrução run e misturar as direções pode ser irritante. */
