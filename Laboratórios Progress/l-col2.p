/* 30 - Modifique o procedimento l-col1.p, chamando-o de l-col2.p de modo que 
solicite uma data de pedido. Então o programa deverá mostrar com cor de message 
todos os pedidos cuja data seja mais antiga do que a informada. O valor incial da 
data deverá ser a data atual (Função TODAY).*/


DEFINE VARIABLE custrep AS CHARACTER FORMAT "x(26)".
DEFINE VARIABLE ord-date AS DATE INIT TODAY LABEL "Data do Pedido".
UPDATE ord-date WITH SIDE-LABELS CENTERED ROW 2.
for-blk:
FOR EACH order:
    FIND customer OF order NO-ERROR.
    ASSIGN custrep = customer.NAME + " - " + order.salesrep.
    DISPLAY order.ordernum AT 10 COLUMN-LABEL "order!number"
            order.orderdate AT 21 COLUMN-LABEL "order!date"
            order.custnum AT 34 COLUMN-LABEL "customer!number"
            custrep AT 46 COLUMN-LABEL "customer name!sales rep"
            WITH CENTERED.
    IF order.orderdate < ord-date THEN
        COLOR DISPLAY messages order.ordernum order.orderdate
                               order.custnum custrep.
END.

