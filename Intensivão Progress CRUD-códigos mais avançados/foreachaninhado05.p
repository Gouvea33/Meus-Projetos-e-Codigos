
DEFINE VARIABLE c-state AS CHARACTER FORMAT "x(2)" NO-UNDO.

UPDATE c-state.


FOR EACH customer FIELDS

  ( customer.state 
    Customer.NAME 
    Customer.City 
    Customer.Contact 
    Customer.Country 
    Customer.Address 
    Customer.CreditLimit) 

 NO-LOCK WHERE Customer.State = c-state USE-INDEX custom-state,
 
 EACH order NO-LOCK WHERE order.custnum = customer.custnum BREAK BY customer.state:
 
    
 DISPLAY order.orderdate 
         order.ordernum
         order.salesrep 
         order.po 
         customer.state 
         Customer.NAME
         customer.city
         customer.contact
         customer.country
         customer.address
         Customer.CreditLimit (TOTAL BY state) WITH WIDTH 320 DOWN.
END.

