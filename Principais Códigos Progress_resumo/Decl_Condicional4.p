/* Ao contrário de uma cláusula de estilo c, switch não há necessidade de escapar 
da CASE instrução - apenas uma ramificação será executada. Se vários WHENs 
corresponderem, apenas o primeiro será acionado. OTHERWISE deve ser 
o último e só será acionado se nenhum dos ramos acima corresponder. */

DEFINE VARIABLE c AS CHARACTER   NO-UNDO.

c = "A".

CASE c:
    WHEN "A" THEN
        MESSAGE "A" VIEW-AS ALERT-BOX. //Only "A" will be messaged
    WHEN "A" OR WHEN "C" THEN
        MESSAGE "A or C" VIEW-AS ALERT-BOX.
END CASE.

