// Funções

/* Uma função definida pelo usuário no Progress ABL é um módulo de programa 
reutilizável.
   Uma função deve ser declarada no procedimento "main". Ela não pode ser declarada 
   dentro de um procedimento ou dentro de outra função.Uma função em Progress ABL 
   não é um "cidadão de primeira classe", diferentemente de linguagens de 
   programação como Haskell ou Javascript. Você não pode passar uma função como 
   um parâmetro de entrada ou saída. No entanto, você pode invocá-las dinamicamente 
   usando DYNAMIC-FUNCTIONou o CALL-object.Chamar funções em suas consultas pode 
   levar a um desempenho ruim, já que a correspondência de índices prejudicará. 
   Tente atribuir o valor da função a uma variável e use essa variável na WHERE
   cláusula.*/
   
/* Chamada dinâmica de uma função */

/* Usando DYNAMIC-FUNCTION ou o CALL-object você pode chamar funções 
dinamicamente.*/

DEFINE VARIABLE posY      AS INTEGER     NO-UNDO.
DEFINE VARIABLE posX      AS INTEGER     NO-UNDO.
DEFINE VARIABLE OKkeys    AS CHARACTER   NO-UNDO INIT "QLDRUS".
DEFINE VARIABLE Step      AS INTEGER     NO-UNDO INIT 1.
DEFINE VARIABLE moved     AS LOGICAL     NO-UNDO.
/* Set original position */
posY = 10.
posX = 10.

/* Move up (y coordinates - steps ) */
FUNCTION moveU LOGICAL (INPUT steps AS INTEGER):

    IF posY = 0 THEN
        RETURN FALSE.

    posY = posY - steps.

    IF posY < 0 THEN
        posY = 0.

    RETURN TRUE.
END FUNCTION.

/* Move down (y coordinates + steps ) */
FUNCTION moveD LOGICAL (INPUT steps AS INTEGER):

    IF posY = 20 THEN
        RETURN FALSE.

    posY = posY + steps.

    IF posY > 20 THEN
        posY = 20.
        
END FUNCTION.

/* Move left (x coordinates - steps ) */
FUNCTION moveL LOGICAL (INPUT steps AS INTEGER):

    IF posX = 0 THEN
        RETURN FALSE.

    posX = posX - steps.

    IF posX < 0 THEN
        posX = 0.

    RETURN TRUE.
END FUNCTION.

/* Move down (x coordinates + steps ) */
FUNCTION moveR LOGICAL (INPUT steps AS INTEGER):

    IF posX = 20 THEN
        RETURN FALSE.

    posX = posX + steps.

    IF posX > 20 THEN
        posX = 20.
        
END FUNCTION.


REPEAT:

    DISPLAY posX posY step WITH FRAME x1 1 DOWN.
    READKEY.

    IF INDEX(OKKeys, CHR(LASTKEY)) <> 0 THEN DO:
        IF CHR(LASTKEY) = "q"  THEN LEAVE.
        IF CAPS(CHR(LASTKEY)) = "s" THEN UPDATE step WITH FRAME x1.
        ELSE DO:
            moved = DYNAMIC-FUNCTION("move" + CAPS(CHR(LASTKEY)), INPUT step).
            IF moved = FALSE THEN
                MESSAGE "Out of bounds".
        END.
    END.
END.

