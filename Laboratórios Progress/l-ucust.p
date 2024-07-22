/* 28 - Modifique o programa l-dcust.p, chamando-o de l-ucust.p, de modo que deixe
voc� alterar as informa��es dos clientes. Garanta que o cursor siga a seguinte
seq��ncia: endere�o, nome, cidade, estado, pa�s, c�digo postal, balan�o, limite de
cr�dito, desconto, termos e coment�rio.Use for each para alterar as
informa�oes dos clientes.*/

for-cust:
FOR EACH customer:
  DEFINE FRAME cust-frame 
     custnum NAME COLON 20 salesrep AT 55
     address COLON 20
     address2 NO-LABEL COLON 20 SKIP
     city COLON 20 state COLON 39
     postalcode COLON 20 country COLON 39 SKIP (1)
     creditlimit COLON 20
     balance COLON 39 SKIP
     terms COLON 20 SKIP
     discount COLON 20
     comments FORMAT "x(60)"
       WITH TITLE "customer" SIDE-LABELS.
    DISPLAY custnum salesrep WITH FRAME cust-frame.
    UPDATE address NAME city state country postalcode balance
           creditlimit discount terms comments WITH FRAME cust-frame.

END.
