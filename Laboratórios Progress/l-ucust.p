/* 28 - Modifique o programa l-dcust.p, chamando-o de l-ucust.p, de modo que deixe
você alterar as informações dos clientes. Garanta que o cursor siga a seguinte
seqüência: endereço, nome, cidade, estado, país, código postal, balanço, limite de
crédito, desconto, termos e comentário.Use for each para alterar as
informaçoes dos clientes.*/

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
