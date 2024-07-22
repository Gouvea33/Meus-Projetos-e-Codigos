// Fun��es

/* Uma fun��o definida pelo usu�rio no Progress ABL � um m�dulo de programa 
reutiliz�vel.
   Uma fun��o deve ser declarada no procedimento "main". Ela n�o pode ser declarada 
   dentro de um procedimento ou dentro de outra fun��o.Uma fun��o em Progress ABL 
   n�o � um "cidad�o de primeira classe", diferentemente de linguagens de 
   programa��o como Haskell ou Javascript. Voc� n�o pode passar uma fun��o como 
   um par�metro de entrada ou sa�da. No entanto, voc� pode invoc�-las dinamicamente 
   usando DYNAMIC-FUNCTIONou o CALL-object.Chamar fun��es em suas consultas pode 
   levar a um desempenho ruim, j� que a correspond�ncia de �ndices prejudicar�. 
   Tente atribuir o valor da fun��o a uma vari�vel e use essa vari�vel na WHERE
   cl�usula.*/
   
/* Chamada din�mica de uma fun��o */

/* Usando DYNAMIC-FUNCTION ou o CALL-object voc� pode chamar fun��es 
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

