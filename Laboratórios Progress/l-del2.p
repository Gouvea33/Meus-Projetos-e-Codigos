/* 22 � Modifique o programa l-del.p, chamando-o de l-del2.p, de modo que verifique
se o cliente pode ser eliminado. Se existir algum pedido para o cliente mostrar uma
mensagem e n�o permitir a elimina��o do cliente. (Dica: Use a declara��o NEXT.)*/



DEF VARIABLE l-resp AS LOGICAL.
FOR EACH customer:
   DISP customer EXCEPT comments WITH 1 COLUMN WIDTH 200.
   MESSAGE "Deseja excluir este Cliente?" UPDATE l-resp.
   IF l-resp = YES THEN DO:
   FIND FIRST order OF customer NO-LOCK NO-ERROR.
    IF AVAIL order THEN DO:
      MESSAGE "O Cliente n�o pode ser eliminado, possui Pedidos!". 
      NEXT.
    END.
   DELETE customer.
   MESSAGE "O Cliente foi exclu�do!".
       
   END.
END.
