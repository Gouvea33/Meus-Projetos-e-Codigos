/* 17 � Escreva um programa l-orderdel.p que deixe voc� eliminar pedidos. Garanta
que o programa confirme a elimina��o e, se for confirmada, elimina tamb�m todas
as linhas do pedido.*/


DEFINE VARIABLE l-resp AS LOGICAL.
FOR EACH order WITH 1 COLUMN 1 DOWN:
  DISPLAY order.
  MESSAGE "Deseja eliminar o pedido?" UPDATE l-resp.
  IF l-resp THEN DO:
     FOR EACH orderline OF order:
     DELETE orderline.
     END.
     DELETE order.
     MESSAGE "Pedido Eliminado".
    
  END.
END.
