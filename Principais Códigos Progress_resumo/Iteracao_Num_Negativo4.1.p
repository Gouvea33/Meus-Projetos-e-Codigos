/* A expressão será testada até que não seja mais atendida. Isso faz com que o 
contador fique mais alto (se estiver movendo para cima) ou mais baixo (se estiver 
movendo para baixo) quando o loop terminar. */

DEFINE VARIABLE i AS INTEGER     NO-UNDO.

DO i = 5 TO 1 BY -1:
    
END.

MESSAGE i. // Will message 0
