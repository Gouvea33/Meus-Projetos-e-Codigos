/* 26 - Escreva um programa l-disord.p que solicite o n�mero de um pedido e ent�o
mostre todas as linhas deste pedido. Quando as linhas do pedido aparecerem a
frame na qual o usu�rio informou o n�mero do pedido dever� ser apagada e vice-
versa.*/

rep-blk:
REPEAT:
   PROMPT-FOR order.ordernum WITH FRAME ord-frame.
   FIND order USING ordernum.
   HIDE FRAME ord-frame.
   for-ordl:
    FOR EACH orderline OF order WITH FRAME ordl-frame 1 COLUMN:
       DISPLAY orderline WITH FRAME f-dados.
    END.
   
END.
