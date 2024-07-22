/* 23 – Modifique o programa l-del2.p, chamando-o de l-del3.p, de modo que se o
cliente tiver algum pedido, pergunte se os pedidos também devem ser eliminados.
Se confirmar, eliminar o cliente e seus pedidos.*/

DEF VARIABLE l-resp AS LOGICAL.
DEF VARIABLE l-resp2 AS LOGICAL.
FOR EACH customer:
    DISP customer EXCEPT comments WITH 1 COLUMN .
    MESSAGE "Deseja excluir este Cliente?" UPDATE l-resp.
    IF l-resp = YES THEN DO:
       FIND FIRST order OF customer NO-LOCK NO-ERROR.
       IF AVAIL order THEN DO:
          MESSAGE "O cliente possui pedidos, deseja eliminá-los?".
          IF l-resp2 = NO THEN
          NEXT.
         FOR EACH order OF customer:
           DELETE order.
         END.
          
       MESSAGE "Os pedidos foram eliminados!".       
          
       END.
       DELETE customer.
       MESSAGE "O Cliente foi excluído!".
        
    END.
END.
