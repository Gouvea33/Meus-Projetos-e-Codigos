/* 32 - Crie um programa usando o comando for each que mostre quantidade, pedido e 
nome do cliente. */


FOR EACH order,
    EACH customer OF order:
    DISP order.ordernum order.custnum customer.NAME.
      
END.
