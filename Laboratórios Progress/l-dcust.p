/* 27 – Escreva um programa l-dcust.p que mostre todos os clientes da tabela de
cliente. Somente um cliente deve aparecer por vez na tela. Utilize o comando
FORM.*/

DEFINE BUFFER bCustomer FOR customer.
DEFINE BUFFER bShipTo FOR ShipTo.

FORM
   bCustomer.custnum bCustomer.NAME COLON 20 bCustomer.salesrep AT 55
   bCustomer.address COLON 20
   bCustomer.address2 NO-LABEL COLON 20 SKIP
   bCustomer.city COLON 20 bCustomer.state COLON 39
   bCustomer.postalcode COLON 20 bCustomer.country COLON 39 SKIP (1)
   bCustomer.creditlimit COLON 20
   bCustomer.balance COLON 39 SKIP
   bCustomer.terms COLON 20 SKIP
   bCustomer.discount COLON 20
   bCustomer.comments FORMAT "x(60)"
   WITH FRAME cust-frame TITLE "customer" SIDE-LABELS SIZE 80 BY 20.

FOR EACH bCustomer:
    DISPLAY bCustomer EXCEPT bCustomer.contact bCustomer.phone WITH FRAME cust-frame.
    DOWN WITH FRAME cust-frame.
END.



