/* 21 – Escreva um programa l-disp7.p que para cada representante mostre o nome do
representante, para cada cliente do representante mostre o número e o nome do
cliente, para cada pedido do cliente mostre a data do pedido e para cada item do
pedido mostre a quantidade e o nome do item.*/


FOR EACH salesrep:
   
   DISP salesrep.repname.
   FOR EACH customer OF salesrep:
       DISP customer.custnum customer.NAME.
       FOR EACH order OF customer,
       EACH orderline OF order,
       EACH ITEM OF orderline:
       DISP order.orderdate orderline.qty ITEM.itemname.
    END.
   
  END.
   
END.
