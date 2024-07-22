/* 15 – Escreva um programa l-del.p que mostre cada registro de cliente, um de cada
vez, e que pergunte se deseja excluí-lo ou não. Se responder sim, o programa deve
excluir o cliente, mostrar uma mensagem indicando que cliente foi excluído.*/


DEF VARIABLE l-resp AS LOGICAL NO-UNDO.
FOR EACH customer:
   DISP customer WITH 1 COLUMN WIDTH 200.
   ASSIGN l-resp = NO.
   MESSAGE "Deseja excluir este Cliente?" UPDATE l-resp.
   IF l-resp = YES THEN DO:
   DELETE customer.
   MESSAGE "O Cliente foi excluído!".
       
   END.
END.
