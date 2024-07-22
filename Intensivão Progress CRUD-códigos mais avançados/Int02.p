DEFINE VARIABLE c-arq AS CHARACTER FORMAT "x(40)" NO-UNDO.

ASSIGN c-arq = "c:\banco\customer.csv".

OUTPUT TO VALUE(c-arq).

PUT "UF" AT 01
     "Nome cli" AT 04
     "Cidade" AT 18 SKIP.

FOR EACH Customer FIELDS

    (customer.state 
     Customer.NAME
     Customer.City 
     Customer.Contact 
     Customer.Country 
     Customer.Address 
     Customer.CreditLimit) 

  NO-LOCK WHERE Customer.State = "ca" USE-INDEX custom-state:
 
  EXPORT DELIMITER ";" customer.state SUBSTRING(Customer.NAME,1,10) Customer.City. 
 
    /* PUT  customer.state FORMAT "x(2)" AT 01
         SUBSTRING(Customer.NAME,1,10) FORMAT "x(10)" AT 04
          "-"            AT 17
          Customer.City  AT 18 SKIP.*/
          
END.

OUTPUT CLOSE.
