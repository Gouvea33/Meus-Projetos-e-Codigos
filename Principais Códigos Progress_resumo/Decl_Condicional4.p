/* Ao contr�rio de uma cl�usula de estilo c, switch n�o h� necessidade de escapar 
da CASE instru��o - apenas uma ramifica��o ser� executada. Se v�rios WHENs 
corresponderem, apenas o primeiro ser� acionado. OTHERWISE deve ser 
o �ltimo e s� ser� acionado se nenhum dos ramos acima corresponder. */

DEFINE VARIABLE c AS CHARACTER   NO-UNDO.

c = "A".

CASE c:
    WHEN "A" THEN
        MESSAGE "A" VIEW-AS ALERT-BOX. //Only "A" will be messaged
    WHEN "A" OR WHEN "C" THEN
        MESSAGE "A or C" VIEW-AS ALERT-BOX.
END CASE.

