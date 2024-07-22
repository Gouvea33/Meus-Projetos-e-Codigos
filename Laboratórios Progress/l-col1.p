/* 29 - Escreva um procedimento l-col1.p que leia todos os pedidos da tabela de
pedidos. Para cada um leia o seu cliente, mostre o número do pedido, data do
pedido, número do cliente, nome do cliente e representante. O nome do cliente e o
representante devem ser concatenados.*/

DEFINE VARIABLE custrep AS CHARACTER FORMAT "x(26)".
DISPLAY "Relatório de Pedidos" WITH CENTERED NO-BOX.
for-blk:
FOR EACH order:
    FIND customer OF order NO-ERROR.
    ASSIGN custrep = customer.NAME + " - " + order.salesrep.
    DISPLAY order.ordernum AT 10 COLUMN-LABEL "order!number"
            order.orderdate AT 21 COLUMN-LABEL "order!date"
            order.custnum AT 34 COLUMN-LABEL "customer!number"
            custrep AT 46 COLUMN-LABEL "customer name!sales rep".
END.

