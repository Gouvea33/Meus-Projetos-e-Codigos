/* Movendo a posição em uma consulta usando próximo, primeiro, anterior e último. 
*/

DEFINE QUERY q1 FOR Customer.

OPEN QUERY q1 FOR EACH Customer.

GET FIRST q1.

loop:
REPEAT:
    IF AVAILABLE Customer THEN DO:
        DISPLAY Customer.NAME CustNum WITH FRAME frClient TITLE "Client data".
        
        DISPLAY
            "(P)revious" SKIP 
            "(N)ext" SKIP
            "(F)irst" SKIP
            "(L)ast" SKIP
            "(Q)uit" SKIP
            WITH FRAME frInstr
                TITLE "Instructions".
    END.
    
    READKEY.

    IF LASTKEY = ASC("q") THEN LEAVE loop.
    ELSE IF LASTKEY = ASC("n") THEN
        GET NEXT q1.
    ELSE IF LASTKEY = ASC("p") THEN
        GET PREV q1.
    ELSE IF LASTKEY = ASC("l") THEN
        GET LAST q1.
    ELSE IF LASTKEY = ASC("f") THEN
        GET FIRST q1.

END.

MESSAGE "Bye" VIEW-AS ALERT-BOX.
