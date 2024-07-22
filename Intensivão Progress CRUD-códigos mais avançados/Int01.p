/* NO-LOCK SHARE-LOCK EXCLUSIVE-LOCK */

FOR EACH Customer FIELDS

  ( customer.state 
    Customer.NAME 
    Customer.City 
    Customer.Contact 
    Customer.Country 
    Customer.Address 
    Customer.CreditLimit) 

NO-LOCK WHERE Customer.State = "ca" USE-INDEX custom-state BREAK BY customer.state:
 
 FOR EACH order NO-LOCK WHERE order.custnum = customer.custnum:
 
    DISPLAY Order.OrderDate Order.Ordernum Order.SalesRep Order.PO WITH 1 COL WIDTH 320 DOWN.
 
 END.
  
  DISPLAY customer.state 
          Customer.Name 
          Customer.City 
          Customer.Contact 
          Customer.Country 
          Customer.Address
          Customer.CreditLimit (TOTAL BY state) WITH WIDTH 320 DOWN.
END.
