/* Consulta de múltiplas tabelas */

/* Esta consulta irá unir três tabelas: Cliente, Pedido e Linha de Pedido.

O uso da OF instrução as in childtable OF parenttable pressupõe que os índices 
sejam construídos de uma maneira específica. Esse é o caso do banco de dados 
sports2000. */



DEFINE QUERY q1 FOR Customer, Order, Orderline.

OPEN QUERY q1 FOR EACH Customer WHERE Customer.state = 'TX'
    , EACH Order OF customer WHERE order.custnum < 1000
    , EACH orderline OF order.

GET FIRST q1.
DO WHILE NOT QUERY-OFF-END('q1'):
    DISPLAY Customer.Name Order.OrderNum OrderLine.LineNum 
        WITH FRAME frameA 20 DOWN.
    DOWN WITH FRAME frameA.
    GET NEXT q1.
END.

CLOSE QUERY q1.
